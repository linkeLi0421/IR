; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lgs8gxx.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgs8gxx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgs8gxx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgs8gxx_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgs8gxx_attach:\09\09\09\09\09"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lgs8gxx_state = type { ptr, ptr, %struct.dvb_frontend, i16 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.lgs8gxx_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8 }
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
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__param_str_fake_signal_str = internal constant [16 x i8] c"fake_signal_str\00", align 1
@fake_signal_str = internal global i32 1, align 4
@__param_fake_signal_str = internal constant %struct.kernel_param { ptr @__param_str_fake_signal_str, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @fake_signal_str } }, section "__param", align 4
@__UNIQUE_ID_fake_signal_strtype251 = internal constant [29 x i8] c"parmtype=fake_signal_str:int\00", section ".modinfo", align 1
@__UNIQUE_ID_fake_signal_str252 = internal constant [104 x i8] c"parm=fake_signal_str:fake signal strength for LGS8913.Signal strength calculation is slow.(default:on).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"\017lgs8gxx: %s()\0A\00", align 1
@__func__.lgs8gxx_attach = private unnamed_addr constant [15 x i8] c"lgs8gxx_attach\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"\017lgs8gxx: %s lgs8gxx not found at i2c addr 0x%02X\0A\00", align 1
@lgs8gxx_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Legend Silicon LGS8913/LGS8GXX DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 721408 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr null, ptr @lgs8gxx_release, ptr null, ptr @lgs8gxx_init, ptr null, ptr null, ptr null, ptr @lgs8gxx_write, ptr null, ptr null, ptr @lgs8gxx_set_fe, ptr @lgs8gxx_get_tune_settings, ptr null, ptr @lgs8gxx_read_status, ptr @lgs8gxx_read_ber, ptr @lgs8gxx_read_signal_strength, ptr @lgs8gxx_read_snr, ptr @lgs8gxx_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgs8gxx_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\017lgs8gxx: %s() error_out\0A\00", align 1
@__kstrtab_lgs8gxx_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgs8gxx_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgs8gxx_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgs8gxx_attach to i32), ptr @__kstrtab_lgs8gxx_attach, ptr @__kstrtabns_lgs8gxx_attach }, section "___ksymtab+lgs8gxx_attach", align 4
@__UNIQUE_ID_description253 = internal constant [69 x i8] c"description=Legend Silicon LGS8913/LGS8GXX DMB-TH demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [48 x i8] c"author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [20 x i8] c"firmware=lgs8g75.fw\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"\017lgs8gxx: %s: error reg=0x%x, ret=%i\0A\00", align 1
@__func__.lgs8gxx_read_reg = private unnamed_addr constant [17 x i8] c"lgs8gxx_read_reg\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\017lgs8gxx: %s: reg=0x%02X, data=0x%02X\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\017lgs8gxx: %s\0A\00", align 1
@__func__.lgs8gxx_release = private unnamed_addr constant [16 x i8] c"lgs8gxx_release\00", align 1
@__func__.lgs8gxx_init = private unnamed_addr constant [13 x i8] c"lgs8gxx_init\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\017lgs8gxx: reg 0 = 0x%02X\0A\00", align 1
@__func__.lgs8gxx_write_reg = private unnamed_addr constant [18 x i8] c"lgs8gxx_write_reg\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"\017lgs8gxx: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: Set IF Freq to %dkHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\017lgs8gxx: Set IF Freq to baseband\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\017lgs8gxx: AFC_INIT_FREQ = 0x%08X\0A\00", align 1
@__func__.lgs8gxx_set_fe = private unnamed_addr constant [15 x i8] c"lgs8gxx_set_fe\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"\017lgs8gxx: lgs8gxx_auto_detect failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"\017lgs8gxx: detected param = 0x%02X\0A\00", align 1
@__func__.lgs8gxx_auto_detect = private unnamed_addr constant [20 x i8] c"lgs8gxx_auto_detect\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\017lgs8gxx: GI 945 locked\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"\017lgs8gxx: GI 595 locked\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\017lgs8gxx: GI 420 locked\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\017lgs8gxx: try GI 945\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"\017lgs8gxx: try GI 595\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\017lgs8gxx: try GI 420\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: auto detect finished\0A\00", align 1
@__func__.lgs8gxx_read_status = private unnamed_addr constant [20 x i8] c"lgs8gxx_read_status\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"\017lgs8gxx: Reg 0x4B: 0x%02X\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\017lgs8gxx: %s: fe_status=0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"\017lgs8gxx: AFC = %u kHz\0A\00", align 1
@__func__.lgs8gxx_read_ber = private unnamed_addr constant [17 x i8] c"lgs8gxx_read_ber\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"\017lgs8gxx: error=%d total=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\017lgs8gxx: %s: ber=0x%x\0A\00", align 1
@__func__.lgs8913_read_signal_strength = private unnamed_addr constant [29 x i8] c"lgs8913_read_signal_strength\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: Fake signal strength\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"\017lgs8gxx: gi = %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"\017lgs8gxx: %s: signal=0x%02X\0A\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"\017lgs8gxx: %s: AVG Noise=0x%02X\0A\00", align 1
@__func__.lgs8g75_read_signal_strength = private unnamed_addr constant [29 x i8] c"lgs8g75_read_signal_strength\00", align 1
@__func__.lgs8gxx_read_signal_agc = private unnamed_addr constant [24 x i8] c"lgs8gxx_read_signal_agc\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"\017lgs8gxx: agc_lvl: 0x%04X\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"\017lgs8gxx: AVG Noise=0x%02X\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"\017lgs8gxx: snr=0x%x\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"\017lgs8gxx: %s: ucblocks=0x%x\0A\00", align 1
@__func__.lgs8gxx_read_ucblocks = private unnamed_addr constant [22 x i8] c"lgs8gxx_read_ucblocks\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"lgs8g75.fw\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_fake_signal_str252, ptr @__UNIQUE_ID_fake_signal_strtype251, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_lgs8gxx_attach, ptr @__param_debug, ptr @__param_fake_signal_str], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lgs8gxx_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 8
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 8
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 8
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 8
  %19 = alloca ptr, align 4
  %20 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #9
  store i8 0, ptr %20, align 1
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgs8gxx_attach) #10
  br label %25

25:                                               ; preds = %23, %2
  %26 = icmp eq ptr %0, null
  %27 = icmp eq ptr %1, null
  %28 = or i1 %26, %27
  br i1 %28, label %255, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 1052) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %249, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.lgs8gxx_state, ptr %31, i32 0, i32 1
  store ptr %0, ptr %34, align 4
  store ptr %1, ptr %31, align 8
  %35 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef nonnull %31, i8 noundef zeroext 0, ptr noundef nonnull %20)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %254, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.lgs8gxx_config, ptr %41, i32 0, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.lgs8gxx_attach, i32 noundef %44) #10
  br label %249

46:                                               ; preds = %33
  %47 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef nonnull %31, i8 noundef zeroext 1, ptr noundef nonnull %20)
  %48 = getelementptr inbounds %struct.lgs8gxx_state, ptr %31, i32 0, i32 2
  %49 = getelementptr inbounds %struct.lgs8gxx_state, ptr %31, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %49, ptr noundef nonnull align 4 dereferenceable(544) @lgs8gxx_ops, i32 544, i1 false)
  %50 = getelementptr inbounds %struct.lgs8gxx_state, ptr %31, i32 0, i32 2, i32 3
  store ptr %31, ptr %50, align 8
  %51 = load i8, ptr %0, align 4
  %52 = icmp eq i8 %51, 6
  br i1 %52, label %53, label %255

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #9
  store ptr null, ptr %19, align 4, !annotation !8
  %54 = load ptr, ptr %31, align 8
  %55 = getelementptr inbounds %struct.i2c_adapter, ptr %54, i32 0, i32 9
  %56 = call i32 @request_firmware(ptr noundef nonnull %19, ptr noundef nonnull @.str.33, ptr noundef %55) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %248

58:                                               ; preds = %53
  %59 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef nonnull %31, i8 noundef zeroext -58, i8 noundef zeroext 64) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #9
  store i8 61, ptr %17, align 2
  %60 = getelementptr inbounds i8, ptr %17, i32 1
  store i8 4, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #9
  store i64 8589934592, ptr %18, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %61, align 8
  %62 = load ptr, ptr %34, align 4
  %63 = getelementptr inbounds %struct.lgs8gxx_config, ptr %62, i32 0, i32 1
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %18, align 8
  %66 = load i32, ptr @debug, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 4) #10
  br label %70

70:                                               ; preds = %68, %58
  %71 = load ptr, ptr %31, align 8
  %72 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %18, i32 noundef 1) #9
  %73 = icmp ne i32 %72, 1
  %74 = load i32, ptr @debug, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 4, i32 noundef %72) #10
  %79 = load i32, ptr @debug, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = phi i32 [ %74, %70 ], [ %79, %77 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #9
  store i8 57, ptr %15, align 2
  %82 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 0, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #9
  store i64 8589934592, ptr %16, align 8
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %83, align 8
  %84 = load ptr, ptr %34, align 4
  %85 = getelementptr inbounds %struct.lgs8gxx_config, ptr %84, i32 0, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %16, align 8
  %88 = icmp sgt i32 %81, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 0) #10
  br label %91

91:                                               ; preds = %89, %80
  %92 = load ptr, ptr %31, align 8
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %16, i32 noundef 1) #9
  %94 = icmp ne i32 %93, 1
  %95 = load i32, ptr @debug, align 4
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 0, i32 noundef %93) #10
  %100 = load i32, ptr @debug, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi i32 [ %95, %91 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #9
  store i8 58, ptr %13, align 2
  %103 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 0, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #9
  store i64 8589934592, ptr %14, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %104, align 8
  %105 = load ptr, ptr %34, align 4
  %106 = getelementptr inbounds %struct.lgs8gxx_config, ptr %105, i32 0, i32 1
  %107 = load i8, ptr %106, align 1
  %108 = zext i8 %107 to i16
  store i16 %108, ptr %14, align 8
  %109 = icmp sgt i32 %102, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %101
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 58, i32 noundef 0) #10
  br label %112

112:                                              ; preds = %110, %101
  %113 = load ptr, ptr %31, align 8
  %114 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %14, i32 noundef 1) #9
  %115 = icmp ne i32 %114, 1
  %116 = load i32, ptr @debug, align 4
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %115, i1 %117, i1 false
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 58, i32 noundef 0, i32 noundef %114) #10
  %121 = load i32, ptr @debug, align 4
  br label %122

122:                                              ; preds = %119, %112
  %123 = phi i32 [ %116, %112 ], [ %121, %119 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 56, ptr %11, align 2
  %124 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 0, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  store i64 8589934592, ptr %12, align 8
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %125, align 8
  %126 = load ptr, ptr %34, align 4
  %127 = getelementptr inbounds %struct.lgs8gxx_config, ptr %126, i32 0, i32 1
  %128 = load i8, ptr %127, align 1
  %129 = zext i8 %128 to i16
  store i16 %129, ptr %12, align 8
  %130 = icmp sgt i32 %123, 1
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0) #10
  br label %133

133:                                              ; preds = %131, %122
  %134 = load ptr, ptr %31, align 8
  %135 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %12, i32 noundef 1) #9
  %136 = icmp ne i32 %135, 1
  %137 = load i32, ptr @debug, align 4
  %138 = icmp ne i32 %137, 0
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0, i32 noundef %135) #10
  %142 = load i32, ptr @debug, align 4
  br label %143

143:                                              ; preds = %140, %133
  %144 = phi i32 [ %137, %133 ], [ %142, %140 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  store i8 59, ptr %9, align 2
  %145 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 0, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  store i64 8589934592, ptr %10, align 8
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %146, align 8
  %147 = load ptr, ptr %34, align 4
  %148 = getelementptr inbounds %struct.lgs8gxx_config, ptr %147, i32 0, i32 1
  %149 = load i8, ptr %148, align 1
  %150 = zext i8 %149 to i16
  store i16 %150, ptr %10, align 8
  %151 = icmp sgt i32 %144, 1
  br i1 %151, label %152, label %154

152:                                              ; preds = %143
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 59, i32 noundef 0) #10
  br label %154

154:                                              ; preds = %152, %143
  %155 = load ptr, ptr %31, align 8
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %10, i32 noundef 1) #9
  %157 = icmp ne i32 %156, 1
  %158 = load i32, ptr @debug, align 4
  %159 = icmp ne i32 %158, 0
  %160 = select i1 %157, i1 %159, i1 false
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 59, i32 noundef 0, i32 noundef %156) #10
  %163 = load i32, ptr @debug, align 4
  br label %164

164:                                              ; preds = %161, %154
  %165 = phi i32 [ %158, %154 ], [ %163, %161 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  store i8 56, ptr %7, align 2
  %166 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 0, ptr %166, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  store i64 8589934592, ptr %8, align 8
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %167, align 8
  %168 = load ptr, ptr %34, align 4
  %169 = getelementptr inbounds %struct.lgs8gxx_config, ptr %168, i32 0, i32 1
  %170 = load i8, ptr %169, align 1
  %171 = zext i8 %170 to i16
  store i16 %171, ptr %8, align 8
  %172 = icmp sgt i32 %165, 1
  br i1 %172, label %173, label %175

173:                                              ; preds = %164
  %174 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0) #10
  br label %175

175:                                              ; preds = %173, %164
  %176 = load ptr, ptr %31, align 8
  %177 = call i32 @i2c_transfer(ptr noundef %176, ptr noundef nonnull %8, i32 noundef 1) #9
  %178 = icmp ne i32 %177, 1
  %179 = load i32, ptr @debug, align 4
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  %183 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0, i32 noundef %177) #10
  br label %184

184:                                              ; preds = %182, %175
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  %185 = load ptr, ptr %19, align 4
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %226, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds i8, ptr %5, i32 1
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  br label %191

191:                                              ; preds = %210, %188
  %192 = phi i32 [ 0, %188 ], [ %222, %210 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 56, ptr %5, align 2
  store i8 0, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  store i64 8589934592, ptr %6, align 8
  store ptr %5, ptr %190, align 8
  %193 = load ptr, ptr %34, align 4
  %194 = getelementptr inbounds %struct.lgs8gxx_config, ptr %193, i32 0, i32 1
  %195 = load i8, ptr %194, align 1
  %196 = zext i8 %195 to i16
  store i16 %196, ptr %6, align 8
  %197 = load i32, ptr @debug, align 4
  %198 = icmp sgt i32 %197, 1
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0) #10
  br label %201

201:                                              ; preds = %199, %191
  %202 = load ptr, ptr %31, align 8
  %203 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %6, i32 noundef 1) #9
  %204 = icmp ne i32 %203, 1
  %205 = load i32, ptr @debug, align 4
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %204, i1 %206, i1 false
  br i1 %207, label %208, label %210

208:                                              ; preds = %201
  %209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0, i32 noundef %203) #10
  br label %210

210:                                              ; preds = %208, %201
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  %211 = trunc i32 %192 to i8
  %212 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %31, i8 noundef zeroext 58, i8 noundef zeroext %211) #9
  %213 = lshr i32 %192, 8
  %214 = trunc i32 %213 to i8
  %215 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %31, i8 noundef zeroext 59, i8 noundef zeroext %214) #9
  %216 = load ptr, ptr %19, align 4
  %217 = getelementptr inbounds %struct.firmware, ptr %216, i32 0, i32 1
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr i8, ptr %218, i32 %192
  %220 = load i8, ptr %219, align 1
  %221 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %31, i8 noundef zeroext 60, i8 noundef zeroext %220) #9
  %222 = add nuw i32 %192, 1
  %223 = load ptr, ptr %19, align 4
  %224 = load i32, ptr %223, align 4
  %225 = icmp ult i32 %222, %224
  br i1 %225, label %191, label %226

226:                                              ; preds = %210, %184
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 56, ptr %3, align 2
  %227 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %227, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  store i64 8589934592, ptr %4, align 8
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %228, align 8
  %229 = load ptr, ptr %34, align 4
  %230 = getelementptr inbounds %struct.lgs8gxx_config, ptr %229, i32 0, i32 1
  %231 = load i8, ptr %230, align 1
  %232 = zext i8 %231 to i16
  store i16 %232, ptr %4, align 8
  %233 = load i32, ptr @debug, align 4
  %234 = icmp sgt i32 %233, 1
  br i1 %234, label %235, label %237

235:                                              ; preds = %226
  %236 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0) #10
  br label %237

237:                                              ; preds = %235, %226
  %238 = load ptr, ptr %31, align 8
  %239 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %4, i32 noundef 1) #9
  %240 = icmp ne i32 %239, 1
  %241 = load i32, ptr @debug, align 4
  %242 = icmp ne i32 %241, 0
  %243 = select i1 %240, i1 %242, i1 false
  br i1 %243, label %244, label %246

244:                                              ; preds = %237
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 56, i32 noundef 0, i32 noundef %239) #10
  br label %246

246:                                              ; preds = %244, %237
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %247 = load ptr, ptr %19, align 4
  call void @release_firmware(ptr noundef %247) #9
  br label %248

248:                                              ; preds = %246, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #9
  br label %255

249:                                              ; preds = %40, %29
  %250 = load i32, ptr @debug, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %254, label %252

252:                                              ; preds = %249
  %253 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.lgs8gxx_attach) #10
  br label %254

254:                                              ; preds = %252, %249, %37
  tail call void @kfree(ptr noundef %31) #9
  br label %255

255:                                              ; preds = %254, %248, %46, %25
  %256 = phi ptr [ null, %254 ], [ null, %25 ], [ %48, %248 ], [ %48, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #9
  ret ptr %256
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgs8gxx_read_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  store i16 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %12, align 4
  %13 = getelementptr inbounds %struct.lgs8gxx_state, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.lgs8gxx_config, ptr %14, i32 0, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = load i8, ptr %14, align 4
  %18 = icmp ne i8 %17, 6
  %19 = zext i8 %1 to i32
  %20 = icmp ugt i8 %1, -65
  %21 = and i1 %20, %18
  %22 = add i8 %16, 2
  %23 = select i1 %21, i8 %22, i8 %16
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %6, align 4
  store i16 %24, ptr %9, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %6, i32 noundef 2) #9
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.lgs8gxx_read_reg, i32 noundef %19, i32 noundef %26) #10
  br label %40

33:                                               ; preds = %3
  %34 = load i8, ptr %5, align 1
  store i8 %34, ptr %2, align 1
  %35 = load i32, ptr @debug, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = zext i8 %34 to i32
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_read_reg, i32 noundef %19, i32 noundef %38) #10
  br label %40

40:                                               ; preds = %37, %33, %31, %28
  %41 = phi i32 [ -1, %31 ], [ -1, %28 ], [ 0, %37 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lgs8gxx_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8gxx_release) #10
  br label %8

8:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lgs8gxx_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8gxx_init) #10
  br label %15

15:                                               ; preds = %13, %1
  %16 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext 0, ptr noundef nonnull %6)
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr %6, align 1
  %21 = zext i8 %20 to i32
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %21) #10
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8, ptr %10, align 4
  %25 = icmp eq i8 %24, 6
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load ptr, ptr %9, align 4
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 6
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.lgs8gxx_config, ptr %10, i32 0, i32 11
  %32 = load i8, ptr %31, align 4
  %33 = shl i8 %32, 7
  %34 = or i8 %33, 115
  %35 = lshr i8 %32, 1
  %36 = and i8 %35, 1
  %37 = or i8 %36, -112
  %38 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext 38, i8 noundef zeroext %34) #9
  %39 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext 39, i8 noundef zeroext %37) #9
  br label %40

40:                                               ; preds = %30, %26, %23
  %41 = getelementptr inbounds %struct.lgs8gxx_config, ptr %10, i32 0, i32 2
  %42 = load i8, ptr %41, align 2
  %43 = getelementptr inbounds %struct.lgs8gxx_config, ptr %10, i32 0, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.lgs8gxx_config, ptr %10, i32 0, i32 4
  %46 = load i8, ptr %45, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %47 = load ptr, ptr %9, align 4
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 6
  %50 = select i1 %49, i8 48, i8 -62
  %51 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext %50, ptr noundef nonnull %5) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br label %184

54:                                               ; preds = %40
  %55 = load i8, ptr %5, align 1
  %56 = and i8 %55, -8
  %57 = icmp ne i8 %42, 0
  %58 = zext i1 %57 to i8
  %59 = icmp eq i8 %44, 0
  %60 = select i1 %59, i8 0, i8 2
  %61 = icmp eq i8 %46, 0
  %62 = select i1 %61, i8 4, i8 0
  %63 = or i8 %60, %58
  %64 = or i8 %63, %62
  %65 = or i8 %64, %56
  %66 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext %50, i8 noundef zeroext %65) #9
  %67 = icmp eq i32 %66, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br i1 %67, label %68, label %184

68:                                               ; preds = %54
  %69 = load i8, ptr %10, align 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %72 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext -63, i8 noundef zeroext 3) #9
  %73 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext 124, ptr noundef nonnull %4) #9
  %74 = load i8, ptr %4, align 1
  %75 = and i8 %74, -116
  %76 = or i8 %75, 3
  %77 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext 124, i8 noundef zeroext %76) #9
  %78 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext -61, ptr noundef nonnull %4) #9
  %79 = load i8, ptr %4, align 1
  %80 = and i8 %79, 16
  %81 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext -61, i8 noundef zeroext %80) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %82

82:                                               ; preds = %71, %68
  %83 = load ptr, ptr %9, align 4
  %84 = getelementptr inbounds %struct.lgs8gxx_config, ptr %83, i32 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.lgs8gxx_config, ptr %83, i32 0, i32 5
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %85, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %82
  %90 = icmp eq i32 %87, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %89
  %92 = zext i32 %85 to i64
  %93 = shl nuw i64 %92, 32
  %94 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %87, i64 %93) #12, !srcloc !9
  %95 = extractvalue { i64, i64 } %94, 1
  %96 = trunc i64 %95 to i32
  br label %97

97:                                               ; preds = %91, %89
  %98 = phi i32 [ 0, %89 ], [ %96, %91 ]
  %99 = load i32, ptr @debug, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %97
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %85) #10
  br label %108

103:                                              ; preds = %82
  %104 = load i32, ptr @debug, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %108

108:                                              ; preds = %106, %101
  %109 = phi i32 [ 0, %106 ], [ %98, %101 ]
  %110 = load i32, ptr @debug, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %109) #10
  br label %114

114:                                              ; preds = %112, %108, %103, %97
  %115 = phi i32 [ %109, %112 ], [ %109, %108 ], [ 0, %103 ], [ %98, %97 ]
  %116 = load ptr, ptr %9, align 4
  %117 = load i8, ptr %116, align 4
  %118 = icmp eq i8 %117, 6
  %119 = trunc i32 %115 to i8
  %120 = select i1 %118, i8 8, i8 9
  %121 = select i1 %118, i8 9, i8 10
  %122 = select i1 %118, i8 10, i8 11
  %123 = select i1 %118, i8 11, i8 12
  %124 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext %120, i8 noundef zeroext %119) #9
  %125 = lshr i32 %115, 8
  %126 = trunc i32 %125 to i8
  %127 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext %121, i8 noundef zeroext %126) #9
  %128 = lshr i32 %115, 16
  %129 = trunc i32 %128 to i8
  %130 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext %122, i8 noundef zeroext %129) #9
  %131 = lshr i32 %115, 24
  %132 = trunc i32 %131 to i8
  %133 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext %123, i8 noundef zeroext %132) #9
  %134 = load ptr, ptr %9, align 4
  %135 = getelementptr inbounds %struct.lgs8gxx_config, ptr %134, i32 0, i32 7
  %136 = load i8, ptr %135, align 4
  %137 = icmp eq i8 %136, 0
  %138 = getelementptr inbounds %struct.lgs8gxx_config, ptr %134, i32 0, i32 10
  %139 = load i8, ptr %138, align 1
  %140 = getelementptr inbounds %struct.lgs8gxx_config, ptr %134, i32 0, i32 6
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr inbounds %struct.lgs8gxx_config, ptr %134, i32 0, i32 8
  %143 = load i8, ptr %142, align 1
  %144 = getelementptr inbounds %struct.lgs8gxx_config, ptr %134, i32 0, i32 9
  %145 = load i8, ptr %144, align 2
  br i1 %137, label %169, label %146

146:                                              ; preds = %114
  %147 = load i8, ptr %134, align 4
  %148 = icmp eq i8 %147, 4
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 -70, ptr %2, align 2
  %150 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 64, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i64 8589934592, ptr %3, align 8
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %151, align 8
  %152 = getelementptr inbounds %struct.lgs8gxx_config, ptr %134, i32 0, i32 1
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %3, align 8
  %155 = load i32, ptr @debug, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 186, i32 noundef 64) #10
  br label %159

159:                                              ; preds = %157, %149
  %160 = load ptr, ptr %8, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %160, ptr noundef nonnull %3, i32 noundef 1) #9
  %162 = icmp ne i32 %161, 1
  %163 = load i32, ptr @debug, align 4
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %162, i1 %164, i1 false
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 186, i32 noundef 64, i32 noundef %161) #10
  br label %168

168:                                              ; preds = %166, %159
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %169

169:                                              ; preds = %168, %146, %114
  %170 = phi i8 [ -128, %168 ], [ -128, %146 ], [ 0, %114 ]
  %171 = icmp ne i8 %145, 0
  %172 = icmp eq i8 %143, 0
  %173 = icmp eq i32 %141, 0
  %174 = icmp eq i8 %139, 0
  %175 = select i1 %173, i8 8, i8 0
  %176 = select i1 %172, i8 0, i8 2
  %177 = zext i1 %171 to i8
  %178 = select i1 %174, i8 16, i8 20
  %179 = or i8 %175, %178
  %180 = or i8 %179, %176
  %181 = or i8 %180, %177
  %182 = or i8 %181, %170
  %183 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext 7, i8 noundef zeroext %182) #9
  br label %184

184:                                              ; preds = %169, %54, %53
  %185 = phi i32 [ 0, %169 ], [ -5, %54 ], [ -5, %53 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  ret i32 %185
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_write(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 2
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %1, align 1
  %9 = getelementptr i8, ptr %1, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext %8, i8 noundef zeroext %10)
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ %11, %5 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_set_fe(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 8
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 8
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 8
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 8
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 8
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 8
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 8
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 8
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 8
  %34 = alloca i8, align 1
  %35 = alloca i8, align 1
  %36 = alloca i8, align 1
  %37 = alloca i8, align 1
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %1
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8gxx_set_fe) #10
  br label %44

44:                                               ; preds = %42, %1
  %45 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  %49 = tail call i32 %46(ptr noundef %0) #9
  %50 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call i32 %51(ptr noundef %0, i32 noundef 0) #9
  br label %55

55:                                               ; preds = %53, %48, %44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %35) #9
  store i8 0, ptr %35, align 1
  %56 = load i32, ptr @debug, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8gxx_auto_detect) #10
  br label %60

60:                                               ; preds = %58, %55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #9
  store i8 0, ptr %34, align 1, !annotation !8
  %61 = getelementptr inbounds %struct.lgs8gxx_state, ptr %39, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = load i8, ptr %62, align 4
  switch i8 %63, label %140 [
    i8 0, label %64
    i8 6, label %84
    i8 5, label %131
    i8 4, label %131
    i8 3, label %131
    i8 1, label %131
  ]

64:                                               ; preds = %60
  %65 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -58, i8 noundef zeroext 1) #9
  %66 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 126, ptr noundef nonnull %34) #9
  %67 = load i8, ptr %34, align 1
  %68 = or i8 %67, 1
  %69 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext 126, i8 noundef zeroext %68) #9
  %70 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext -59, ptr noundef nonnull %34) #9
  %71 = load i8, ptr %34, align 1
  %72 = and i8 %71, -32
  %73 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -59, i8 noundef zeroext %72) #9
  %74 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -63, i8 noundef zeroext 3) #9
  %75 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 124, ptr noundef nonnull %34) #9
  %76 = load i8, ptr %34, align 1
  %77 = and i8 %76, -116
  %78 = or i8 %77, 3
  store i8 %78, ptr %34, align 1
  %79 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext 124, i8 noundef zeroext %78) #9
  %80 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext -61, ptr noundef nonnull %34) #9
  %81 = load i8, ptr %34, align 1
  %82 = or i8 %81, 16
  %83 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -61, i8 noundef zeroext %82) #9
  br label %140

84:                                               ; preds = %60
  %85 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 12, ptr noundef nonnull %34) #9
  %86 = load i8, ptr %34, align 1
  %87 = and i8 %86, -5
  store i8 %87, ptr %34, align 1
  %88 = or i8 %87, -128
  %89 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext 12, i8 noundef zeroext %88) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #9
  store i8 57, ptr %32, align 2
  %90 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 0, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #9
  store i64 8589934592, ptr %33, align 8
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %91, align 8
  %92 = load ptr, ptr %61, align 4
  %93 = getelementptr inbounds %struct.lgs8gxx_config, ptr %92, i32 0, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %33, align 8
  %96 = load i32, ptr @debug, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %84
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 0) #10
  br label %100

100:                                              ; preds = %98, %84
  %101 = load ptr, ptr %39, align 4
  %102 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %33, i32 noundef 1) #9
  %103 = icmp ne i32 %102, 1
  %104 = load i32, ptr @debug, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 0, i32 noundef %102) #10
  %109 = load i32, ptr @debug, align 4
  br label %110

110:                                              ; preds = %107, %100
  %111 = phi i32 [ %104, %100 ], [ %109, %107 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #9
  store i8 61, ptr %30, align 2
  %112 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 4, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #9
  store i64 8589934592, ptr %31, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %113, align 8
  %114 = load ptr, ptr %61, align 4
  %115 = getelementptr inbounds %struct.lgs8gxx_config, ptr %114, i32 0, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %31, align 8
  %118 = icmp sgt i32 %111, 1
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 4) #10
  br label %121

121:                                              ; preds = %119, %110
  %122 = load ptr, ptr %39, align 4
  %123 = call i32 @i2c_transfer(ptr noundef %122, ptr noundef nonnull %31, i32 noundef 1) #9
  %124 = icmp ne i32 %123, 1
  %125 = load i32, ptr @debug, align 4
  %126 = icmp ne i32 %125, 0
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 4, i32 noundef %123) #10
  br label %130

130:                                              ; preds = %128, %121
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #9
  br label %140

131:                                              ; preds = %60, %60, %60, %60
  %132 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 126, ptr noundef nonnull %34) #9
  %133 = load i8, ptr %34, align 1
  %134 = or i8 %133, 1
  %135 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext 126, i8 noundef zeroext %134) #9
  %136 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext -59, ptr noundef nonnull %34) #9
  %137 = load i8, ptr %34, align 1
  %138 = and i8 %137, -32
  %139 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -59, i8 noundef zeroext %138) #9
  br label %140

140:                                              ; preds = %131, %130, %64, %60
  %141 = load ptr, ptr %61, align 4
  %142 = load i8, ptr %141, align 4
  %143 = icmp eq i8 %142, 4
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -39, i8 noundef zeroext 64) #9
  %146 = load ptr, ptr %61, align 4
  %147 = load i8, ptr %146, align 4
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i8 [ %142, %140 ], [ %147, %144 ]
  %150 = phi ptr [ %141, %140 ], [ %146, %144 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #9
  %151 = icmp eq i8 %149, 6
  br i1 %151, label %152, label %193

152:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #9
  store i8 103, ptr %28, align 2
  %153 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 -86, ptr %153, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #9
  store i64 8589934592, ptr %29, align 8
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %154, align 8
  %155 = getelementptr inbounds %struct.lgs8gxx_config, ptr %150, i32 0, i32 1
  %156 = load i8, ptr %155, align 1
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %29, align 8
  %158 = load i32, ptr @debug, align 4
  %159 = icmp sgt i32 %158, 1
  br i1 %159, label %160, label %162

160:                                              ; preds = %152
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 103, i32 noundef 170) #10
  br label %162

162:                                              ; preds = %160, %152
  %163 = load ptr, ptr %39, align 4
  %164 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %29, i32 noundef 1) #9
  %165 = icmp ne i32 %164, 1
  %166 = load i32, ptr @debug, align 4
  %167 = icmp ne i32 %166, 0
  %168 = select i1 %165, i1 %167, i1 false
  br i1 %168, label %169, label %172

169:                                              ; preds = %162
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 103, i32 noundef 170, i32 noundef %164) #10
  %171 = load i32, ptr @debug, align 4
  br label %172

172:                                              ; preds = %169, %162
  %173 = phi i32 [ %166, %162 ], [ %171, %169 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  store i8 110, ptr %26, align 2
  %174 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 63, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  store i64 8589934592, ptr %27, align 8
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %175, align 8
  %176 = load ptr, ptr %61, align 4
  %177 = getelementptr inbounds %struct.lgs8gxx_config, ptr %176, i32 0, i32 1
  %178 = load i8, ptr %177, align 1
  %179 = zext i8 %178 to i16
  store i16 %179, ptr %27, align 8
  %180 = icmp sgt i32 %173, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %172
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 110, i32 noundef 63) #10
  br label %183

183:                                              ; preds = %181, %172
  %184 = load ptr, ptr %39, align 4
  %185 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %27, i32 noundef 1) #9
  %186 = icmp ne i32 %185, 1
  %187 = load i32, ptr @debug, align 4
  %188 = icmp ne i32 %187, 0
  %189 = select i1 %186, i1 %188, i1 false
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 110, i32 noundef 63, i32 noundef %185) #10
  br label %192

192:                                              ; preds = %190, %183
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  br label %213

193:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i8 3, ptr %24, align 2
  %194 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 0, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  store i64 8589934592, ptr %25, align 8
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %195, align 8
  %196 = getelementptr inbounds %struct.lgs8gxx_config, ptr %150, i32 0, i32 1
  %197 = load i8, ptr %196, align 1
  %198 = zext i8 %197 to i16
  store i16 %198, ptr %25, align 8
  %199 = load i32, ptr @debug, align 4
  %200 = icmp sgt i32 %199, 1
  br i1 %200, label %201, label %203

201:                                              ; preds = %193
  %202 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 3, i32 noundef 0) #10
  br label %203

203:                                              ; preds = %201, %193
  %204 = load ptr, ptr %39, align 4
  %205 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %25, i32 noundef 1) #9
  %206 = icmp ne i32 %205, 1
  %207 = load i32, ptr @debug, align 4
  %208 = icmp ne i32 %207, 0
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %210, label %212

210:                                              ; preds = %203
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 3, i32 noundef 0, i32 noundef %205) #10
  br label %212

212:                                              ; preds = %210, %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  br label %213

213:                                              ; preds = %212, %192
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %35) #9
  %214 = load i8, ptr %35, align 1
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %231, label %243

216:                                              ; preds = %240
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull %35) #9
  %217 = load i8, ptr %35, align 1
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %243

219:                                              ; preds = %216
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %35) #9
  %220 = load i8, ptr %35, align 1
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %243

222:                                              ; preds = %219
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %35) #9
  %223 = load i8, ptr %35, align 1
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %243

225:                                              ; preds = %222
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %35) #9
  %226 = load i8, ptr %35, align 1
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %225
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %35) #9
  %229 = load i8, ptr %35, align 1
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %274, label %243

231:                                              ; preds = %213
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 2, i8 noundef zeroext 1, ptr noundef nonnull %35) #9
  %232 = load i8, ptr %35, align 1
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %231
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %35) #9
  %235 = load i8, ptr %35, align 1
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %35) #9
  %238 = load i8, ptr %35, align 1
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  call fastcc void @lgs8gxx_autolock_gi(ptr noundef %39, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef nonnull %35) #9
  %241 = load i8, ptr %35, align 1
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %216, label %243

243:                                              ; preds = %240, %237, %234, %231, %228, %225, %222, %219, %216, %213
  %244 = phi i8 [ %235, %234 ], [ %238, %237 ], [ %223, %222 ], [ %226, %225 ], [ %214, %213 ], [ %232, %231 ], [ %217, %216 ], [ %220, %219 ], [ %241, %240 ], [ %229, %228 ]
  %245 = phi i8 [ 0, %234 ], [ 0, %237 ], [ 0, %222 ], [ 0, %225 ], [ 2, %213 ], [ 2, %231 ], [ 2, %216 ], [ 2, %219 ], [ 1, %240 ], [ 1, %228 ]
  %246 = icmp eq i8 %244, 1
  br i1 %246, label %247, label %279

247:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %36) #9
  store i8 0, ptr %36, align 1, !annotation !8
  %248 = load ptr, ptr %61, align 4
  %249 = load i8, ptr %248, align 4
  %250 = icmp eq i8 %249, 6
  br i1 %250, label %254, label %251

251:                                              ; preds = %247
  %252 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext -94, ptr noundef nonnull %36) #9
  %253 = load i8, ptr %36, align 1
  br label %258

254:                                              ; preds = %247
  %255 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 31, ptr noundef nonnull %36) #9
  %256 = load i8, ptr %36, align 1
  %257 = and i8 %256, 63
  br label %258

258:                                              ; preds = %254, %251
  %259 = phi i8 [ %257, %254 ], [ %253, %251 ]
  %260 = trunc i8 %245 to i2
  switch i2 %260, label %267 [
    i2 -2, label %261
    i2 1, label %264
  ]

261:                                              ; preds = %258
  %262 = load i32, ptr @debug, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %273, label %270

264:                                              ; preds = %258
  %265 = load i32, ptr @debug, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %273, label %270

267:                                              ; preds = %258
  %268 = load i32, ptr @debug, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %267, %264, %261
  %271 = phi ptr [ @.str.13, %261 ], [ @.str.14, %264 ], [ @.str.15, %267 ]
  %272 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %271) #10
  br label %273

273:                                              ; preds = %270, %267, %264, %261
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %36) #9
  br label %279

274:                                              ; preds = %228
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #9
  %275 = load i32, ptr @debug, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %287, label %277

277:                                              ; preds = %274
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %287

279:                                              ; preds = %273, %243
  %280 = phi i8 [ 2, %243 ], [ %245, %273 ]
  %281 = phi i8 [ 0, %243 ], [ %259, %273 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %35) #9
  %282 = load i32, ptr @debug, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %279
  %285 = zext i8 %281 to i32
  %286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %285) #10
  br label %287

287:                                              ; preds = %284, %279, %277, %274
  %288 = phi i8 [ %281, %279 ], [ %281, %284 ], [ 0, %274 ], [ 0, %277 ]
  %289 = phi i8 [ %280, %279 ], [ %280, %284 ], [ 2, %274 ], [ 2, %277 ]
  %290 = load ptr, ptr %61, align 4
  %291 = load i8, ptr %290, align 4
  switch i8 %291, label %302 [
    i8 0, label %292
    i8 6, label %295
  ]

292:                                              ; preds = %287
  %293 = and i8 %288, -65
  %294 = xor i8 %293, 96
  br label %302

295:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37) #9
  store i8 0, ptr %37, align 1, !annotation !8
  %296 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 25, ptr noundef nonnull %37) #9
  %297 = load i8, ptr %37, align 1
  %298 = and i8 %297, -127
  %299 = shl i8 %288, 1
  %300 = or i8 %298, %299
  %301 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext 25, i8 noundef zeroext %300) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37) #9
  br label %310

302:                                              ; preds = %292, %287
  %303 = phi i8 [ %294, %292 ], [ %288, %287 ]
  %304 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext 125, i8 noundef zeroext %303) #9
  %305 = load ptr, ptr %61, align 4
  %306 = load i8, ptr %305, align 4
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %302
  %309 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -64, i8 noundef zeroext %303) #9
  br label %310

310:                                              ; preds = %308, %302, %295
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #9
  store i8 0, ptr %22, align 1, !annotation !8
  %311 = load ptr, ptr %61, align 4
  %312 = load i8, ptr %311, align 4
  %313 = icmp eq i8 %312, 6
  br i1 %313, label %314, label %518

314:                                              ; preds = %310
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #9
  store i8 0, ptr %23, align 1, !annotation !8
  %315 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 12, ptr noundef nonnull %22) #9
  %316 = load i8, ptr %22, align 1
  %317 = and i8 %316, 127
  store i8 %317, ptr %22, align 1
  %318 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext 12, i8 noundef zeroext %317) #9
  %319 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 12, ptr noundef nonnull %22) #9
  %320 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext 25, ptr noundef nonnull %23) #9
  %321 = load i8, ptr %22, align 1
  %322 = and i8 %321, 3
  %323 = icmp eq i8 %322, 1
  br i1 %323, label %324, label %454

324:                                              ; preds = %314
  %325 = load i8, ptr %23, align 1
  %326 = and i8 %325, 1
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %454, label %328

328:                                              ; preds = %324
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 110, ptr %20, align 2
  %329 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 5, ptr %329, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  store i64 8589934592, ptr %21, align 8
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %330, align 8
  %331 = load ptr, ptr %61, align 4
  %332 = getelementptr inbounds %struct.lgs8gxx_config, ptr %331, i32 0, i32 1
  %333 = load i8, ptr %332, align 1
  %334 = zext i8 %333 to i16
  store i16 %334, ptr %21, align 8
  %335 = load i32, ptr @debug, align 4
  %336 = icmp sgt i32 %335, 1
  br i1 %336, label %337, label %339

337:                                              ; preds = %328
  %338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 110, i32 noundef 5) #10
  br label %339

339:                                              ; preds = %337, %328
  %340 = load ptr, ptr %39, align 4
  %341 = call i32 @i2c_transfer(ptr noundef %340, ptr noundef nonnull %21, i32 noundef 1) #9
  %342 = icmp ne i32 %341, 1
  %343 = load i32, ptr @debug, align 4
  %344 = icmp ne i32 %343, 0
  %345 = select i1 %342, i1 %344, i1 false
  br i1 %345, label %346, label %349

346:                                              ; preds = %339
  %347 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 110, i32 noundef 5, i32 noundef %341) #10
  %348 = load i32, ptr @debug, align 4
  br label %349

349:                                              ; preds = %346, %339
  %350 = phi i32 [ %343, %339 ], [ %348, %346 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 57, ptr %18, align 2
  %351 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 2, ptr %351, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  store i64 8589934592, ptr %19, align 8
  %352 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %352, align 8
  %353 = load ptr, ptr %61, align 4
  %354 = getelementptr inbounds %struct.lgs8gxx_config, ptr %353, i32 0, i32 1
  %355 = load i8, ptr %354, align 1
  %356 = zext i8 %355 to i16
  store i16 %356, ptr %19, align 8
  %357 = icmp sgt i32 %350, 1
  br i1 %357, label %358, label %360

358:                                              ; preds = %349
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 2) #10
  br label %360

360:                                              ; preds = %358, %349
  %361 = load ptr, ptr %39, align 4
  %362 = call i32 @i2c_transfer(ptr noundef %361, ptr noundef nonnull %19, i32 noundef 1) #9
  %363 = icmp ne i32 %362, 1
  %364 = load i32, ptr @debug, align 4
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %363, i1 %365, i1 false
  br i1 %366, label %367, label %370

367:                                              ; preds = %360
  %368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 2, i32 noundef %362) #10
  %369 = load i32, ptr @debug, align 4
  br label %370

370:                                              ; preds = %367, %360
  %371 = phi i32 [ %364, %360 ], [ %369, %367 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 57, ptr %16, align 2
  %372 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 3, ptr %372, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  store i64 8589934592, ptr %17, align 8
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %373, align 8
  %374 = load ptr, ptr %61, align 4
  %375 = getelementptr inbounds %struct.lgs8gxx_config, ptr %374, i32 0, i32 1
  %376 = load i8, ptr %375, align 1
  %377 = zext i8 %376 to i16
  store i16 %377, ptr %17, align 8
  %378 = icmp sgt i32 %371, 1
  br i1 %378, label %379, label %381

379:                                              ; preds = %370
  %380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 3) #10
  br label %381

381:                                              ; preds = %379, %370
  %382 = load ptr, ptr %39, align 4
  %383 = call i32 @i2c_transfer(ptr noundef %382, ptr noundef nonnull %17, i32 noundef 1) #9
  %384 = icmp ne i32 %383, 1
  %385 = load i32, ptr @debug, align 4
  %386 = icmp ne i32 %385, 0
  %387 = select i1 %384, i1 %386, i1 false
  br i1 %387, label %388, label %391

388:                                              ; preds = %381
  %389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 3, i32 noundef %383) #10
  %390 = load i32, ptr @debug, align 4
  br label %391

391:                                              ; preds = %388, %381
  %392 = phi i32 [ %385, %381 ], [ %390, %388 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 61, ptr %14, align 2
  %393 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 5, ptr %393, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i64 8589934592, ptr %15, align 8
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %394, align 8
  %395 = load ptr, ptr %61, align 4
  %396 = getelementptr inbounds %struct.lgs8gxx_config, ptr %395, i32 0, i32 1
  %397 = load i8, ptr %396, align 1
  %398 = zext i8 %397 to i16
  store i16 %398, ptr %15, align 8
  %399 = icmp sgt i32 %392, 1
  br i1 %399, label %400, label %402

400:                                              ; preds = %391
  %401 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 5) #10
  br label %402

402:                                              ; preds = %400, %391
  %403 = load ptr, ptr %39, align 4
  %404 = call i32 @i2c_transfer(ptr noundef %403, ptr noundef nonnull %15, i32 noundef 1) #9
  %405 = icmp ne i32 %404, 1
  %406 = load i32, ptr @debug, align 4
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %405, i1 %407, i1 false
  br i1 %408, label %409, label %412

409:                                              ; preds = %402
  %410 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 5, i32 noundef %404) #10
  %411 = load i32, ptr @debug, align 4
  br label %412

412:                                              ; preds = %409, %402
  %413 = phi i32 [ %406, %402 ], [ %411, %409 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 62, ptr %12, align 2
  %414 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 40, ptr %414, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  store i64 8589934592, ptr %13, align 8
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %415, align 8
  %416 = load ptr, ptr %61, align 4
  %417 = getelementptr inbounds %struct.lgs8gxx_config, ptr %416, i32 0, i32 1
  %418 = load i8, ptr %417, align 1
  %419 = zext i8 %418 to i16
  store i16 %419, ptr %13, align 8
  %420 = icmp sgt i32 %413, 1
  br i1 %420, label %421, label %423

421:                                              ; preds = %412
  %422 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 62, i32 noundef 40) #10
  br label %423

423:                                              ; preds = %421, %412
  %424 = load ptr, ptr %39, align 4
  %425 = call i32 @i2c_transfer(ptr noundef %424, ptr noundef nonnull %13, i32 noundef 1) #9
  %426 = icmp ne i32 %425, 1
  %427 = load i32, ptr @debug, align 4
  %428 = icmp ne i32 %427, 0
  %429 = select i1 %426, i1 %428, i1 false
  br i1 %429, label %430, label %433

430:                                              ; preds = %423
  %431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 62, i32 noundef 40, i32 noundef %425) #10
  %432 = load i32, ptr @debug, align 4
  br label %433

433:                                              ; preds = %430, %423
  %434 = phi i32 [ %427, %423 ], [ %432, %430 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 83, ptr %10, align 2
  %435 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 -128, ptr %435, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  store i64 8589934592, ptr %11, align 8
  %436 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %436, align 8
  %437 = load ptr, ptr %61, align 4
  %438 = getelementptr inbounds %struct.lgs8gxx_config, ptr %437, i32 0, i32 1
  %439 = load i8, ptr %438, align 1
  %440 = zext i8 %439 to i16
  store i16 %440, ptr %11, align 8
  %441 = icmp sgt i32 %434, 1
  br i1 %441, label %442, label %444

442:                                              ; preds = %433
  %443 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 83, i32 noundef 128) #10
  br label %444

444:                                              ; preds = %442, %433
  %445 = load ptr, ptr %39, align 4
  %446 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %11, i32 noundef 1) #9
  %447 = icmp ne i32 %446, 1
  %448 = load i32, ptr @debug, align 4
  %449 = icmp ne i32 %448, 0
  %450 = select i1 %447, i1 %449, i1 false
  br i1 %450, label %451, label %453

451:                                              ; preds = %444
  %452 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 83, i32 noundef 128, i32 noundef %446) #10
  br label %453

453:                                              ; preds = %451, %444
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  br label %517

454:                                              ; preds = %324, %314
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 110, ptr %8, align 2
  %455 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 63, ptr %455, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  store i64 8589934592, ptr %9, align 8
  %456 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %456, align 8
  %457 = load ptr, ptr %61, align 4
  %458 = getelementptr inbounds %struct.lgs8gxx_config, ptr %457, i32 0, i32 1
  %459 = load i8, ptr %458, align 1
  %460 = zext i8 %459 to i16
  store i16 %460, ptr %9, align 8
  %461 = load i32, ptr @debug, align 4
  %462 = icmp sgt i32 %461, 1
  br i1 %462, label %463, label %465

463:                                              ; preds = %454
  %464 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 110, i32 noundef 63) #10
  br label %465

465:                                              ; preds = %463, %454
  %466 = load ptr, ptr %39, align 4
  %467 = call i32 @i2c_transfer(ptr noundef %466, ptr noundef nonnull %9, i32 noundef 1) #9
  %468 = icmp ne i32 %467, 1
  %469 = load i32, ptr @debug, align 4
  %470 = icmp ne i32 %469, 0
  %471 = select i1 %468, i1 %470, i1 false
  br i1 %471, label %472, label %475

472:                                              ; preds = %465
  %473 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 110, i32 noundef 63, i32 noundef %467) #10
  %474 = load i32, ptr @debug, align 4
  br label %475

475:                                              ; preds = %472, %465
  %476 = phi i32 [ %469, %465 ], [ %474, %472 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 57, ptr %6, align 2
  %477 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %477, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  store i64 8589934592, ptr %7, align 8
  %478 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %478, align 8
  %479 = load ptr, ptr %61, align 4
  %480 = getelementptr inbounds %struct.lgs8gxx_config, ptr %479, i32 0, i32 1
  %481 = load i8, ptr %480, align 1
  %482 = zext i8 %481 to i16
  store i16 %482, ptr %7, align 8
  %483 = icmp sgt i32 %476, 1
  br i1 %483, label %484, label %486

484:                                              ; preds = %475
  %485 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 0) #10
  br label %486

486:                                              ; preds = %484, %475
  %487 = load ptr, ptr %39, align 4
  %488 = call i32 @i2c_transfer(ptr noundef %487, ptr noundef nonnull %7, i32 noundef 1) #9
  %489 = icmp ne i32 %488, 1
  %490 = load i32, ptr @debug, align 4
  %491 = icmp ne i32 %490, 0
  %492 = select i1 %489, i1 %491, i1 false
  br i1 %492, label %493, label %496

493:                                              ; preds = %486
  %494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 57, i32 noundef 0, i32 noundef %488) #10
  %495 = load i32, ptr @debug, align 4
  br label %496

496:                                              ; preds = %493, %486
  %497 = phi i32 [ %490, %486 ], [ %495, %493 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 61, ptr %4, align 2
  %498 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 4, ptr %498, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store i64 8589934592, ptr %5, align 8
  %499 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %499, align 8
  %500 = load ptr, ptr %61, align 4
  %501 = getelementptr inbounds %struct.lgs8gxx_config, ptr %500, i32 0, i32 1
  %502 = load i8, ptr %501, align 1
  %503 = zext i8 %502 to i16
  store i16 %503, ptr %5, align 8
  %504 = icmp sgt i32 %497, 1
  br i1 %504, label %505, label %507

505:                                              ; preds = %496
  %506 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 4) #10
  br label %507

507:                                              ; preds = %505, %496
  %508 = load ptr, ptr %39, align 4
  %509 = call i32 @i2c_transfer(ptr noundef %508, ptr noundef nonnull %5, i32 noundef 1) #9
  %510 = icmp ne i32 %509, 1
  %511 = load i32, ptr @debug, align 4
  %512 = icmp ne i32 %511, 0
  %513 = select i1 %510, i1 %512, i1 false
  br i1 %513, label %514, label %516

514:                                              ; preds = %507
  %515 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 61, i32 noundef 4, i32 noundef %509) #10
  br label %516

516:                                              ; preds = %514, %507
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %517

517:                                              ; preds = %516, %453
  call fastcc void @lgs8gxx_soft_reset(ptr noundef %39) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #9
  br label %549

518:                                              ; preds = %310
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 126, ptr %2, align 2
  %519 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %519, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i64 8589934592, ptr %3, align 8
  %520 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %520, align 8
  %521 = getelementptr inbounds %struct.lgs8gxx_config, ptr %311, i32 0, i32 1
  %522 = load i8, ptr %521, align 1
  %523 = zext i8 %522 to i16
  store i16 %523, ptr %3, align 8
  %524 = load i32, ptr @debug, align 4
  %525 = icmp sgt i32 %524, 1
  br i1 %525, label %526, label %528

526:                                              ; preds = %518
  %527 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 126, i32 noundef 0) #10
  br label %528

528:                                              ; preds = %526, %518
  %529 = load ptr, ptr %39, align 4
  %530 = call i32 @i2c_transfer(ptr noundef %529, ptr noundef nonnull %3, i32 noundef 1) #9
  %531 = icmp ne i32 %530, 1
  %532 = load i32, ptr @debug, align 4
  %533 = icmp ne i32 %532, 0
  %534 = select i1 %531, i1 %533, i1 false
  br i1 %534, label %535, label %537

535:                                              ; preds = %528
  %536 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 126, i32 noundef 0, i32 noundef %530) #10
  br label %537

537:                                              ; preds = %535, %528
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %538 = load ptr, ptr %61, align 4
  %539 = load i8, ptr %538, align 4
  %540 = icmp eq i8 %539, 0
  br i1 %540, label %541, label %543

541:                                              ; preds = %537
  %542 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -63, i8 noundef zeroext 0) #9
  br label %543

543:                                              ; preds = %541, %537
  %544 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %39, i8 noundef zeroext -59, ptr noundef nonnull %22) #9
  %545 = load i8, ptr %22, align 1
  %546 = and i8 %545, -32
  %547 = or i8 %546, 6
  %548 = call fastcc i32 @lgs8gxx_write_reg(ptr noundef %39, i8 noundef zeroext -59, i8 noundef zeroext %547) #9
  call fastcc void @lgs8gxx_soft_reset(ptr noundef %39) #9
  br label %549

549:                                              ; preds = %543, %517
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #9
  %550 = icmp eq i8 %289, 1
  %551 = select i1 %550, i16 595, i16 945
  %552 = icmp eq i8 %289, 0
  %553 = select i1 %552, i16 420, i16 %551
  %554 = getelementptr inbounds %struct.lgs8gxx_state, ptr %39, i32 0, i32 3
  store i16 %553, ptr %554, align 4
  call void @msleep(i32 noundef 10) #9
  %555 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  store i32 8000000, ptr %555, align 4
  %556 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 11
  store i32 9, ptr %556, align 4
  %557 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 12
  store i32 9, ptr %557, align 4
  %558 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  store i32 6, ptr %558, align 4
  %559 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  store i32 2, ptr %559, align 4
  %560 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  store i32 4, ptr %560, align 4
  %561 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 9
  store i32 0, ptr %561, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgs8gxx_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #6 {
  store i32 800, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8gxx_read_status) #10
  br label %12

12:                                               ; preds = %10, %2
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %13 = getelementptr inbounds %struct.lgs8gxx_state, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 6
  %17 = select i1 %16, i8 35, i8 72
  %18 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %17, ptr noundef nonnull %4) #9
  %19 = load i8, ptr %4, align 1
  %20 = add nsw i8 %17, -1
  %21 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %20, ptr noundef nonnull %4) #9
  %22 = load i8, ptr %4, align 1
  %23 = add nsw i8 %17, -2
  %24 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %23, ptr noundef nonnull %4) #9
  %25 = load i8, ptr %4, align 1
  %26 = add nsw i8 %17, -3
  %27 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %26, ptr noundef nonnull %4) #9
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %12
  %31 = zext i8 %19 to i32
  %32 = shl nuw nsw i32 %31, 16
  %33 = zext i8 %22 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %32
  %36 = zext i8 %25 to i32
  %37 = or i32 %35, %36
  %38 = shl nuw i32 %37, 8
  %39 = load i8, ptr %4, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = zext i32 %41 to i64
  %43 = load ptr, ptr %13, align 4
  %44 = getelementptr inbounds %struct.lgs8gxx_config, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = mul nuw i64 %46, %42
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %49) #10
  br label %51

51:                                               ; preds = %30, %12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  %52 = load ptr, ptr %13, align 4
  %53 = load i8, ptr %52, align 4
  %54 = icmp eq i8 %53, 6
  %55 = select i1 %54, i8 19, i8 75
  %56 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %55, ptr noundef nonnull %3) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load ptr, ptr %13, align 4
  %60 = load i8, ptr %59, align 4
  %61 = load i8, ptr %3, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %62 = icmp eq i8 %60, 6
  br i1 %62, label %67, label %72

63:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %64 = load ptr, ptr %13, align 4
  %65 = load i8, ptr %64, align 4
  %66 = icmp eq i8 %65, 6
  br i1 %66, label %107, label %72

67:                                               ; preds = %58
  %68 = icmp sgt i8 %61, -1
  br i1 %68, label %107, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %1, align 4
  %71 = or i32 %70, 31
  store i32 %71, ptr %1, align 4
  br label %107

72:                                               ; preds = %63, %58
  %73 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext 75, ptr noundef nonnull %5)
  %74 = and i32 %73, 255
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %72
  %77 = load i32, ptr @debug, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i8, ptr %5, align 1
  %81 = zext i8 %80 to i32
  %82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %81) #10
  br label %83

83:                                               ; preds = %79, %76
  store i32 0, ptr %1, align 4
  %84 = load ptr, ptr %13, align 4
  %85 = load i8, ptr %84, align 4
  %86 = icmp eq i8 %85, 0
  %87 = load i8, ptr %5, align 1
  br i1 %86, label %88, label %97

88:                                               ; preds = %83
  %89 = and i8 %87, 64
  %90 = icmp eq i8 %89, 0
  %91 = select i1 %90, i32 0, i32 3
  %92 = icmp slt i8 %87, 0
  %93 = or i32 %91, 28
  %94 = select i1 %92, i32 %93, i32 %91
  %95 = xor i1 %90, true
  %96 = or i1 %92, %95
  br i1 %96, label %99, label %101

97:                                               ; preds = %83
  %98 = icmp slt i8 %87, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %97, %88
  %100 = phi i32 [ 31, %97 ], [ %94, %88 ]
  store i32 %100, ptr %1, align 4
  br label %101

101:                                              ; preds = %99, %97, %88
  %102 = phi i32 [ 0, %97 ], [ %94, %88 ], [ %100, %99 ]
  %103 = load i32, ptr @debug, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.lgs8gxx_read_status, i32 noundef %102) #10
  br label %107

107:                                              ; preds = %105, %101, %72, %69, %67, %63
  %108 = phi i32 [ 0, %69 ], [ 0, %67 ], [ -5, %72 ], [ 0, %105 ], [ 0, %101 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret i32 %108
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %8 = load i32, ptr @debug, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8gxx_read_ber) #10
  br label %12

12:                                               ; preds = %10, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %13 = getelementptr inbounds %struct.lgs8gxx_state, ptr %7, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 6
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext 48, ptr noundef nonnull %4) #9
  %19 = load i8, ptr %4, align 1
  %20 = and i8 %19, -25
  %21 = or i8 %20, 16
  %22 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext 48, i8 noundef zeroext %21) #9
  %23 = or i8 %19, 24
  %24 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext 48, i8 noundef zeroext %23) #9
  %25 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext 48, i8 noundef zeroext %21) #9
  br label %30

26:                                               ; preds = %12
  %27 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext -58, i8 noundef zeroext 1) #9
  %28 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext -58, i8 noundef zeroext 65) #9
  %29 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext -58, i8 noundef zeroext 1) #9
  br label %30

30:                                               ; preds = %26, %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  tail call void @msleep(i32 noundef 200) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  %31 = load ptr, ptr %13, align 4
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 6
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext 48, ptr noundef nonnull %3) #9
  %36 = load i8, ptr %3, align 1
  %37 = and i8 %36, -25
  %38 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext 48, i8 noundef zeroext %37) #9
  br label %41

39:                                               ; preds = %30
  %40 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %7, i8 noundef zeroext -58, i8 noundef zeroext -127) #9
  br label %41

41:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %42 = load ptr, ptr %13, align 4
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 6
  %45 = select i1 %44, i32 43, i32 211
  %46 = trunc i32 %45 to i8
  %47 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %46, ptr noundef nonnull %5)
  %48 = load i8, ptr %5, align 1
  %49 = zext i8 %48 to i32
  %50 = trunc i32 %45 to i8
  %51 = add nsw i8 %50, -1
  %52 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %51, ptr noundef nonnull %5)
  %53 = load i8, ptr %5, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %49, 16
  %56 = shl nuw nsw i32 %54, 8
  %57 = or i32 %55, %56
  %58 = trunc i32 %45 to i8
  %59 = add nsw i8 %58, -2
  %60 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %59, ptr noundef nonnull %5)
  %61 = load i8, ptr %5, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %57, %62
  %64 = trunc i32 %45 to i8
  %65 = add nsw i8 %64, -3
  %66 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %65, ptr noundef nonnull %5)
  %67 = load i8, ptr %5, align 1
  %68 = zext i8 %67 to i32
  %69 = select i1 %44, i32 47, i32 215
  %70 = trunc i32 %69 to i8
  %71 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %70, ptr noundef nonnull %5)
  %72 = load i8, ptr %5, align 1
  %73 = zext i8 %72 to i32
  %74 = trunc i32 %69 to i8
  %75 = add nsw i8 %74, -1
  %76 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %75, ptr noundef nonnull %5)
  %77 = load i8, ptr %5, align 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %73, 16
  %80 = shl nuw nsw i32 %78, 8
  %81 = or i32 %79, %80
  %82 = trunc i32 %69 to i8
  %83 = add nsw i8 %82, -2
  %84 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %83, ptr noundef nonnull %5)
  %85 = load i8, ptr %5, align 1
  %86 = zext i8 %85 to i32
  %87 = or i32 %81, %86
  %88 = shl nuw i32 %87, 8
  %89 = trunc i32 %69 to i8
  %90 = add nsw i8 %89, -3
  %91 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %7, i8 noundef zeroext %90, ptr noundef nonnull %5)
  %92 = load i8, ptr %5, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %88, %93
  %95 = shl nuw i32 %63, 8
  %96 = or i32 %95, %68
  %97 = load i32, ptr @debug, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %41
  %100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %94, i32 noundef %96) #10
  br label %101

101:                                              ; preds = %99, %41
  %102 = icmp eq i32 %96, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %101
  %104 = mul i32 %94, 100
  %105 = udiv i32 %104, %96
  br label %106

106:                                              ; preds = %103, %101
  %107 = phi i32 [ %105, %103 ], [ 0, %101 ]
  store i32 %107, ptr %1, align 4
  %108 = load i32, ptr @debug, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.lgs8gxx_read_ber, i32 noundef %107) #10
  br label %112

112:                                              ; preds = %110, %106
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_signal_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lgs8gxx_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i8, ptr %10, align 4
  switch i8 %11, label %100 [
    i8 0, label %12
    i8 6, label %80
  ]

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  %13 = getelementptr inbounds %struct.lgs8gxx_state, ptr %8, i32 0, i32 3
  %14 = load i16, ptr %13, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8913_read_signal_strength) #10
  br label %19

19:                                               ; preds = %17, %12
  %20 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext 75, ptr noundef nonnull %5) #9
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %78

23:                                               ; preds = %19
  %24 = load i32, ptr @fake_signal_str, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %5, align 1
  %28 = icmp ugt i8 %27, -65
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #10
  br label %34

34:                                               ; preds = %32, %29, %26
  %35 = phi i16 [ 32767, %32 ], [ 32767, %29 ], [ 0, %26 ]
  store i16 %35, ptr %1, align 2
  br label %78

36:                                               ; preds = %23
  %37 = load i32, ptr @debug, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = zext i16 %14 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %40) #10
  br label %42

42:                                               ; preds = %39, %36
  %43 = icmp eq i16 %14, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %54, %42
  %45 = phi i16 [ %60, %54 ], [ 0, %42 ]
  %46 = phi i16 [ %61, %54 ], [ 0, %42 ]
  %47 = and i16 %46, 255
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = lshr i16 %46, 8
  %51 = trunc i16 %50 to i8
  %52 = and i8 %51, 3
  %53 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext -124, i8 noundef zeroext %52) #9
  br label %54

54:                                               ; preds = %49, %44
  %55 = trunc i16 %46 to i8
  %56 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %8, i8 noundef zeroext -125, i8 noundef zeroext %55) #9
  %57 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext -108, ptr noundef nonnull %6) #9
  %58 = load i8, ptr %6, align 1
  %59 = zext i8 %58 to i16
  %60 = tail call i16 @llvm.umax.i16(i16 %45, i16 %59) #9
  %61 = add nuw i16 %46, 1
  %62 = icmp ult i16 %61, %14
  br i1 %62, label %44, label %63

63:                                               ; preds = %54, %42
  %64 = phi i16 [ 0, %42 ], [ %60, %54 ]
  store i16 %64, ptr %1, align 2
  %65 = load i32, ptr @debug, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = zext i16 %64 to i32
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.lgs8913_read_signal_strength, i32 noundef %68) #10
  br label %70

70:                                               ; preds = %67, %63
  %71 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext -107, ptr noundef nonnull %5) #9
  %72 = load i32, ptr @debug, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8, ptr %5, align 1
  %76 = zext i8 %75 to i32
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.lgs8913_read_signal_strength, i32 noundef %76) #10
  br label %78

78:                                               ; preds = %74, %70, %34, %19
  %79 = phi i32 [ 0, %34 ], [ -5, %19 ], [ 0, %74 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  br label %135

80:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 0, ptr %4, align 1, !annotation !8
  %81 = load i32, ptr @debug, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.lgs8g75_read_signal_strength) #10
  br label %85

85:                                               ; preds = %83, %80
  %86 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext -79, ptr noundef nonnull %4) #9
  %87 = load i8, ptr %4, align 1
  %88 = zext i8 %87 to i16
  %89 = shl nuw i16 %88, 8
  %90 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext -80, ptr noundef nonnull %4) #9
  %91 = load i8, ptr %4, align 1
  %92 = zext i8 %91 to i16
  %93 = or i16 %89, %92
  store i16 %93, ptr %1, align 2
  %94 = load i32, ptr @debug, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %85
  %97 = zext i16 %93 to i32
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.lgs8g75_read_signal_strength, i32 noundef %97) #10
  br label %99

99:                                               ; preds = %96, %85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  br label %135

100:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i16 0, ptr %3, align 2, !annotation !8
  %101 = load i32, ptr @debug, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %100
  %104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lgs8gxx_read_signal_agc) #10
  br label %105

105:                                              ; preds = %103, %100
  %106 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext 63, ptr noundef nonnull %3) #9
  %107 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %108 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %8, i8 noundef zeroext 62, ptr noundef %107) #9
  %109 = load i8, ptr %3, align 2
  %110 = zext i8 %109 to i16
  %111 = shl nuw i16 %110, 8
  %112 = load i8, ptr %107, align 1
  %113 = zext i8 %112 to i16
  %114 = or i16 %111, %113
  %115 = load i32, ptr @debug, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %105
  %118 = zext i16 %114 to i32
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %118) #10
  br label %120

120:                                              ; preds = %117, %105
  %121 = icmp ult i16 %114, 256
  br i1 %121, label %133, label %122

122:                                              ; preds = %120
  %123 = icmp ult i16 %114, 400
  br i1 %123, label %133, label %124

124:                                              ; preds = %122
  %125 = icmp ult i16 %114, 680
  br i1 %125, label %133, label %126

126:                                              ; preds = %124
  %127 = icmp ult i16 %114, 897
  br i1 %127, label %133, label %128

128:                                              ; preds = %126
  %129 = icmp ult i16 %114, 1024
  br i1 %129, label %133, label %130

130:                                              ; preds = %128
  %131 = icmp eq i16 %114, 1024
  %132 = select i1 %131, i16 13107, i16 0
  br label %133

133:                                              ; preds = %130, %128, %126, %124, %122, %120
  %134 = phi i16 [ 0, %120 ], [ -1, %122 ], [ -13108, %124 ], [ -26215, %126 ], [ 26214, %128 ], [ %132, %130 ]
  store i16 %134, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %135

135:                                              ; preds = %133, %99, %78
  %136 = phi i32 [ %79, %78 ], [ 0, %99 ], [ 0, %133 ]
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  store i16 0, ptr %1, align 2
  %6 = getelementptr inbounds %struct.lgs8gxx_state, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load i8, ptr %7, align 4
  %9 = icmp eq i8 %8, 6
  %10 = select i1 %9, i8 52, i8 -107
  %11 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %5, i8 noundef zeroext %10, ptr noundef nonnull %3)
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  %14 = load i8, ptr %3, align 1
  br i1 %13, label %18, label %15

15:                                               ; preds = %2
  %16 = zext i8 %14 to i32
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %16) #10
  br label %18

18:                                               ; preds = %15, %2
  %19 = zext i8 %14 to i16
  %20 = mul i16 %19, -256
  store i16 %20, ptr %1, align 2
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = zext i16 %20 to i32
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %24) #10
  br label %26

26:                                               ; preds = %23, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_read_ucblocks(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  store i32 0, ptr %1, align 4
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.lgs8gxx_read_ucblocks, i32 noundef 0) #10
  br label %7

7:                                                ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgs8gxx_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lgs8gxx_state, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lgs8gxx_config, ptr %8, i32 0, i32 12
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = or i8 %10, -128
  %16 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %15)
  br label %39

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 1, ptr %3, align 2
  %18 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  store i64 8589934592, ptr %4, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %19, align 8
  %20 = load ptr, ptr %7, align 4
  %21 = getelementptr inbounds %struct.lgs8gxx_config, ptr %20, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  store i16 %23, ptr %4, align 8
  %24 = load i32, ptr @debug, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 1, i32 noundef 0) #10
  br label %28

28:                                               ; preds = %26, %17
  %29 = load ptr, ptr %6, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %4, i32 noundef 1) #9
  %31 = icmp ne i32 %30, 1
  %32 = load i32, ptr @debug, align 4
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 1, i32 noundef 0, i32 noundef %30) #10
  br label %37

37:                                               ; preds = %35, %28
  %38 = sext i1 %31 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %39

39:                                               ; preds = %37, %14, %2
  %40 = phi i32 [ %16, %14 ], [ %38, %37 ], [ 0, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgs8gxx_write_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 %1, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i64 0, ptr %5, align 8
  store i16 2, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %8, align 8
  %9 = getelementptr inbounds %struct.lgs8gxx_state, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.lgs8gxx_config, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %5, align 8
  %14 = load i8, ptr %10, align 4
  %15 = icmp ne i8 %14, 6
  %16 = zext i8 %1 to i32
  %17 = icmp ugt i8 %1, -65
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = add nuw nsw i16 %13, 2
  store i16 %20, ptr %5, align 8
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, ptr @debug, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = zext i8 %2 to i32
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef %16, i32 noundef %25) #10
  br label %27

27:                                               ; preds = %24, %21
  %28 = load ptr, ptr %0, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %5, i32 noundef 1) #9
  %30 = icmp ne i32 %29, 1
  %31 = load i32, ptr @debug, align 4
  %32 = icmp ne i32 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = zext i8 %2 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef %16, i32 noundef %35, i32 noundef %29) #10
  br label %37

37:                                               ; preds = %34, %27
  %38 = sext i1 %30 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lgs8gxx_autolock_gi(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  switch i8 %1, label %15 [
    i8 2, label %9
    i8 1, label %12
  ]

9:                                                ; preds = %4
  %10 = load i32, ptr @debug, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %18

12:                                               ; preds = %4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %18

15:                                               ; preds = %4
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %12, %9
  %19 = phi ptr [ @.str.16, %9 ], [ @.str.17, %12 ], [ @.str.18, %15 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %19) #10
  br label %21

21:                                               ; preds = %18, %15, %12, %9
  %22 = getelementptr inbounds %struct.lgs8gxx_state, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 6
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %0, i8 noundef zeroext 12, ptr noundef nonnull %7)
  %28 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %0, i8 noundef zeroext 24, ptr noundef nonnull %8)
  %29 = load i8, ptr %7, align 1
  %30 = and i8 %29, -4
  %31 = or i8 %30, %1
  store i8 %31, ptr %7, align 1
  %32 = load i8, ptr %8, align 1
  %33 = and i8 %32, -2
  %34 = icmp ne i8 %2, 0
  %35 = zext i1 %34 to i8
  %36 = or i8 %33, %35
  store i8 %36, ptr %8, align 1
  %37 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %0, i8 noundef zeroext 12, i8 noundef zeroext %31)
  %38 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %0, i8 noundef zeroext 24, i8 noundef zeroext %36)
  br label %41

39:                                               ; preds = %21
  %40 = tail call fastcc i32 @lgs8gxx_write_reg(ptr noundef %0, i8 noundef zeroext 4, i8 noundef zeroext %1)
  br label %41

41:                                               ; preds = %39, %26
  tail call fastcc void @lgs8gxx_soft_reset(ptr noundef %0)
  %42 = load ptr, ptr %22, align 4
  %43 = load i8, ptr %42, align 4
  %44 = icmp eq i8 %43, 6
  %45 = select i1 %44, i8 19, i8 75
  %46 = select i1 %44, i8 -128, i8 -64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  br label %47

47:                                               ; preds = %53, %41
  %48 = phi i32 [ 0, %41 ], [ %54, %53 ]
  %49 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %0, i8 noundef zeroext %45, ptr noundef nonnull %6) #9
  %50 = load i8, ptr %6, align 1
  %51 = and i8 %50, %46
  %52 = icmp eq i8 %51, %46
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  tail call void @msleep(i32 noundef 50) #9
  %54 = add nuw nsw i32 %48, 1
  %55 = icmp eq i32 %54, 40
  br i1 %55, label %56, label %47

56:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %3, align 1
  br label %79

57:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  store i8 1, ptr %3, align 1
  %58 = load ptr, ptr %22, align 4
  %59 = load i8, ptr %58, align 4
  %60 = icmp eq i8 %59, 6
  %61 = select i1 %60, i8 31, i8 -92
  %62 = select i1 %60, i8 -64, i8 3
  %63 = select i1 %60, i8 -128, i8 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  br label %64

64:                                               ; preds = %70, %57
  %65 = phi i32 [ 0, %57 ], [ %71, %70 ]
  %66 = call fastcc i32 @lgs8gxx_read_reg(ptr noundef %0, i8 noundef zeroext %61, ptr noundef nonnull %5) #9
  %67 = load i8, ptr %5, align 1
  %68 = and i8 %67, %62
  %69 = icmp eq i8 %68, %63
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  tail call void @msleep(i32 noundef 10) #9
  %71 = add nuw nsw i32 %65, 1
  %72 = icmp eq i32 %71, 20
  br i1 %72, label %78, label %64

73:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  %74 = load i32, ptr @debug, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %79

78:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %3, align 1
  br label %79

79:                                               ; preds = %78, %76, %73, %56
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lgs8gxx_soft_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 2, ptr %4, align 2
  %6 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store i64 8589934592, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds %struct.lgs8gxx_state, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lgs8gxx_config, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr %5, align 8
  %13 = load i32, ptr @debug, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 2, i32 noundef 0) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = load ptr, ptr %0, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %5, i32 noundef 1) #9
  %20 = icmp ne i32 %19, 1
  %21 = load i32, ptr @debug, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 2, i32 noundef 0, i32 noundef %19) #10
  br label %26

26:                                               ; preds = %24, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @msleep(i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 2, ptr %2, align 2
  %27 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i64 8589934592, ptr %3, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %28, align 8
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.lgs8gxx_config, ptr %29, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %3, align 8
  %33 = load i32, ptr @debug, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 2, i32 noundef 1) #10
  br label %37

37:                                               ; preds = %35, %26
  %38 = load ptr, ptr %0, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %3, i32 noundef 1) #9
  %40 = icmp ne i32 %39, 1
  %41 = load i32, ptr @debug, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.lgs8gxx_write_reg, i32 noundef 2, i32 noundef 1, i32 noundef %39) #10
  br label %46

46:                                               ; preds = %44, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  call void @msleep(i32 noundef 100) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

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
!9 = !{i64 2147698626, i64 2147698906, i64 2147699240, i64 2147699574}
