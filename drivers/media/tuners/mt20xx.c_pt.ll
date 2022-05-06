; ModuleID = '/llk/IR/drivers/media/tuners/mt20xx.c_pt.bc'
source_filename = "../drivers/media/tuners/mt20xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_microtune_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22microtune_attach\22\09\09\09\09\09"
module asm "__kstrtabns_microtune_attach:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
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
%struct.microtune_priv = type { %struct.tuner_i2c_props, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_optimize_vco = internal constant [13 x i8] c"optimize_vco\00", align 1
@optimize_vco = internal global i32 1, align 4
@__param_optimize_vco = internal constant %struct.kernel_param { ptr @__param_str_optimize_vco, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @optimize_vco } }, section "__param", align 4
@__UNIQUE_ID_optimize_vcotype251 = internal constant [26 x i8] c"parmtype=optimize_vco:int\00", section ".modinfo", align 1
@__param_str_tv_antenna = internal constant [11 x i8] c"tv_antenna\00", align 1
@tv_antenna = internal global i32 1, align 4
@__param_tv_antenna = internal constant %struct.kernel_param { ptr @__param_str_tv_antenna, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @tv_antenna } }, section "__param", align 4
@__UNIQUE_ID_tv_antennatype252 = internal constant [24 x i8] c"parmtype=tv_antenna:int\00", section ".modinfo", align 1
@__param_str_radio_antenna = internal constant [14 x i8] c"radio_antenna\00", align 1
@radio_antenna = internal global i32 0, align 4
@__param_radio_antenna = internal constant %struct.kernel_param { ptr @__param_str_radio_antenna, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @radio_antenna } }, section "__param", align 4
@__UNIQUE_ID_radio_antennatype253 = internal constant [27 x i8] c"parmtype=radio_antenna:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"mt20xx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\017%s %d-%04x: MT20xx hexdump: %*ph\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"\016%s %d-%04x: microtune: companycode=%04x part=%02x rev=%02x\0A\00", align 1
@microtune_part = internal unnamed_addr constant [67 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr @.str.6, ptr null, ptr @.str.7, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.9], align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"\016%s %d-%04x: microtune %s found, not (yet?) supported, sorry :-/\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\016%s %d-%04x: microtune %s found, OK\0A\00", align 1
@__kstrtab_microtune_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_microtune_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_microtune_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @microtune_attach to i32), ptr @__kstrtab_microtune_attach, ptr @__kstrtabns_microtune_attach }, section "___ksymtab_gpl+microtune_attach", align 4
@__UNIQUE_ID_description254 = internal constant [35 x i8] c"description=Microtune tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [48 x i8] c"author=Ralph Metzler, Gerd Knorr, Gunther Mayer\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"MT2032\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"MT2030\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"MT2040\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"MT2050\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: mt2032: xogc = 0x%02x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"\017%s %d-%04x: mt2032: xok = 0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 2)\0A\00", align 1
@mt2032_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @microtune_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2032_set_params, ptr null, ptr @microtune_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"\017%s %d-%04x: pinnacle ntsc\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"\017%s %d-%04x: pinnacle pal\0A\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"\017%s %d-%04x: mt2032_set_if_freq rfin=%d if1=%d if2=%d from=%d to=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 3)\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"\017%s %d-%04x: mt2032: re-init PLLs by LINT\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: MT2032 Fatal Error: PLLs didn't lock.\0A\00", align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"\017%s %d-%04x: mt2032: rfin=%d lo1=%d lo1n=%d lo1a=%d sel=%d, lo1freq=%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [72 x i8] c"\017%s %d-%04x: mt2032: rfin=%d lo2=%d lo2n=%d lo2a=%d num=%d lo2freq=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [70 x i8] c"\016%s %d-%04x: mt2032: frequency parameters out of range: %d %d %d %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [52 x i8] c"\017%s %d-%04x: spurcheck f1=%d f2=%d  from=%d to=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"\017%s %d-%04x: spurtest n1=%d n2=%d ftest=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"\017%s %d-%04x: mt2032 spurcheck triggered: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: mt2032 Reg.E=0x%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"\017%s %d-%04x: mt2032: pll wait 1ms for lock (0x%2x)\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: mt2032 Reg.F=0x%02x\0A\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"\017%s %d-%04x: mt2032 optimize_vco: sel=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"\017%s %d-%04x: mt2050: sro is %x\0A\00", align 1
@mt2050_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @microtune_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt2050_set_params, ptr null, ptr @microtune_get_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.30 = private unnamed_addr constant [56 x i8] c"\017%s %d-%04x: mt2050_set_if_freq freq=%d if1=%d if2=%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"\017%s %d-%04x: lo1 lo2 = %d %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [68 x i8] c"\017%s %d-%04x: num1 num2 div1a div1b div2a div2b= %x %x %x %x %x %x\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"\017%s %d-%04x: bufs is: %*ph\0A\00", align 1
@.str.34 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 6)\0A\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"\017%s %d-%04x: mt2050: enabled antenna connector %d\0A\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license256, ptr @__UNIQUE_ID_optimize_vcotype251, ptr @__UNIQUE_ID_radio_antennatype253, ptr @__UNIQUE_ID_tv_antennatype252, ptr @__ksymtab_microtune_attach, ptr @__param_debug, ptr @__param_optimize_vco, ptr @__param_radio_antenna, ptr @__param_tv_antenna], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @microtune_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [21 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %11) #8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %159, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %13, ptr %16, align 4
  store i8 %2, ptr %13, align 8
  %17 = getelementptr inbounds %struct.tuner_i2c_props, ptr %13, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tuner_i2c_props, ptr %13, i32 0, i32 3
  store ptr @.str, ptr %18, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %11, i8 0, i32 21, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  %19 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 1, ptr %19, align 4, !annotation !8
  %20 = zext i8 %2 to i16
  store i16 %20, ptr %10, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %11, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %24 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 21, ptr %24, align 4, !annotation !8
  %25 = load i8, ptr %13, align 8
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %9, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %11, ptr %28, align 4
  %29 = load ptr, ptr %17, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %15
  %34 = load ptr, ptr %18, align 4
  %35 = load ptr, ptr %17, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i32 [ %39, %37 ], [ -1, %33 ]
  %42 = load i8, ptr %13, align 8
  %43 = zext i8 %42 to i32
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %34, i32 noundef %41, i32 noundef %43, i32 noundef 21, ptr noundef nonnull %11) #10
  br label %45

45:                                               ; preds = %40, %15
  %46 = getelementptr inbounds [21 x i8], ptr %11, i32 0, i32 17
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl nuw nsw i32 %48, 8
  %50 = getelementptr inbounds [21 x i8], ptr %11, i32 0, i32 18
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %49, %52
  %54 = load ptr, ptr %18, align 4
  %55 = load ptr, ptr %17, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 11
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %45
  %61 = phi i32 [ %59, %57 ], [ -1, %45 ]
  %62 = load i8, ptr %13, align 8
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds [21 x i8], ptr %11, i32 0, i32 19
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds [21 x i8], ptr %11, i32 0, i32 20
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i32
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %54, i32 noundef %61, i32 noundef %63, i32 noundef %53, i32 noundef %66, i32 noundef %69) #10
  %71 = load i8, ptr %64, align 1
  %72 = icmp ult i8 %71, 67
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = zext i8 %71 to i32
  %75 = getelementptr [67 x ptr], ptr @microtune_part, i32 0, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, ptr @.str.1, ptr %76
  br label %79

79:                                               ; preds = %73, %60
  %80 = phi ptr [ @.str.1, %60 ], [ %78, %73 ]
  switch i8 %71, label %133 [
    i8 4, label %81
    i8 66, label %82
  ]

81:                                               ; preds = %79
  call fastcc void @mt2032_init(ptr noundef %0)
  br label %145

82:                                               ; preds = %79
  %83 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i16 4102, ptr %8, align 2, !annotation !8
  %84 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %85 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %85, align 4, !annotation !8
  %86 = load i8, ptr %83, align 4
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %7, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %88, align 2
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %8, ptr %89, align 4
  %90 = getelementptr inbounds %struct.tuner_i2c_props, ptr %83, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  store i8 15, ptr %8, align 2
  store i8 15, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %93 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %93, align 4, !annotation !8
  %94 = load i8, ptr %83, align 4
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %6, align 4
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %96, align 2
  %97 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %8, ptr %97, align 4
  %98 = load ptr, ptr %90, align 4
  %99 = call i32 @i2c_transfer(ptr noundef %98, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  store i8 13, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %100 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 1, ptr %100, align 4, !annotation !8
  %101 = load i8, ptr %83, align 4
  %102 = zext i8 %101 to i16
  store i16 %102, ptr %5, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %103, align 2
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %8, ptr %104, align 4
  %105 = load ptr, ptr %90, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %107 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 1, ptr %107, align 4, !annotation !8
  %108 = load i8, ptr %83, align 4
  %109 = zext i8 %108 to i16
  store i16 %109, ptr %4, align 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %110, align 2
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %8, ptr %111, align 4
  %112 = load ptr, ptr %90, align 4
  %113 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  %114 = load i32, ptr @debug, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %82
  %117 = getelementptr inbounds %struct.tuner_i2c_props, ptr %83, i32 0, i32 3
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %90, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.i2c_adapter, ptr %119, i32 0, i32 11
  %123 = load i32, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = phi i32 [ %123, %121 ], [ -1, %116 ]
  %126 = load i8, ptr %83, align 4
  %127 = zext i8 %126 to i32
  %128 = load i8, ptr %8, align 2
  %129 = zext i8 %128 to i32
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %118, i32 noundef %125, i32 noundef %127, i32 noundef %129) #10
  br label %131

131:                                              ; preds = %124, %82
  %132 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %132, ptr noundef nonnull align 4 dereferenceable(220) @mt2050_tuner_ops, i32 220, i1 false) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  br label %145

133:                                              ; preds = %79
  %134 = load ptr, ptr %18, align 4
  %135 = load ptr, ptr %17, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 11
  %139 = load i32, ptr %138, align 4
  br label %140

140:                                              ; preds = %137, %133
  %141 = phi i32 [ %139, %137 ], [ -1, %133 ]
  %142 = load i8, ptr %13, align 8
  %143 = zext i8 %142 to i32
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %134, i32 noundef %141, i32 noundef %143, ptr noundef nonnull %80) #10
  br label %159

145:                                              ; preds = %131, %81
  %146 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  %147 = call i32 @strscpy(ptr noundef %146, ptr noundef nonnull %80, i32 noundef 128) #8
  %148 = load ptr, ptr %18, align 4
  %149 = load ptr, ptr %17, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.i2c_adapter, ptr %149, i32 0, i32 11
  %153 = load i32, ptr %152, align 4
  br label %154

154:                                              ; preds = %151, %145
  %155 = phi i32 [ %153, %151 ], [ -1, %145 ]
  %156 = load i8, ptr %13, align 8
  %157 = zext i8 %156 to i32
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %148, i32 noundef %155, i32 noundef %157, ptr noundef nonnull %80) #10
  br label %159

159:                                              ; preds = %154, %140, %3
  %160 = phi ptr [ null, %140 ], [ %0, %154 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %11) #8
  ret ptr %160
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mt2032_init(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [21 x i8], align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %8, i8 0, i32 21, i1 false), !annotation !8
  %11 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 1
  store i8 2, ptr %11, align 1
  %12 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 2
  store i8 -1, ptr %12, align 1
  %13 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 3
  store i8 15, ptr %13, align 1
  %14 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 4
  store i8 31, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %15 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 4, ptr %15, align 4, !annotation !8
  %16 = load i8, ptr %10, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %7, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %11, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tuner_i2c_props, ptr %10, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  %23 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 5
  store i8 6, ptr %23, align 1
  %24 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 6
  store i8 -28, ptr %24, align 1
  %25 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 7
  store i8 -113, ptr %25, align 1
  %26 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 8
  store i8 -61, ptr %26, align 1
  %27 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 9
  store i8 78, ptr %27, align 1
  %28 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 10
  store i8 -20, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %29 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %29, align 4, !annotation !8
  %30 = load i8, ptr %10, align 4
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %6, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %23, ptr %33, align 4
  %34 = load ptr, ptr %20, align 4
  %35 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  %36 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 12
  store i8 13, ptr %36, align 1
  %37 = getelementptr inbounds [21 x i8], ptr %8, i32 0, i32 13
  store i8 50, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %38 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %38, align 4, !annotation !8
  %39 = load i8, ptr %10, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %5, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %36, ptr %42, align 4
  %43 = load ptr, ptr %20, align 4
  %44 = call i32 @i2c_transfer(ptr noundef %43, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %45 = getelementptr inbounds %struct.tuner_i2c_props, ptr %10, i32 0, i32 3
  %46 = getelementptr inbounds i8, ptr %4, i32 4
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %49 = getelementptr inbounds i8, ptr %3, i32 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %52 = getelementptr inbounds i8, ptr %2, i32 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  br label %55

55:                                               ; preds = %136, %1
  %56 = phi i32 [ 7, %1 ], [ %110, %136 ]
  %57 = load i32, ptr @debug, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %45, align 4
  %61 = load ptr, ptr %20, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i32 [ %65, %63 ], [ -1, %59 ]
  %68 = load i8, ptr %10, align 4
  %69 = zext i8 %68 to i32
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %60, i32 noundef %67, i32 noundef %69, i32 noundef %56) #10
  br label %71

71:                                               ; preds = %66, %55
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %72(i32 noundef 214748000) #8
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %73(i32 noundef 214748000) #8
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #8
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748000) #8
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %76(i32 noundef 214748000) #8
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %77(i32 noundef 214748000) #8
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %78(i32 noundef 214748000) #8
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %79(i32 noundef 214748000) #8
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %80(i32 noundef 214748000) #8
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %81(i32 noundef 214748000) #8
  store i8 14, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  store i32 1, ptr %46, align 4, !annotation !8
  %82 = load i8, ptr %10, align 4
  %83 = zext i8 %82 to i16
  store i16 %83, ptr %4, align 4
  store i16 0, ptr %47, align 2
  store ptr %8, ptr %48, align 4
  %84 = load ptr, ptr %20, align 4
  %85 = call i32 @i2c_transfer(ptr noundef %84, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  store i32 1, ptr %49, align 4, !annotation !8
  %86 = load i8, ptr %10, align 4
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %3, align 4
  store i16 1, ptr %50, align 2
  store ptr %8, ptr %51, align 4
  %88 = load ptr, ptr %20, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %90 = load i8, ptr %8, align 1
  %91 = and i8 %90, 1
  %92 = zext i8 %91 to i32
  %93 = load i32, ptr @debug, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %71
  %96 = load ptr, ptr %45, align 4
  %97 = load ptr, ptr %20, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.i2c_adapter, ptr %97, i32 0, i32 11
  %101 = load i32, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %95
  %103 = phi i32 [ %101, %99 ], [ -1, %95 ]
  %104 = load i8, ptr %10, align 4
  %105 = zext i8 %104 to i32
  %106 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %96, i32 noundef %103, i32 noundef %105, i32 noundef %92) #10
  br label %107

107:                                              ; preds = %102, %71
  %108 = icmp eq i8 %91, 0
  br i1 %108, label %109, label %149

109:                                              ; preds = %107
  %110 = add nsw i32 %56, -1
  %111 = load i32, ptr @debug, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %45, align 4
  %115 = load ptr, ptr %20, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.i2c_adapter, ptr %115, i32 0, i32 11
  %119 = load i32, ptr %118, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i32 [ %119, %117 ], [ -1, %113 ]
  %122 = load i8, ptr %10, align 4
  %123 = zext i8 %122 to i32
  %124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %114, i32 noundef %121, i32 noundef %123, i32 noundef %110) #10
  br label %125

125:                                              ; preds = %120, %109
  %126 = icmp eq i32 %110, 3
  br i1 %126, label %149, label %127

127:                                              ; preds = %125
  store i8 7, ptr %8, align 1
  %128 = trunc i32 %56 to i8
  %129 = add i8 %128, -121
  store i8 %129, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  store i32 2, ptr %52, align 4, !annotation !8
  %130 = load i8, ptr %10, align 4
  %131 = zext i8 %130 to i16
  store i16 %131, ptr %2, align 4
  store i16 0, ptr %53, align 2
  store ptr %8, ptr %54, align 4
  %132 = load ptr, ptr %20, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %134 = add i32 %133, -1
  %135 = icmp ult i32 %134, 2
  br i1 %135, label %136, label %137

136:                                              ; preds = %144, %127
  br label %55

137:                                              ; preds = %127
  %138 = load ptr, ptr %45, align 4
  %139 = load ptr, ptr %20, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.i2c_adapter, ptr %139, i32 0, i32 11
  %143 = load i32, ptr %142, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = phi i32 [ %143, %141 ], [ -1, %137 ]
  %146 = load i8, ptr %10, align 4
  %147 = zext i8 %146 to i32
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %138, i32 noundef %145, i32 noundef %147, i32 noundef %133) #10
  br label %136

149:                                              ; preds = %125, %107
  %150 = getelementptr inbounds %struct.microtune_priv, ptr %10, i32 0, i32 1
  store i32 %56, ptr %150, align 4
  %151 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %151, ptr noundef nonnull align 4 dereferenceable(220) @mt2032_tuner_ops, i32 220, i1 false)
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @microtune_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2032_set_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %67 [
    i32 1, label %7
    i32 2, label %52
    i32 3, label %52
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 63744
  %11 = icmp eq i64 %10, 0
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %11, label %29, label %14

14:                                               ; preds = %7
  br i1 %13, label %44, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i32 [ %23, %21 ], [ -1, %15 ]
  %26 = load i8, ptr %4, align 4
  %27 = zext i8 %26 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %17, i32 noundef %25, i32 noundef %27) #10
  br label %44

29:                                               ; preds = %7
  br i1 %13, label %44, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i32 [ %38, %36 ], [ -1, %30 ]
  %41 = load i8, ptr %4, align 4
  %42 = zext i8 %41 to i32
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %32, i32 noundef %40, i32 noundef %42) #10
  br label %44

44:                                               ; preds = %39, %29, %24, %14
  %45 = phi i32 [ 41300000, %24 ], [ 41300000, %14 ], [ 33300000, %39 ], [ 33300000, %29 ]
  %46 = load i32, ptr %1, align 8
  %47 = mul i32 %46, 125
  %48 = lshr i32 %47, 1
  tail call fastcc void @mt2032_set_if_freq(ptr noundef %0, i32 noundef %48, i32 noundef 1085000000, i32 noundef %45, i32 noundef %45, i32 noundef %45) #8
  %49 = load i32, ptr %1, align 8
  %50 = mul i32 %49, 125
  %51 = lshr i32 %50, 1
  br label %64

52:                                               ; preds = %2, %2
  %53 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 63744
  %56 = icmp eq i64 %55, 0
  %57 = select i1 %56, i32 38900000, i32 45750000
  %58 = select i1 %56, i32 32900000, i32 40750000
  %59 = select i1 %56, i32 39900000, i32 46750000
  %60 = load i32, ptr %1, align 8
  %61 = mul i32 %60, 62500
  tail call fastcc void @mt2032_set_if_freq(ptr noundef %0, i32 noundef %61, i32 noundef 1090000000, i32 noundef %57, i32 noundef %58, i32 noundef %59) #8
  %62 = load i32, ptr %1, align 8
  %63 = mul i32 %62, 62500
  br label %64

64:                                               ; preds = %52, %44
  %65 = phi i32 [ %63, %52 ], [ %51, %44 ]
  %66 = getelementptr inbounds %struct.microtune_priv, ptr %4, i32 0, i32 2
  store i32 %65, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %2
  %68 = phi i32 [ -22, %2 ], [ 0, %64 ]
  ret i32 %68
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @microtune_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.microtune_priv, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mt2032_set_if_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [21 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %19) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(21) %19, i8 0, i32 21, i1 false), !annotation !8
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr @debug, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.tuner_i2c_props, ptr %21, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tuner_i2c_props, ptr %21, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = phi i32 [ %32, %30 ], [ -1, %24 ]
  %35 = load i8, ptr %21, align 4
  %36 = zext i8 %35 to i32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %26, i32 noundef %34, i32 noundef %36, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #10
  br label %38

38:                                               ; preds = %33, %6
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  %39 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 1, ptr %39, align 4, !annotation !8
  %40 = load i8, ptr %21, align 4
  %41 = zext i8 %40 to i16
  store i16 %41, ptr %18, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %42, align 2
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.tuner_i2c_props, ptr %21, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %18, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  %47 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 21, ptr %47, align 4, !annotation !8
  %48 = load i8, ptr %21, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %17, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 1, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %19, ptr %51, align 4
  %52 = load ptr, ptr %44, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %17, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  store i8 0, ptr %19, align 1
  %54 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 1
  %55 = getelementptr inbounds %struct.microtune_priv, ptr %21, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %20, align 4
  %58 = add i32 %2, %1
  %59 = udiv i32 %58, 1000
  %60 = shl nuw nsw i32 %59, 1
  %61 = add nuw nsw i32 %60, 5250
  %62 = udiv i32 %61, 10500
  %63 = udiv i32 %61, 84000
  %64 = mul nsw i32 %63, -8
  %65 = add nsw i32 %64, %62
  %66 = load i32, ptr @optimize_vco, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %38
  %69 = icmp ugt i32 %1, 800999999
  br i1 %69, label %86, label %70

70:                                               ; preds = %68
  %71 = icmp ugt i32 %1, 630999999
  br i1 %71, label %86, label %72

72:                                               ; preds = %70
  %73 = icmp ugt i32 %1, 440999999
  br i1 %73, label %86, label %74

74:                                               ; preds = %72
  %75 = icmp ugt i32 %1, 280999999
  %76 = select i1 %75, i32 3, i32 4
  br label %86

77:                                               ; preds = %38
  %78 = icmp ugt i32 %1, 700999999
  br i1 %78, label %86, label %79

79:                                               ; preds = %77
  %80 = icmp ugt i32 %1, 527999999
  br i1 %80, label %86, label %81

81:                                               ; preds = %79
  %82 = icmp ugt i32 %1, 359999999
  br i1 %82, label %86, label %83

83:                                               ; preds = %81
  %84 = icmp ugt i32 %1, 201999999
  %85 = select i1 %84, i32 3, i32 4
  br label %86

86:                                               ; preds = %83, %81, %79, %77, %74, %72, %70, %68
  %87 = phi i32 [ 0, %68 ], [ 1, %70 ], [ 2, %72 ], [ %76, %74 ], [ 0, %77 ], [ 1, %79 ], [ 2, %81 ], [ %85, %83 ]
  %88 = mul nuw i32 %62, 5250000
  %89 = load i32, ptr @debug, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.i2c_adapter, ptr %95, i32 0, i32 11
  %99 = load i32, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi i32 [ %99, %97 ], [ -1, %91 ]
  %102 = load i8, ptr %57, align 4
  %103 = zext i8 %102 to i32
  %104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %93, i32 noundef %101, i32 noundef %103, i32 noundef %1, i32 noundef %62, i32 noundef %63, i32 noundef %65, i32 noundef %87, i32 noundef %88) #10
  %105 = load i32, ptr @debug, align 4
  %106 = icmp eq i32 %105, 0
  br label %107

107:                                              ; preds = %100, %86
  %108 = phi i1 [ %106, %100 ], [ true, %86 ]
  %109 = add i32 %3, %1
  %110 = sub i32 %88, %109
  %111 = udiv i32 %110, 5250000
  %112 = udiv i32 %110, 42000000
  %113 = mul nsw i32 %112, -8
  %114 = add nsw i32 %113, %111
  %115 = udiv i32 %110, 1000
  %116 = urem i32 %115, 5250
  %117 = mul nuw nsw i32 %116, 3780
  %118 = udiv i32 %117, 5250
  %119 = mul nuw i32 %111, 5250000
  %120 = mul nuw nsw i32 %118, 5250
  %121 = udiv i32 %120, 3780
  %122 = mul nuw nsw i32 %121, 1000
  %123 = add i32 %122, %119
  br i1 %108, label %138, label %124

124:                                              ; preds = %107
  %125 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 11
  %132 = load i32, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %124
  %134 = phi i32 [ %132, %130 ], [ -1, %124 ]
  %135 = load i8, ptr %57, align 4
  %136 = zext i8 %135 to i32
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %126, i32 noundef %134, i32 noundef %136, i32 noundef %1, i32 noundef %111, i32 noundef %112, i32 noundef %114, i32 noundef %118, i32 noundef %123) #10
  br label %138

138:                                              ; preds = %133, %107
  %139 = icmp ugt i32 %65, 7
  %140 = add i32 %58, -2055375000
  %141 = icmp ult i32 %140, -1344000000
  %142 = or i1 %141, %139
  %143 = icmp ugt i32 %114, 7
  %144 = select i1 %142, i1 true, i1 %143
  %145 = icmp ult i32 %110, 714000000
  %146 = select i1 %144, i1 true, i1 %145
  %147 = icmp ugt i32 %110, 1301999999
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.tuner_i2c_props, ptr %57, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.i2c_adapter, ptr %153, i32 0, i32 11
  %157 = load i32, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %149
  %159 = phi i32 [ %157, %155 ], [ -1, %149 ]
  %160 = load i8, ptr %57, align 4
  %161 = zext i8 %160 to i32
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %151, i32 noundef %159, i32 noundef %161, i32 noundef %65, i32 noundef %63, i32 noundef %114, i32 noundef %112) #10
  br label %468

163:                                              ; preds = %138
  %164 = load ptr, ptr %20, align 4
  %165 = sdiv i32 %88, 1000
  %166 = sdiv i32 %4, 1000
  %167 = sdiv i32 %5, 1000
  %168 = load i32, ptr @debug, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %184, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.tuner_i2c_props, ptr %164, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.tuner_i2c_props, ptr %164, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.i2c_adapter, ptr %174, i32 0, i32 11
  %178 = load i32, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %170
  %180 = phi i32 [ %178, %176 ], [ -1, %170 ]
  %181 = load i8, ptr %164, align 4
  %182 = zext i8 %181 to i32
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %172, i32 noundef %180, i32 noundef %182, i32 noundef %165, i32 noundef %115, i32 noundef %166, i32 noundef %167) #10
  br label %184

184:                                              ; preds = %179, %163
  %185 = sub nsw i32 %165, %115
  %186 = getelementptr inbounds %struct.tuner_i2c_props, ptr %164, i32 0, i32 3
  %187 = getelementptr inbounds %struct.tuner_i2c_props, ptr %164, i32 0, i32 1
  %188 = sub nsw i32 %115, %167
  br label %189

189:                                              ; preds = %235, %184
  %190 = phi i32 [ 1, %184 ], [ %236, %235 ]
  %191 = sub nsw i32 0, %190
  %192 = mul nsw i32 %190, %185
  br label %193

193:                                              ; preds = %231, %189
  %194 = phi i32 [ %191, %189 ], [ %196, %231 ]
  %195 = phi i32 [ %192, %189 ], [ %197, %231 ]
  %196 = add i32 %194, -1
  %197 = sub i32 %195, %115
  %198 = load i32, ptr @debug, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %212, label %200

200:                                              ; preds = %193
  %201 = load ptr, ptr %186, align 4
  %202 = load ptr, ptr %187, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.i2c_adapter, ptr %202, i32 0, i32 11
  %206 = load i32, ptr %205, align 4
  br label %207

207:                                              ; preds = %204, %200
  %208 = phi i32 [ %206, %204 ], [ -1, %200 ]
  %209 = load i8, ptr %164, align 4
  %210 = zext i8 %209 to i32
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %201, i32 noundef %208, i32 noundef %210, i32 noundef %190, i32 noundef %196, i32 noundef %197) #10
  br label %212

212:                                              ; preds = %207, %193
  %213 = icmp sgt i32 %197, %166
  br i1 %213, label %214, label %231

214:                                              ; preds = %212
  %215 = icmp slt i32 %197, %167
  %216 = load i32, ptr @debug, align 4
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %231

219:                                              ; preds = %214
  %220 = load ptr, ptr %186, align 4
  %221 = load ptr, ptr %187, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.i2c_adapter, ptr %221, i32 0, i32 11
  %225 = load i32, ptr %224, align 4
  br label %226

226:                                              ; preds = %223, %219
  %227 = phi i32 [ %225, %223 ], [ -1, %219 ]
  %228 = load i8, ptr %164, align 4
  %229 = zext i8 %228 to i32
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %220, i32 noundef %227, i32 noundef %229, i32 noundef %190) #10
  br label %231

231:                                              ; preds = %226, %214, %212
  %232 = icmp sgt i32 %197, %188
  %233 = icmp sgt i32 %196, -5
  %234 = select i1 %232, i1 true, i1 %233
  br i1 %234, label %193, label %235

235:                                              ; preds = %231
  %236 = add nuw nsw i32 %190, 1
  %237 = icmp eq i32 %236, 5
  br i1 %237, label %238, label %189

238:                                              ; preds = %235
  %239 = trunc i32 %63 to i8
  %240 = add i8 %239, -1
  store i8 %240, ptr %54, align 1
  %241 = shl nuw nsw i32 %87, 4
  %242 = or i32 %241, %65
  %243 = trunc i32 %242 to i8
  %244 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 2
  store i8 %243, ptr %244, align 1
  %245 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 3
  store i8 -122, ptr %245, align 1
  %246 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 4
  store i8 15, ptr %246, align 1
  %247 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 5
  store i8 31, ptr %247, align 1
  %248 = add nuw nsw i32 %112, 255
  %249 = shl nsw i32 %114, 5
  %250 = or i32 %249, %248
  %251 = trunc i32 %250 to i8
  %252 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 6
  store i8 %251, ptr %252, align 1
  %253 = icmp ugt i32 %1, 400000000
  %254 = select i1 %253, i8 -28, i8 -12
  %255 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 7
  store i8 %254, ptr %255, align 1
  %256 = trunc i32 %56 to i8
  %257 = add i8 %256, 8
  %258 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 8
  store i8 %257, ptr %258, align 1
  %259 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 9
  store i8 -61, ptr %259, align 1
  %260 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 10
  store i8 78, ptr %260, align 1
  %261 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 11
  store i8 -20, ptr %261, align 1
  %262 = trunc i32 %118 to i8
  %263 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 12
  store i8 %262, ptr %263, align 1
  %264 = lshr i32 %118, 8
  %265 = trunc i32 %264 to i8
  %266 = or i8 %265, -128
  %267 = getelementptr inbounds [21 x i8], ptr %19, i32 0, i32 13
  store i8 %266, ptr %267, align 1
  store i8 0, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  %268 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 4, ptr %268, align 4, !annotation !8
  %269 = load i8, ptr %21, align 4
  %270 = zext i8 %269 to i16
  store i16 %270, ptr %16, align 4
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %271, align 2
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %19, ptr %272, align 4
  %273 = load ptr, ptr %44, align 4
  %274 = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %16, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  store i8 5, ptr %247, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %275 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 4, ptr %275, align 4, !annotation !8
  %276 = load i8, ptr %21, align 4
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %15, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %247, ptr %279, align 4
  %280 = load ptr, ptr %44, align 4
  %281 = call i32 @i2c_transfer(ptr noundef %280, ptr noundef nonnull %15, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  store i8 11, ptr %261, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  %282 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 3, ptr %282, align 4, !annotation !8
  %283 = load i8, ptr %21, align 4
  %284 = zext i8 %283 to i16
  store i16 %284, ptr %14, align 4
  %285 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %285, align 2
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %261, ptr %286, align 4
  %287 = load ptr, ptr %44, align 4
  %288 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  %289 = and i32 %288, -3
  %290 = icmp eq i32 %289, 1
  br i1 %290, label %304, label %291

291:                                              ; preds = %238
  %292 = getelementptr inbounds %struct.tuner_i2c_props, ptr %21, i32 0, i32 3
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %44, align 4
  %295 = icmp eq ptr %294, null
  br i1 %295, label %299, label %296

296:                                              ; preds = %291
  %297 = getelementptr inbounds %struct.i2c_adapter, ptr %294, i32 0, i32 11
  %298 = load i32, ptr %297, align 4
  br label %299

299:                                              ; preds = %296, %291
  %300 = phi i32 [ %298, %296 ], [ -1, %291 ]
  %301 = load i8, ptr %21, align 4
  %302 = zext i8 %301 to i32
  %303 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %293, i32 noundef %300, i32 noundef %302, i32 noundef %288) #10
  br label %304

304:                                              ; preds = %299, %238
  %305 = getelementptr inbounds i8, ptr %12, i32 4
  %306 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %307 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %308 = getelementptr inbounds i8, ptr %11, i32 4
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  %311 = icmp eq i32 %87, 0
  %312 = icmp ult i32 %87, 4
  %313 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  %314 = getelementptr inbounds i8, ptr %10, i32 4
  %315 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %316 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %317 = getelementptr inbounds %struct.tuner_i2c_props, ptr %21, i32 0, i32 3
  %318 = getelementptr inbounds i8, ptr %9, i32 4
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %321 = getelementptr inbounds i8, ptr %8, i32 4
  %322 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  %323 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  br label %324

324:                                              ; preds = %407, %304
  %325 = phi i32 [ 0, %304 ], [ %432, %407 ]
  %326 = call fastcc i32 @mt2032_check_lo_lock(ptr noundef %0)
  %327 = load i32, ptr @optimize_vco, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %389, label %329

329:                                              ; preds = %324
  %330 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i16 15, ptr %13, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #8
  store i32 1, ptr %305, align 4, !annotation !8
  %331 = load i8, ptr %330, align 4
  %332 = zext i8 %331 to i16
  store i16 %332, ptr %12, align 4
  store i16 0, ptr %306, align 2
  store ptr %13, ptr %307, align 4
  %333 = getelementptr inbounds %struct.tuner_i2c_props, ptr %330, i32 0, i32 1
  %334 = load ptr, ptr %333, align 4
  %335 = call i32 @i2c_transfer(ptr noundef %334, ptr noundef nonnull %12, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  store i32 1, ptr %308, align 4, !annotation !8
  %336 = load i8, ptr %330, align 4
  %337 = zext i8 %336 to i16
  store i16 %337, ptr %11, align 4
  store i16 1, ptr %309, align 2
  store ptr %13, ptr %310, align 4
  %338 = load ptr, ptr %333, align 4
  %339 = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  %340 = load i32, ptr @debug, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %357, label %342

342:                                              ; preds = %329
  %343 = getelementptr inbounds %struct.tuner_i2c_props, ptr %330, i32 0, i32 3
  %344 = load ptr, ptr %343, align 4
  %345 = load ptr, ptr %333, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %350, label %347

347:                                              ; preds = %342
  %348 = getelementptr inbounds %struct.i2c_adapter, ptr %345, i32 0, i32 11
  %349 = load i32, ptr %348, align 4
  br label %350

350:                                              ; preds = %347, %342
  %351 = phi i32 [ %349, %347 ], [ -1, %342 ]
  %352 = load i8, ptr %330, align 4
  %353 = zext i8 %352 to i32
  %354 = load i8, ptr %13, align 2
  %355 = zext i8 %354 to i32
  %356 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %344, i32 noundef %351, i32 noundef %353, i32 noundef %355) #10
  br label %357

357:                                              ; preds = %350, %329
  %358 = load i8, ptr %13, align 2
  %359 = trunc i8 %358 to i3
  switch i3 %359, label %361 [
    i3 0, label %387
    i3 1, label %387
    i3 2, label %360
  ]

360:                                              ; preds = %357
  br i1 %311, label %387, label %362

361:                                              ; preds = %357
  br i1 %312, label %362, label %387

362:                                              ; preds = %361, %360
  %363 = phi i32 [ -1, %360 ], [ 1, %361 ]
  %364 = add nsw i32 %363, %87
  %365 = load i32, ptr @debug, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %380, label %367

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.tuner_i2c_props, ptr %330, i32 0, i32 3
  %369 = load ptr, ptr %368, align 4
  %370 = load ptr, ptr %333, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %375, label %372

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.i2c_adapter, ptr %370, i32 0, i32 11
  %374 = load i32, ptr %373, align 4
  br label %375

375:                                              ; preds = %372, %367
  %376 = phi i32 [ %374, %372 ], [ -1, %367 ]
  %377 = load i8, ptr %330, align 4
  %378 = zext i8 %377 to i32
  %379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %369, i32 noundef %376, i32 noundef %378, i32 noundef %364) #10
  br label %380

380:                                              ; preds = %375, %362
  store i8 15, ptr %13, align 2
  %381 = trunc i32 %364 to i8
  store i8 %381, ptr %313, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #8
  store i32 2, ptr %314, align 4, !annotation !8
  %382 = load i8, ptr %330, align 4
  %383 = zext i8 %382 to i16
  store i16 %383, ptr %10, align 4
  store i16 0, ptr %315, align 2
  store ptr %13, ptr %316, align 4
  %384 = load ptr, ptr %333, align 4
  %385 = call i32 @i2c_transfer(ptr noundef %384, ptr noundef nonnull %10, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #8
  %386 = call fastcc i32 @mt2032_check_lo_lock(ptr noundef %0) #8
  br label %387

387:                                              ; preds = %380, %361, %360, %357, %357
  %388 = phi i32 [ %386, %380 ], [ %326, %357 ], [ %326, %357 ], [ %326, %360 ], [ %326, %361 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  br label %389

389:                                              ; preds = %387, %324
  %390 = phi i32 [ %388, %387 ], [ %326, %324 ]
  %391 = icmp eq i32 %390, 6
  br i1 %391, label %446, label %392

392:                                              ; preds = %389
  %393 = load i32, ptr @debug, align 4
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %407, label %395

395:                                              ; preds = %392
  %396 = load ptr, ptr %317, align 4
  %397 = load ptr, ptr %44, align 4
  %398 = icmp eq ptr %397, null
  br i1 %398, label %402, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.i2c_adapter, ptr %397, i32 0, i32 11
  %401 = load i32, ptr %400, align 4
  br label %402

402:                                              ; preds = %399, %395
  %403 = phi i32 [ %401, %399 ], [ -1, %395 ]
  %404 = load i8, ptr %21, align 4
  %405 = zext i8 %404 to i32
  %406 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %396, i32 noundef %403, i32 noundef %405) #10
  br label %407

407:                                              ; preds = %402, %392
  store i8 7, ptr %19, align 1
  %408 = load i32, ptr %55, align 4
  %409 = trunc i32 %408 to i8
  %410 = add i8 %409, -120
  store i8 %410, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  store i32 2, ptr %318, align 4, !annotation !8
  %411 = load i8, ptr %21, align 4
  %412 = zext i8 %411 to i16
  store i16 %412, ptr %9, align 4
  store i16 0, ptr %319, align 2
  store ptr %19, ptr %320, align 4
  %413 = load ptr, ptr %44, align 4
  %414 = call i32 @i2c_transfer(ptr noundef %413, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  %415 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %415(i32 noundef 214748000) #8
  %416 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %416(i32 noundef 214748000) #8
  %417 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %417(i32 noundef 214748000) #8
  %418 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %418(i32 noundef 214748000) #8
  %419 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %419(i32 noundef 214748000) #8
  %420 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %420(i32 noundef 214748000) #8
  %421 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %421(i32 noundef 214748000) #8
  %422 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %422(i32 noundef 214748000) #8
  %423 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %423(i32 noundef 214748000) #8
  %424 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %424(i32 noundef 214748000) #8
  %425 = load i32, ptr %55, align 4
  %426 = trunc i32 %425 to i8
  %427 = add i8 %426, 8
  store i8 %427, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  store i32 2, ptr %321, align 4, !annotation !8
  %428 = load i8, ptr %21, align 4
  %429 = zext i8 %428 to i16
  store i16 %429, ptr %8, align 4
  store i16 0, ptr %322, align 2
  store ptr %19, ptr %323, align 4
  %430 = load ptr, ptr %44, align 4
  %431 = call i32 @i2c_transfer(ptr noundef %430, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  %432 = add nuw nsw i32 %325, 1
  %433 = icmp eq i32 %432, 2
  br i1 %433, label %434, label %324

434:                                              ; preds = %407
  %435 = load ptr, ptr %317, align 4
  %436 = load ptr, ptr %44, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %441, label %438

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.i2c_adapter, ptr %436, i32 0, i32 11
  %440 = load i32, ptr %439, align 4
  br label %441

441:                                              ; preds = %438, %434
  %442 = phi i32 [ %440, %438 ], [ -1, %434 ]
  %443 = load i8, ptr %21, align 4
  %444 = zext i8 %443 to i32
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %435, i32 noundef %442, i32 noundef %444) #10
  br label %446

446:                                              ; preds = %441, %389
  store i8 2, ptr %19, align 1
  store i8 32, ptr %54, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #8
  %447 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %447, align 4, !annotation !8
  %448 = load i8, ptr %21, align 4
  %449 = zext i8 %448 to i16
  store i16 %449, ptr %7, align 4
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %450, align 2
  %451 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %19, ptr %451, align 4
  %452 = load ptr, ptr %44, align 4
  %453 = call i32 @i2c_transfer(ptr noundef %452, ptr noundef nonnull %7, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #8
  %454 = add i32 %453, -1
  %455 = icmp ult i32 %454, 2
  br i1 %455, label %468, label %456

456:                                              ; preds = %446
  %457 = load ptr, ptr %317, align 4
  %458 = load ptr, ptr %44, align 4
  %459 = icmp eq ptr %458, null
  br i1 %459, label %463, label %460

460:                                              ; preds = %456
  %461 = getelementptr inbounds %struct.i2c_adapter, ptr %458, i32 0, i32 11
  %462 = load i32, ptr %461, align 4
  br label %463

463:                                              ; preds = %460, %456
  %464 = phi i32 [ %462, %460 ], [ -1, %456 ]
  %465 = load i8, ptr %21, align 4
  %466 = zext i8 %465 to i32
  %467 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %457, i32 noundef %464, i32 noundef %466, i32 noundef %453) #10
  br label %468

468:                                              ; preds = %463, %446, %158
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %19) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mt2032_check_lo_lock(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 0, ptr %4, align 2, !annotation !8
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %10 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %2, i32 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  %14 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 3
  br label %15

15:                                               ; preds = %61, %1
  %16 = phi i32 [ 0, %1 ], [ %63, %61 ]
  store i8 14, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  store i32 1, ptr %7, align 4, !annotation !8
  %17 = load i8, ptr %6, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %3, align 4
  store i16 0, ptr %8, align 2
  store ptr %4, ptr %9, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  store i32 1, ptr %11, align 4, !annotation !8
  %21 = load i8, ptr %6, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %2, align 4
  store i16 1, ptr %12, align 2
  store ptr %4, ptr %13, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %15
  %28 = load ptr, ptr %14, align 4
  %29 = load ptr, ptr %10, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ -1, %27 ]
  %36 = load i8, ptr %6, align 4
  %37 = zext i8 %36 to i32
  %38 = load i8, ptr %4, align 2
  %39 = zext i8 %38 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %28, i32 noundef %35, i32 noundef %37, i32 noundef %39) #10
  br label %41

41:                                               ; preds = %34, %15
  %42 = load i8, ptr %4, align 2
  %43 = and i8 %42, 6
  %44 = icmp eq i8 %43, 6
  br i1 %44, label %67, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr @debug, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %14, align 4
  %50 = load ptr, ptr %10, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 11
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %54, %52 ], [ -1, %48 ]
  %57 = load i8, ptr %6, align 4
  %58 = zext i8 %57 to i32
  %59 = zext i8 %42 to i32
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %49, i32 noundef %56, i32 noundef %58, i32 noundef %59) #10
  br label %61

61:                                               ; preds = %55, %45
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %62(i32 noundef 214748000) #8
  %63 = add nuw nsw i32 %16, 1
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %15

65:                                               ; preds = %61
  %66 = zext i8 %43 to i32
  br label %67

67:                                               ; preds = %65, %41
  %68 = phi i32 [ %66, %65 ], [ 6, %41 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2050_set_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %133 [
    i32 1, label %11
    i32 2, label %87
    i32 3, label %87
  ]

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 63744
  %15 = icmp eq i64 %14, 0
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %15, label %33, label %18

18:                                               ; preds = %11
  br i1 %17, label %48, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ -1, %19 ]
  %30 = load i8, ptr %8, align 4
  %31 = zext i8 %30 to i32
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %21, i32 noundef %29, i32 noundef %31) #10
  br label %48

33:                                               ; preds = %11
  br i1 %17, label %48, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 11
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = phi i32 [ %42, %40 ], [ -1, %34 ]
  %45 = load i8, ptr %8, align 4
  %46 = zext i8 %45 to i32
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %36, i32 noundef %44, i32 noundef %46) #10
  br label %48

48:                                               ; preds = %43, %33, %28, %18
  %49 = phi i32 [ 41300000, %28 ], [ 41300000, %18 ], [ 33300000, %43 ], [ 33300000, %33 ]
  %50 = load i32, ptr %1, align 8
  %51 = mul i32 %50, 125
  %52 = lshr i32 %51, 1
  tail call fastcc void @mt2050_set_if_freq(ptr noundef %0, i32 noundef %52, i32 noundef %49) #8
  %53 = load i32, ptr @radio_antenna, align 4
  %54 = trunc i32 %53 to i8
  %55 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i16 6, ptr %6, align 2, !annotation !8
  %56 = and i32 %53, 255
  %57 = icmp eq i8 %54, 0
  %58 = select i1 %57, i8 16, i8 17
  %59 = getelementptr inbounds [2 x i8], ptr %6, i32 0, i32 1
  store i8 %58, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %60 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %60, align 4, !annotation !8
  %61 = load i8, ptr %55, align 4
  %62 = zext i8 %61 to i16
  store i16 %62, ptr %5, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %63, align 2
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %64, align 4
  %65 = getelementptr inbounds %struct.tuner_i2c_props, ptr %55, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %66, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %68 = load i32, ptr @debug, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %48
  %71 = getelementptr inbounds %struct.tuner_i2c_props, ptr %55, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %65, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.i2c_adapter, ptr %73, i32 0, i32 11
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %70
  %79 = phi i32 [ %77, %75 ], [ -1, %70 ]
  %80 = load i8, ptr %55, align 4
  %81 = zext i8 %80 to i32
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %72, i32 noundef %79, i32 noundef %81, i32 noundef %56) #10
  br label %83

83:                                               ; preds = %78, %48
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  %84 = load i32, ptr %1, align 8
  %85 = mul i32 %84, 125
  %86 = lshr i32 %85, 1
  br label %130

87:                                               ; preds = %2, %2
  %88 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 63744
  %91 = icmp eq i64 %90, 0
  %92 = select i1 %91, i32 38900000, i32 45750000
  %93 = icmp eq i32 %10, 3
  %94 = select i1 %93, i32 36150000, i32 %92
  %95 = load i32, ptr %1, align 8
  %96 = mul i32 %95, 62500
  tail call fastcc void @mt2050_set_if_freq(ptr noundef %0, i32 noundef %96, i32 noundef %94) #8
  %97 = load i32, ptr @tv_antenna, align 4
  %98 = trunc i32 %97 to i8
  %99 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 6, ptr %4, align 2, !annotation !8
  %100 = and i32 %97, 255
  %101 = icmp eq i8 %98, 0
  %102 = select i1 %101, i8 16, i8 17
  %103 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 %102, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %104 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %104, align 4, !annotation !8
  %105 = load i8, ptr %99, align 4
  %106 = zext i8 %105 to i16
  store i16 %106, ptr %3, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %108, align 4
  %109 = getelementptr inbounds %struct.tuner_i2c_props, ptr %99, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  %112 = load i32, ptr @debug, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %87
  %115 = getelementptr inbounds %struct.tuner_i2c_props, ptr %99, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %109, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.i2c_adapter, ptr %117, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = phi i32 [ %121, %119 ], [ -1, %114 ]
  %124 = load i8, ptr %99, align 4
  %125 = zext i8 %124 to i32
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %116, i32 noundef %123, i32 noundef %125, i32 noundef %100) #10
  br label %127

127:                                              ; preds = %122, %87
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %128 = load i32, ptr %1, align 8
  %129 = mul i32 %128, 62500
  br label %130

130:                                              ; preds = %127, %83
  %131 = phi i32 [ %129, %127 ], [ %86, %83 ]
  %132 = getelementptr inbounds %struct.microtune_priv, ptr %8, i32 0, i32 2
  store i32 %131, ptr %132, align 4
  br label %133

133:                                              ; preds = %130, %2
  %134 = phi i32 [ -22, %2 ], [ 0, %130 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mt2050_set_if_freq(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #8
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i32 [ %18, %16 ], [ -1, %10 ]
  %21 = load i8, ptr %7, align 4
  %22 = zext i8 %21 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %12, i32 noundef %20, i32 noundef %22, i32 noundef %1, i32 noundef 1218000000, i32 noundef %2) #10
  %24 = load i32, ptr @debug, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = phi i32 [ %24, %19 ], [ 0, %3 ]
  %27 = add i32 %1, 1218000000
  %28 = urem i32 %27, 1000000
  %29 = sub i32 %27, %28
  %30 = add i32 %2, %1
  %31 = sub i32 %29, %30
  %32 = urem i32 %31, 50000
  %33 = sub i32 %31, %32
  %34 = udiv i32 %29, 4000000
  %35 = udiv i32 %33, 4000000
  %36 = mul i32 %34, 1069741824
  %37 = add i32 %36, %29
  %38 = mul i32 %35, -4000000
  %39 = add i32 %38, %33
  %40 = shl i32 %37, 2
  %41 = udiv i32 %40, 4000000
  %42 = udiv i32 %39, 1000
  %43 = shl i32 %42, 12
  %44 = udiv i32 %43, 4000
  %45 = udiv i32 %29, 48000000
  %46 = add nsw i32 %45, -1
  %47 = mul nsw i32 %45, -12
  %48 = add nsw i32 %47, %34
  %49 = udiv i32 %33, 32000000
  %50 = add nsw i32 %49, -1
  %51 = mul nsw i32 %49, -8
  %52 = add nsw i32 %51, %35
  %53 = icmp sgt i32 %26, 1
  br i1 %53, label %54, label %83

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 11
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %54
  %64 = phi i32 [ %62, %60 ], [ -1, %54 ]
  %65 = load i8, ptr %7, align 4
  %66 = zext i8 %65 to i32
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %56, i32 noundef %64, i32 noundef %66, i32 noundef %34, i32 noundef %35) #10
  %68 = load i32, ptr @debug, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %63
  %71 = load ptr, ptr %55, align 4
  %72 = load ptr, ptr %57, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.i2c_adapter, ptr %72, i32 0, i32 11
  %76 = load i32, ptr %75, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = phi i32 [ %76, %74 ], [ -1, %70 ]
  %79 = load i8, ptr %7, align 4
  %80 = zext i8 %79 to i32
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %71, i32 noundef %78, i32 noundef %80, i32 noundef %41, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52) #10
  %82 = load i32, ptr @debug, align 4
  br label %83

83:                                               ; preds = %77, %63, %25
  %84 = phi i32 [ 0, %63 ], [ %82, %77 ], [ %26, %25 ]
  store i8 1, ptr %5, align 1
  %85 = shl nsw i32 %48, 2
  %86 = add nsw i32 %41, %85
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 1
  %89 = icmp ult i32 %1, 275000000
  %90 = or i8 %87, -128
  %91 = select i1 %89, i8 %90, i8 %87
  store i8 %91, ptr %88, align 1
  %92 = trunc i32 %46 to i8
  %93 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 2
  store i8 %92, ptr %93, align 1
  %94 = shl nsw i32 %52, 5
  %95 = udiv i32 %43, 1024000
  %96 = add nsw i32 %95, %94
  %97 = trunc i32 %96 to i8
  %98 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 3
  store i8 %97, ptr %98, align 1
  %99 = trunc i32 %44 to i8
  %100 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 4
  store i8 %99, ptr %100, align 1
  %101 = trunc i32 %50 to i8
  %102 = getelementptr inbounds [6 x i8], ptr %5, i32 0, i32 5
  %103 = icmp eq i32 %43, 0
  %104 = or i8 %101, 64
  %105 = select i1 %103, i8 %101, i8 %104
  store i8 %105, ptr %102, align 1
  %106 = icmp sgt i32 %84, 1
  br i1 %106, label %107, label %121

107:                                              ; preds = %83
  %108 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 11
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %107
  %117 = phi i32 [ %115, %113 ], [ -1, %107 ]
  %118 = load i8, ptr %7, align 4
  %119 = zext i8 %118 to i32
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %109, i32 noundef %117, i32 noundef %119, i32 noundef 6, ptr noundef nonnull %5) #10
  br label %121

121:                                              ; preds = %116, %83
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %122 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %122, align 4, !annotation !8
  %123 = load i8, ptr %7, align 4
  %124 = zext i8 %123 to i16
  store i16 %124, ptr %4, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %125, align 2
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %126, align 4
  %127 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  switch i32 %129, label %130 [
    i32 6, label %143
    i32 1, label %143
  ]

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %127, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.i2c_adapter, ptr %133, i32 0, i32 11
  %137 = load i32, ptr %136, align 4
  br label %138

138:                                              ; preds = %135, %130
  %139 = phi i32 [ %137, %135 ], [ -1, %130 ]
  %140 = load i8, ptr %7, align 4
  %141 = zext i8 %140 to i32
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %132, i32 noundef %139, i32 noundef %141, i32 noundef %129) #10
  br label %143

143:                                              ; preds = %138, %121, %121
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
