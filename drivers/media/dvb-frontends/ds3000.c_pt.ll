; ModuleID = '/llk/IR/drivers/media/dvb-frontends/ds3000.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/ds3000.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ds3000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22ds3000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_ds3000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.ds3000_state = type { ptr, ptr, %struct.dvb_frontend, i16 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ds3000_config = type { i8, i8, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@debug = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__func__.ds3000_attach = private unnamed_addr constant [14 x i8] c"ds3000_attach\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\013Invalid probe, probably not a DS3000\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\016DS3000 chip version: %d.%d attached.\0A\00", align 1
@ds3000_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Montage Technology DS3000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1342179071 }, [8 x i8] c"\05\06\00\00\00\00\00\00", ptr null, ptr @ds3000_release, ptr null, ptr @ds3000_initfe, ptr null, ptr null, ptr null, ptr null, ptr @ds3000_tune, ptr @ds3000_get_algo, ptr @ds3000_set_frontend, ptr null, ptr null, ptr @ds3000_read_status, ptr @ds3000_read_ber, ptr @ds3000_read_signal_strength, ptr @ds3000_read_snr, ptr @ds3000_read_ucblocks, ptr null, ptr @ds3000_send_diseqc_msg, ptr null, ptr @ds3000_diseqc_send_burst, ptr @ds3000_set_tone, ptr @ds3000_set_voltage, ptr null, ptr null, ptr @ds3000_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_ds3000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_ds3000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_ds3000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ds3000_attach to i32), ptr @__kstrtab_ds3000_attach, ptr @__kstrtabns_ds3000_attach }, section "___ksymtab+ds3000_attach", align 4
@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [52 x i8] c"parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [71 x i8] c"description=DVB Frontend module for Montage Technology DS3000 hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [54 x i8] c"author=Konstantin Dimitrov <kosio.dimitrov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [26 x i8] c"firmware=dvb-fe-ds3000.fw\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"\013%s: reg=0x%x(error=%d)\0A\00", align 1
@__func__.ds3000_readreg = private unnamed_addr constant [15 x i8] c"ds3000_readreg\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: read reg 0x%02x, value 0x%02x\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s(%d)\0A\00", align 1
@__func__.ds3000_set_voltage = private unnamed_addr constant [19 x i8] c"ds3000_set_voltage\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: write reg 0x%02x, value 0x%02x\0A\00", align 1
@__func__.ds3000_writereg = private unnamed_addr constant [16 x i8] c"ds3000_writereg\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"\013%s: writereg error(err == %i, reg == 0x%02x, value == 0x%02x)\0A\00", align 1
@__func__.ds3000_release = private unnamed_addr constant [15 x i8] c"ds3000_release\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s()\0A\00", align 1
@__func__.ds3000_initfe = private unnamed_addr constant [14 x i8] c"ds3000_initfe\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\013%s: Unable initialize firmware\0A\00", align 1
@__func__.ds3000_firmware_ondemand = private unnamed_addr constant [25 x i8] c"ds3000_firmware_ondemand\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"\016%s: Waiting for firmware upload (%s)...\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"dvb-fe-ds3000.fw\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\016%s: Waiting for firmware upload(2)...\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"\013%s: No firmware uploaded (timeout or file not found?)\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"%s: Writing firmware to device failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: Firmware upload %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"complete\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@__func__.ds3000_load_firmware = private unnamed_addr constant [21 x i8] c"ds3000_load_firmware\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"Firmware is %zu bytes (%02x %02x .. %02x %02x)\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"%s: write reg 0x%02x, len = %d\0A\00", align 1
@__func__.ds3000_writeFW = private unnamed_addr constant [15 x i8] c"ds3000_writeFW\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"\013%s: write error(err == %i, reg == 0x%02x\0A\00", align 1
@__func__.ds3000_get_algo = private unnamed_addr constant [16 x i8] c"ds3000_get_algo\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%s() \00", align 1
@__func__.ds3000_set_frontend = private unnamed_addr constant [20 x i8] c"ds3000_set_frontend\00", align 1
@ds3000_dvbs_init_tab = internal unnamed_addr constant [162 x i8] c"#\05\08\03\0C\00!T%\82'10\081@22355\FF:\007\108\109\02B`J@K\04M\91]\C8PwQwR6S6V\01cCd0e@h&iLp qpr\04s\00p@qpr\04s\00p`qpr\04s\00p\80qpr\04s\00p\A0qpr\04s\00p\1Fv\00w\D1x\0Cy\80\7F\04|\00\80\86\81\A6\85\04\CD\F4\903\A0D\C0\18\C3\10\C4\08\C5\80\C6\80\C7\0A\C8\1A\C9\80\FE\92\E0\F8\E6\8B\D0@\F8 \FA\0F\FD \AD \AE\07\B8\00", align 1
@ds3000_dvbs2_init_tab = internal unnamed_addr constant [192 x i8] c"#\0F\08\07\0C\00!T%\82'10\081222355\FF:\007\108\109\02B`J\80K\04M\81]\88P6Q6R6S6c`d\10e\10h\04i)p qpr\04s\00p@qpr\04s\00p`qpr\04s\00p\80qpr\04s\00p\A0qpr\04s\00p\1F\A0D\C0\08\C1\10\C2\08\C3\10\C4\08\C5\F0\C6\F0\C7\0A\C8\1A\C9\80\CA#\CB$\CEt\90\03v\80wBx\0Ay\80\AD@\AE\07\7F\D4|\00\80\A8\81\DA|\01\80\DA\81\EC|\02\80\CA\81\EB|\03\80\BA\81\DB\85\08\86\00\87\02\89\80\8BD\8C\AA\8A\10\BA\00\F5\04\FED\D22\B8\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"%s() symbol_rate %u out of range (%u ... %u)\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"%s: status = 0x%02x\0A\00", align 1
@__func__.ds3000_read_status = private unnamed_addr constant [19 x i8] c"ds3000_read_status\00", align 1
@__func__.ds3000_read_ber = private unnamed_addr constant [16 x i8] c"ds3000_read_ber\00", align 1
@ds3000_read_snr.dvbs_snr_tab = internal unnamed_addr constant [20 x i16] [i16 0, i16 6931, i16 10986, i16 13863, i16 16094, i16 17918, i16 19459, i16 20794, i16 21972, i16 23026, i16 23979, i16 24849, i16 25649, i16 26391, i16 27081, i16 27726, i16 28332, i16 28904, i16 29444, i16 29957], align 2
@ds3000_read_snr.dvbs2_snr_tab = internal unnamed_addr constant [80 x i16] [i16 0, i16 3010, i16 4771, i16 6021, i16 6990, i16 7781, i16 8451, i16 9031, i16 9542, i16 10000, i16 10414, i16 10792, i16 11139, i16 11461, i16 11761, i16 12041, i16 12304, i16 12553, i16 12788, i16 13010, i16 13222, i16 13424, i16 13617, i16 13802, i16 13979, i16 14150, i16 14314, i16 14472, i16 14624, i16 14771, i16 14914, i16 15052, i16 15185, i16 15315, i16 15441, i16 15563, i16 15682, i16 15798, i16 15911, i16 16021, i16 16128, i16 16232, i16 16335, i16 16435, i16 16532, i16 16628, i16 16721, i16 16812, i16 16902, i16 16990, i16 17076, i16 17160, i16 17243, i16 17324, i16 17404, i16 17482, i16 17559, i16 17634, i16 17709, i16 17782, i16 17853, i16 17924, i16 17993, i16 18062, i16 18129, i16 18195, i16 18261, i16 18325, i16 18388, i16 18451, i16 18513, i16 18573, i16 18633, i16 18692, i16 18751, i16 18808, i16 18865, i16 18921, i16 18976, i16 19031], align 2
@__func__.ds3000_read_snr = private unnamed_addr constant [16 x i8] c"ds3000_read_snr\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"%s: raw / cooked = 0x%02x / 0x%04x\0A\00", align 1
@__func__.ds3000_read_ucblocks = private unnamed_addr constant [21 x i8] c"ds3000_read_ucblocks\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@__func__.ds3000_send_diseqc_msg = private unnamed_addr constant [23 x i8] c"ds3000_send_diseqc_msg\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c", \00", align 1
@__func__.ds3000_diseqc_send_burst = private unnamed_addr constant [25 x i8] c"ds3000_diseqc_send_burst\00", align 1
@__func__.ds3000_set_tone = private unnamed_addr constant [16 x i8] c"ds3000_set_tone\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"\013%s: Invalid, tone=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"%s: setting tone on\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"%s: setting tone off\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_ds3000_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ds3000_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ds3000_attach) #8
  br label %7

7:                                                ; preds = %5, %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1052) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ds3000_state, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  store ptr %1, ptr %9, align 8
  %13 = getelementptr inbounds %struct.ds3000_state, ptr %9, i32 0, i32 3
  store i16 0, ptr %13, align 8
  %14 = tail call fastcc i32 @ds3000_readreg(ptr noundef nonnull %9, i8 noundef zeroext 0)
  %15 = and i32 %14, 254
  %16 = icmp eq i32 %15, 224
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #10
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %27

19:                                               ; preds = %11
  %20 = tail call fastcc i32 @ds3000_readreg(ptr noundef nonnull %9, i8 noundef zeroext 2)
  %21 = tail call fastcc i32 @ds3000_readreg(ptr noundef nonnull %9, i8 noundef zeroext 1)
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %20, i32 noundef %21) #8
  %23 = getelementptr inbounds %struct.ds3000_state, ptr %9, i32 0, i32 2
  %24 = getelementptr inbounds %struct.ds3000_state, ptr %9, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %24, ptr noundef nonnull align 4 dereferenceable(544) @ds3000_ops, i32 544, i1 false)
  %25 = getelementptr inbounds %struct.ds3000_state, ptr %9, i32 0, i32 2, i32 3
  store ptr %9, ptr %25, align 8
  %26 = tail call i32 @ds3000_set_voltage(ptr noundef %23, i32 noundef 2)
  br label %27

27:                                               ; preds = %19, %17, %7
  %28 = phi ptr [ null, %17 ], [ %23, %19 ], [ null, %7 ]
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ds3000_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [1 x i8], align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 %1, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.ds3000_state, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %15 = load i8, ptr %8, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %5, i32 noundef 2) #10
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = zext i8 %1 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.ds3000_readreg, i32 noundef %24, i32 noundef %21) #8
  br label %37

26:                                               ; preds = %2
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = zext i8 %1 to i32
  %31 = load i8, ptr %4, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.ds3000_readreg, i32 noundef %30, i32 noundef %32) #8
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i8, ptr %4, align 1
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %34, %23
  %38 = phi i32 [ %21, %23 ], [ %36, %34 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_set_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ds3000_set_voltage, i32 noundef %1) #8
  br label %11

11:                                               ; preds = %9, %2
  %12 = tail call fastcc i32 @ds3000_readreg(ptr noundef %6, i8 noundef zeroext -94)
  %13 = or i32 %12, 3
  switch i32 %1, label %19 [
    i32 1, label %14
    i32 0, label %16
  ]

14:                                               ; preds = %11
  %15 = and i32 %12, 252
  br label %19

16:                                               ; preds = %11
  %17 = and i32 %12, 252
  %18 = or i32 %17, 1
  br label %19

19:                                               ; preds = %16, %14, %11
  %20 = phi i32 [ %13, %11 ], [ %18, %16 ], [ %15, %14 ]
  %21 = and i32 %20, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -94, ptr %3, align 2
  %22 = getelementptr inbounds i8, ptr %3, i32 1
  %23 = trunc i32 %20 to i8
  store i8 %23, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %24 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %24, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.ds3000_state, ptr %6, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %4, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %30, align 4
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %21) #8
  br label %35

35:                                               ; preds = %33, %19
  %36 = load ptr, ptr %6, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %4, i32 noundef 1) #10
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %37, i32 noundef 162, i32 noundef %21) #8
  br label %41

41:                                               ; preds = %39, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ds3000_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ds3000_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ds3000_config, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0, i32 noundef 0) #10
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ds3000_release) #8
  br label %15

15:                                               ; preds = %13, %10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_initfe(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca ptr, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr @debug, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ds3000_initfe) #8
  br label %16

16:                                               ; preds = %14, %1
  %17 = tail call fastcc i32 @ds3000_readreg(ptr noundef %11, i8 noundef zeroext 8)
  %18 = or i32 %17, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 8, ptr %8, align 2
  %19 = getelementptr inbounds i8, ptr %8, i32 1
  %20 = trunc i32 %18 to i8
  store i8 %20, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %21 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 0, ptr %21, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.ds3000_state, ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i16
  store i16 %25, ptr %9, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %26, align 2
  store i16 2, ptr %21, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %27, align 4
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %16
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 8, i32 noundef %18) #8
  br label %32

32:                                               ; preds = %30, %16
  %33 = load ptr, ptr %11, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %9, i32 noundef 1) #10
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %34, i32 noundef 8, i32 noundef %18) #8
  br label %38

38:                                               ; preds = %36, %32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @msleep(i32 noundef 1) #10
  %39 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4, !annotation !8
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ds3000_firmware_ondemand) #8
  br label %44

44:                                               ; preds = %42, %38
  %45 = call fastcc i32 @ds3000_readreg(ptr noundef %39, i8 noundef zeroext -78) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %171, label %47

47:                                               ; preds = %44
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.ds3000_firmware_ondemand, ptr noundef nonnull @.str.11) #8
  %49 = load ptr, ptr %39, align 4
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 9, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @request_firmware(ptr noundef nonnull %7, ptr noundef nonnull @.str.11, ptr noundef %51) #10
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.ds3000_firmware_ondemand) #8
  %54 = icmp eq i32 %52, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %47
  %56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.ds3000_firmware_ondemand) #8
  br label %171

57:                                               ; preds = %47
  %58 = load ptr, ptr %7, align 4
  %59 = load ptr, ptr %10, align 4
  %60 = load i32, ptr @debug, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %57
  %63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ds3000_load_firmware) #8
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr %58, align 4
  %68 = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr i8, ptr %69, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add i32 %67, -2
  %76 = getelementptr i8, ptr %69, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add i32 %67, -1
  %80 = getelementptr i8, ptr %69, i32 %79
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %67, i32 noundef %71, i32 noundef %74, i32 noundef %78, i32 noundef %82) #8
  %84 = load i32, ptr @debug, align 4
  %85 = icmp eq i32 %84, 0
  br label %86

86:                                               ; preds = %66, %62, %57
  %87 = phi i1 [ true, %57 ], [ %85, %66 ], [ true, %62 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -78, ptr %5, align 2
  %88 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 1, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %89 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %89, align 4, !annotation !8
  %90 = getelementptr inbounds %struct.ds3000_state, ptr %59, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = load i8, ptr %91, align 4
  %93 = zext i8 %92 to i16
  store i16 %93, ptr %6, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %94, align 2
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %95, align 4
  br i1 %87, label %98, label %96

96:                                               ; preds = %86
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 178, i32 noundef 1) #8
  br label %98

98:                                               ; preds = %96, %86
  %99 = load ptr, ptr %59, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %6, i32 noundef 1) #10
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %100, i32 noundef 178, i32 noundef 1) #8
  br label %104

104:                                              ; preds = %102, %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %105 = getelementptr inbounds %struct.firmware, ptr %58, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %108 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 33, ptr %108, align 4, !annotation !8
  %109 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %110 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %109, i32 noundef 3264, i32 noundef 33) #9
  %111 = icmp eq ptr %110, null
  br i1 %111, label %141, label %112

112:                                              ; preds = %104
  %113 = trunc i32 %107 to i16
  store i8 -80, ptr %110, align 8
  %114 = load ptr, ptr %90, align 4
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %4, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %110, ptr %118, align 4
  %119 = and i32 %107, 65535
  %120 = icmp eq i16 %113, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %112
  %122 = getelementptr i8, ptr %110, i32 1
  br label %126

123:                                              ; preds = %133
  %124 = add nuw nsw i32 %127, 32
  %125 = icmp ult i32 %124, %119
  br i1 %125, label %126, label %139

126:                                              ; preds = %123, %121
  %127 = phi i32 [ 0, %121 ], [ %124, %123 ]
  %128 = getelementptr i8, ptr %106, i32 %127
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(32) %122, ptr noundef align 1 dereferenceable(32) %128, i32 32, i1 false) #10
  %129 = load i32, ptr @debug, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.ds3000_writeFW, i32 noundef 176, i32 noundef %119) #8
  br label %133

133:                                              ; preds = %131, %126
  %134 = load ptr, ptr %59, align 4
  %135 = call i32 @i2c_transfer(ptr noundef %134, ptr noundef nonnull %4, i32 noundef 1) #10
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %123, label %137

137:                                              ; preds = %133
  %138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.ds3000_writeFW, i32 noundef %135, i32 noundef 176) #8
  br label %139

139:                                              ; preds = %137, %123, %112
  %140 = phi i32 [ -121, %137 ], [ 0, %112 ], [ 0, %123 ]
  call void @kfree(ptr noundef nonnull %110) #10
  br label %141

141:                                              ; preds = %139, %104
  %142 = phi i32 [ %140, %139 ], [ -12, %104 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 -78, ptr %2, align 2
  %143 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %144 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %144, align 4, !annotation !8
  %145 = load ptr, ptr %90, align 4
  %146 = load i8, ptr %145, align 4
  %147 = zext i8 %146 to i16
  store i16 %147, ptr %3, align 4
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %148, align 2
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %149, align 4
  %150 = load i32, ptr @debug, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %141
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 178, i32 noundef 0) #8
  br label %154

154:                                              ; preds = %152, %141
  %155 = load ptr, ptr %59, align 4
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %3, i32 noundef 1) #10
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %156, i32 noundef 178, i32 noundef 0) #8
  br label %160

160:                                              ; preds = %158, %154
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %161 = icmp eq i32 %142, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %160
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.ds3000_firmware_ondemand) #8
  br label %164

164:                                              ; preds = %162, %160
  %165 = load ptr, ptr %7, align 4
  call void @release_firmware(ptr noundef %165) #10
  %166 = load i32, ptr @debug, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = select i1 %161, ptr @.str.16, ptr @.str.17
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.ds3000_firmware_ondemand, ptr noundef nonnull %169) #8
  br label %173

171:                                              ; preds = %55, %44
  %172 = phi i32 [ %45, %44 ], [ %52, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br label %174

173:                                              ; preds = %168, %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br i1 %161, label %177, label %174

174:                                              ; preds = %173, %171
  %175 = phi i32 [ %172, %171 ], [ %142, %173 ]
  %176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.ds3000_initfe) #8
  br label %177

177:                                              ; preds = %174, %173
  %178 = phi i32 [ %175, %174 ], [ 0, %173 ]
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #0 {
  br i1 %1, label %6, label %9

6:                                                ; preds = %5
  %7 = tail call i32 @ds3000_set_frontend(ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %5
  store i32 20, ptr %3, align 4
  %10 = tail call i32 @ds3000_read_status(ptr noundef %0, ptr noundef %4)
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %7, %6 ], [ %10, %9 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_get_algo(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ds3000_state, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.ds3000_config, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0, i32 noundef 0) #10
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ds3000_get_algo) #8
  br label %15

15:                                               ; preds = %13, %10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [2 x i8], align 2
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [2 x i8], align 2
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [2 x i8], align 2
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x i8], align 2
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [2 x i8], align 2
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [2 x i8], align 2
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [2 x i8], align 2
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [2 x i8], align 2
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [2 x i8], align 2
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [2 x i8], align 2
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [2 x i8], align 2
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [2 x i8], align 2
  %61 = alloca %struct.i2c_msg, align 4
  %62 = alloca [2 x i8], align 2
  %63 = alloca %struct.i2c_msg, align 4
  %64 = alloca [2 x i8], align 2
  %65 = alloca %struct.i2c_msg, align 4
  %66 = alloca [2 x i8], align 2
  %67 = alloca %struct.i2c_msg, align 4
  %68 = alloca [2 x i8], align 2
  %69 = alloca %struct.i2c_msg, align 4
  %70 = alloca [2 x i8], align 2
  %71 = alloca %struct.i2c_msg, align 4
  %72 = alloca [2 x i8], align 2
  %73 = alloca %struct.i2c_msg, align 4
  %74 = alloca [2 x i8], align 2
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca i32, align 4
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %76) #10
  store i32 0, ptr %76, align 4, !annotation !8
  %80 = load i32, ptr @debug, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %1
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.ds3000_set_frontend) #8
  br label %84

84:                                               ; preds = %82, %1
  %85 = getelementptr inbounds %struct.ds3000_state, ptr %78, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.ds3000_config, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = tail call i32 %88(ptr noundef %0, i32 noundef 0) #10
  br label %92

92:                                               ; preds = %90, %84
  %93 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %92
  %97 = tail call i32 %94(ptr noundef %0) #10
  br label %98

98:                                               ; preds = %96, %92
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %74) #10
  store i8 7, ptr %74, align 2
  %99 = getelementptr inbounds i8, ptr %74, i32 1
  store i8 -128, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #10
  %100 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 0, ptr %100, align 4, !annotation !8
  %101 = load ptr, ptr %85, align 4
  %102 = load i8, ptr %101, align 4
  %103 = zext i8 %102 to i16
  store i16 %103, ptr %75, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %104, align 2
  store i16 2, ptr %100, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %105, align 4
  %106 = load i32, ptr @debug, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %98
  %109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 7, i32 noundef 128) #8
  br label %110

110:                                              ; preds = %108, %98
  %111 = load ptr, ptr %78, align 4
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %75, i32 noundef 1) #10
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %112, i32 noundef 7, i32 noundef 128) #8
  br label %116

116:                                              ; preds = %114, %110
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %74) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %72) #10
  store i8 7, ptr %72, align 2
  %117 = getelementptr inbounds i8, ptr %72, i32 1
  store i8 0, ptr %117, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #10
  %118 = getelementptr inbounds i8, ptr %73, i32 4
  store i32 0, ptr %118, align 4, !annotation !8
  %119 = load ptr, ptr %85, align 4
  %120 = load i8, ptr %119, align 4
  %121 = zext i8 %120 to i16
  store i16 %121, ptr %73, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %122, align 2
  store i16 2, ptr %118, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %72, ptr %123, align 4
  %124 = load i32, ptr @debug, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 7, i32 noundef 0) #8
  br label %128

128:                                              ; preds = %126, %116
  %129 = load ptr, ptr %78, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %73, i32 noundef 1) #10
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %130, i32 noundef 7, i32 noundef 0) #8
  br label %134

134:                                              ; preds = %132, %128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %72) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %70) #10
  store i8 -78, ptr %70, align 2
  %135 = getelementptr inbounds i8, ptr %70, i32 1
  store i8 1, ptr %135, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #10
  %136 = getelementptr inbounds i8, ptr %71, i32 4
  store i32 0, ptr %136, align 4, !annotation !8
  %137 = load ptr, ptr %85, align 4
  %138 = load i8, ptr %137, align 4
  %139 = zext i8 %138 to i16
  store i16 %139, ptr %71, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  store i16 0, ptr %140, align 2
  store i16 2, ptr %136, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  store ptr %70, ptr %141, align 4
  %142 = load i32, ptr @debug, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %134
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 178, i32 noundef 1) #8
  br label %146

146:                                              ; preds = %144, %134
  %147 = load ptr, ptr %78, align 4
  %148 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %71, i32 noundef 1) #10
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %148, i32 noundef 178, i32 noundef 1) #8
  br label %152

152:                                              ; preds = %150, %146
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %70) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %68) #10
  store i8 0, ptr %68, align 2
  %153 = getelementptr inbounds i8, ptr %68, i32 1
  store i8 1, ptr %153, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #10
  %154 = getelementptr inbounds i8, ptr %69, i32 4
  store i32 0, ptr %154, align 4, !annotation !8
  %155 = load ptr, ptr %85, align 4
  %156 = load i8, ptr %155, align 4
  %157 = zext i8 %156 to i16
  store i16 %157, ptr %69, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  store i16 0, ptr %158, align 2
  store i16 2, ptr %154, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  store ptr %68, ptr %159, align 4
  %160 = load i32, ptr @debug, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %152
  %163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 0, i32 noundef 1) #8
  br label %164

164:                                              ; preds = %162, %152
  %165 = load ptr, ptr %78, align 4
  %166 = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %69, i32 noundef 1) #10
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %170, label %168

168:                                              ; preds = %164
  %169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %166, i32 noundef 0, i32 noundef 1) #8
  br label %170

170:                                              ; preds = %168, %164
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #10
  %171 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %172 = load i32, ptr %171, align 4
  switch i32 %172, label %923 [
    i32 5, label %178
    i32 6, label %173
  ]

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %62, i32 1
  %175 = getelementptr inbounds i8, ptr %63, i32 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  br label %231

178:                                              ; preds = %170
  %179 = getelementptr inbounds i8, ptr %66, i32 1
  %180 = getelementptr inbounds i8, ptr %67, i32 4
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  br label %183

183:                                              ; preds = %205, %178
  %184 = phi i32 [ 0, %178 ], [ %206, %205 ]
  %185 = getelementptr [162 x i8], ptr @ds3000_dvbs_init_tab, i32 0, i32 %184
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i32
  %188 = or i32 %184, 1
  %189 = getelementptr [162 x i8], ptr @ds3000_dvbs_init_tab, i32 0, i32 %188
  %190 = load i8, ptr %189, align 1
  %191 = zext i8 %190 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %66) #10
  store i8 %186, ptr %66, align 2
  store i8 %190, ptr %179, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #10
  store i32 0, ptr %180, align 4, !annotation !8
  %192 = load ptr, ptr %85, align 4
  %193 = load i8, ptr %192, align 4
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %67, align 4
  store i16 0, ptr %181, align 2
  store i16 2, ptr %180, align 4
  store ptr %66, ptr %182, align 4
  %195 = load i32, ptr @debug, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %183
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %187, i32 noundef %191) #8
  br label %199

199:                                              ; preds = %197, %183
  %200 = load ptr, ptr %78, align 4
  %201 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %67, i32 noundef 1) #10
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %205, label %203

203:                                              ; preds = %199
  %204 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %201, i32 noundef %187, i32 noundef %191) #8
  br label %205

205:                                              ; preds = %203, %199
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %66) #10
  %206 = add nuw nsw i32 %184, 2
  %207 = icmp ult i32 %184, 160
  br i1 %207, label %183, label %208

208:                                              ; preds = %205
  %209 = call fastcc i32 @ds3000_readreg(ptr noundef %78, i8 noundef zeroext -2)
  %210 = and i32 %209, 192
  %211 = or i32 %210, 27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %64) #10
  store i8 -2, ptr %64, align 2
  %212 = getelementptr inbounds i8, ptr %64, i32 1
  %213 = trunc i32 %211 to i8
  store i8 %213, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #10
  %214 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 0, ptr %214, align 4, !annotation !8
  %215 = load ptr, ptr %85, align 4
  %216 = load i8, ptr %215, align 4
  %217 = zext i8 %216 to i16
  store i16 %217, ptr %65, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %218, align 2
  store i16 2, ptr %214, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %219, align 4
  %220 = load i32, ptr @debug, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %208
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 254, i32 noundef %211) #8
  br label %224

224:                                              ; preds = %222, %208
  %225 = load ptr, ptr %78, align 4
  %226 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %65, i32 noundef 1) #10
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %226, i32 noundef 254, i32 noundef %211) #8
  br label %230

230:                                              ; preds = %228, %224
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %64) #10
  br label %298

231:                                              ; preds = %253, %173
  %232 = phi i32 [ 0, %173 ], [ %254, %253 ]
  %233 = getelementptr [192 x i8], ptr @ds3000_dvbs2_init_tab, i32 0, i32 %232
  %234 = load i8, ptr %233, align 1
  %235 = zext i8 %234 to i32
  %236 = or i32 %232, 1
  %237 = getelementptr [192 x i8], ptr @ds3000_dvbs2_init_tab, i32 0, i32 %236
  %238 = load i8, ptr %237, align 1
  %239 = zext i8 %238 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %62) #10
  store i8 %234, ptr %62, align 2
  store i8 %238, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #10
  store i32 0, ptr %175, align 4, !annotation !8
  %240 = load ptr, ptr %85, align 4
  %241 = load i8, ptr %240, align 4
  %242 = zext i8 %241 to i16
  store i16 %242, ptr %63, align 4
  store i16 0, ptr %176, align 2
  store i16 2, ptr %175, align 4
  store ptr %62, ptr %177, align 4
  %243 = load i32, ptr @debug, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %231
  %246 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %235, i32 noundef %239) #8
  br label %247

247:                                              ; preds = %245, %231
  %248 = load ptr, ptr %78, align 4
  %249 = call i32 @i2c_transfer(ptr noundef %248, ptr noundef nonnull %63, i32 noundef 1) #10
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %249, i32 noundef %235, i32 noundef %239) #8
  br label %253

253:                                              ; preds = %251, %247
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %62) #10
  %254 = add nuw nsw i32 %232, 2
  %255 = icmp ult i32 %232, 190
  br i1 %255, label %231, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %258 = load i32, ptr %257, align 4
  %259 = icmp ugt i32 %258, 29999999
  br i1 %259, label %260, label %279

260:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %60) #10
  store i8 -2, ptr %60, align 2
  %261 = getelementptr inbounds i8, ptr %60, i32 1
  store i8 84, ptr %261, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #10
  %262 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 0, ptr %262, align 4, !annotation !8
  %263 = load ptr, ptr %85, align 4
  %264 = load i8, ptr %263, align 4
  %265 = zext i8 %264 to i16
  store i16 %265, ptr %61, align 4
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %266, align 2
  store i16 2, ptr %262, align 4
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %267, align 4
  %268 = load i32, ptr @debug, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %272, label %270

270:                                              ; preds = %260
  %271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 254, i32 noundef 84) #8
  br label %272

272:                                              ; preds = %270, %260
  %273 = load ptr, ptr %78, align 4
  %274 = call i32 @i2c_transfer(ptr noundef %273, ptr noundef nonnull %61, i32 noundef 1) #10
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %278, label %276

276:                                              ; preds = %272
  %277 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %274, i32 noundef 254, i32 noundef 84) #8
  br label %278

278:                                              ; preds = %276, %272
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %60) #10
  br label %298

279:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %58) #10
  store i8 -2, ptr %58, align 2
  %280 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 -104, ptr %280, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #10
  %281 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 0, ptr %281, align 4, !annotation !8
  %282 = load ptr, ptr %85, align 4
  %283 = load i8, ptr %282, align 4
  %284 = zext i8 %283 to i16
  store i16 %284, ptr %59, align 4
  %285 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %285, align 2
  store i16 2, ptr %281, align 4
  %286 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %286, align 4
  %287 = load i32, ptr @debug, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %279
  %290 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 254, i32 noundef 152) #8
  br label %291

291:                                              ; preds = %289, %279
  %292 = load ptr, ptr %78, align 4
  %293 = call i32 @i2c_transfer(ptr noundef %292, ptr noundef nonnull %59, i32 noundef 1) #10
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %297, label %295

295:                                              ; preds = %291
  %296 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %293, i32 noundef 254, i32 noundef 152) #8
  br label %297

297:                                              ; preds = %295, %291
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %58) #10
  br label %298

298:                                              ; preds = %297, %278, %230
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %56) #10
  store i8 41, ptr %56, align 2
  %299 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 -128, ptr %299, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #10
  %300 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 0, ptr %300, align 4, !annotation !8
  %301 = load ptr, ptr %85, align 4
  %302 = load i8, ptr %301, align 4
  %303 = zext i8 %302 to i16
  store i16 %303, ptr %57, align 4
  %304 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %304, align 2
  store i16 2, ptr %300, align 4
  %305 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %305, align 4
  %306 = load i32, ptr @debug, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %298
  %309 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 41, i32 noundef 128) #8
  br label %310

310:                                              ; preds = %308, %298
  %311 = load ptr, ptr %78, align 4
  %312 = call i32 @i2c_transfer(ptr noundef %311, ptr noundef nonnull %57, i32 noundef 1) #10
  %313 = icmp eq i32 %312, 1
  br i1 %313, label %316, label %314

314:                                              ; preds = %310
  %315 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %312, i32 noundef 41, i32 noundef 128) #8
  br label %316

316:                                              ; preds = %314, %310
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %56) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #10
  store i8 37, ptr %54, align 2
  %317 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 -118, ptr %317, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #10
  %318 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 0, ptr %318, align 4, !annotation !8
  %319 = load ptr, ptr %85, align 4
  %320 = load i8, ptr %319, align 4
  %321 = zext i8 %320 to i16
  store i16 %321, ptr %55, align 4
  %322 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %322, align 2
  store i16 2, ptr %318, align 4
  %323 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %323, align 4
  %324 = load i32, ptr @debug, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %316
  %327 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 37, i32 noundef 138) #8
  br label %328

328:                                              ; preds = %326, %316
  %329 = load ptr, ptr %78, align 4
  %330 = call i32 @i2c_transfer(ptr noundef %329, ptr noundef nonnull %55, i32 noundef 1) #10
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %334, label %332

332:                                              ; preds = %328
  %333 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %330, i32 noundef 37, i32 noundef 138) #8
  br label %334

334:                                              ; preds = %332, %328
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #10
  %335 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %336 = load i32, ptr %335, align 4
  %337 = add i32 %336, -45000001
  %338 = icmp ult i32 %337, -44000001
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load i32, ptr @debug, align 4
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %923, label %342

342:                                              ; preds = %339
  %343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.ds3000_set_frontend, i32 noundef %336, i32 noundef 1000000, i32 noundef 45000000) #8
  br label %923

344:                                              ; preds = %334
  %345 = udiv i32 %336, 1000
  %346 = icmp ult i32 %336, 5001000
  br i1 %346, label %347, label %429

347:                                              ; preds = %344
  %348 = trunc i32 %345 to i16
  %349 = udiv i16 29777, %348
  %350 = add nuw nsw i16 %349, 1
  %351 = and i16 %350, 1
  %352 = icmp eq i16 %351, 0
  %353 = add nuw nsw i16 %349, 2
  %354 = select i1 %352, i16 %350, i16 %353
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #10
  store i8 -61, ptr %52, align 2
  %355 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 13, ptr %355, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #10
  %356 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 0, ptr %356, align 4, !annotation !8
  %357 = load ptr, ptr %85, align 4
  %358 = load i8, ptr %357, align 4
  %359 = zext i8 %358 to i16
  store i16 %359, ptr %53, align 4
  %360 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %360, align 2
  store i16 2, ptr %356, align 4
  %361 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %361, align 4
  %362 = load i32, ptr @debug, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %347
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 195, i32 noundef 13) #8
  br label %366

366:                                              ; preds = %364, %347
  %367 = load ptr, ptr %78, align 4
  %368 = call i32 @i2c_transfer(ptr noundef %367, ptr noundef nonnull %53, i32 noundef 1) #10
  %369 = icmp eq i32 %368, 1
  br i1 %369, label %372, label %370

370:                                              ; preds = %366
  %371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %368, i32 noundef 195, i32 noundef 13) #8
  br label %372

372:                                              ; preds = %370, %366
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #10
  %373 = zext i16 %354 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #10
  store i8 -56, ptr %50, align 2
  %374 = getelementptr inbounds i8, ptr %50, i32 1
  %375 = trunc i16 %354 to i8
  store i8 %375, ptr %374, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #10
  %376 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 0, ptr %376, align 4, !annotation !8
  %377 = load ptr, ptr %85, align 4
  %378 = load i8, ptr %377, align 4
  %379 = zext i8 %378 to i16
  store i16 %379, ptr %51, align 4
  %380 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %380, align 2
  store i16 2, ptr %376, align 4
  %381 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %381, align 4
  %382 = load i32, ptr @debug, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %372
  %385 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 200, i32 noundef %373) #8
  br label %386

386:                                              ; preds = %384, %372
  %387 = load ptr, ptr %78, align 4
  %388 = call i32 @i2c_transfer(ptr noundef %387, ptr noundef nonnull %51, i32 noundef 1) #10
  %389 = icmp eq i32 %388, 1
  br i1 %389, label %392, label %390

390:                                              ; preds = %386
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %388, i32 noundef 200, i32 noundef %373) #8
  br label %392

392:                                              ; preds = %390, %386
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %48) #10
  store i8 -60, ptr %48, align 2
  %393 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 16, ptr %393, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #10
  %394 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 0, ptr %394, align 4, !annotation !8
  %395 = load ptr, ptr %85, align 4
  %396 = load i8, ptr %395, align 4
  %397 = zext i8 %396 to i16
  store i16 %397, ptr %49, align 4
  %398 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %398, align 2
  store i16 2, ptr %394, align 4
  %399 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %399, align 4
  %400 = load i32, ptr @debug, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %392
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 196, i32 noundef 16) #8
  br label %404

404:                                              ; preds = %402, %392
  %405 = load ptr, ptr %78, align 4
  %406 = call i32 @i2c_transfer(ptr noundef %405, ptr noundef nonnull %49, i32 noundef 1) #10
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %410, label %408

408:                                              ; preds = %404
  %409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %406, i32 noundef 196, i32 noundef 16) #8
  br label %410

410:                                              ; preds = %408, %404
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %48) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #10
  store i8 -57, ptr %46, align 2
  %411 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 14, ptr %411, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #10
  %412 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 0, ptr %412, align 4, !annotation !8
  %413 = load ptr, ptr %85, align 4
  %414 = load i8, ptr %413, align 4
  %415 = zext i8 %414 to i16
  store i16 %415, ptr %47, align 4
  %416 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %416, align 2
  store i16 2, ptr %412, align 4
  %417 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %417, align 4
  %418 = load i32, ptr @debug, align 4
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %410
  %421 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 199, i32 noundef 14) #8
  br label %422

422:                                              ; preds = %420, %410
  %423 = load ptr, ptr %78, align 4
  %424 = call i32 @i2c_transfer(ptr noundef %423, ptr noundef nonnull %47, i32 noundef 1) #10
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %428, label %426

426:                                              ; preds = %422
  %427 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %424, i32 noundef 199, i32 noundef 14) #8
  br label %428

428:                                              ; preds = %426, %422
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #10
  br label %669

429:                                              ; preds = %344
  %430 = icmp ult i32 %336, 10001000
  br i1 %430, label %431, label %513

431:                                              ; preds = %429
  %432 = udiv i32 92166, %345
  %433 = trunc i32 %432 to i16
  %434 = add nuw nsw i16 %433, 1
  %435 = and i16 %434, 1
  %436 = icmp eq i16 %435, 0
  %437 = add nuw nsw i16 %433, 2
  %438 = select i1 %436, i16 %434, i16 %437
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #10
  store i8 -61, ptr %44, align 2
  %439 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 7, ptr %439, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #10
  %440 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 0, ptr %440, align 4, !annotation !8
  %441 = load ptr, ptr %85, align 4
  %442 = load i8, ptr %441, align 4
  %443 = zext i8 %442 to i16
  store i16 %443, ptr %45, align 4
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %444, align 2
  store i16 2, ptr %440, align 4
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %445, align 4
  %446 = load i32, ptr @debug, align 4
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %450, label %448

448:                                              ; preds = %431
  %449 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 195, i32 noundef 7) #8
  br label %450

450:                                              ; preds = %448, %431
  %451 = load ptr, ptr %78, align 4
  %452 = call i32 @i2c_transfer(ptr noundef %451, ptr noundef nonnull %45, i32 noundef 1) #10
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %456, label %454

454:                                              ; preds = %450
  %455 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %452, i32 noundef 195, i32 noundef 7) #8
  br label %456

456:                                              ; preds = %454, %450
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #10
  %457 = zext i16 %438 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #10
  store i8 -56, ptr %42, align 2
  %458 = getelementptr inbounds i8, ptr %42, i32 1
  %459 = trunc i16 %438 to i8
  store i8 %459, ptr %458, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #10
  %460 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 0, ptr %460, align 4, !annotation !8
  %461 = load ptr, ptr %85, align 4
  %462 = load i8, ptr %461, align 4
  %463 = zext i8 %462 to i16
  store i16 %463, ptr %43, align 4
  %464 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %464, align 2
  store i16 2, ptr %460, align 4
  %465 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %465, align 4
  %466 = load i32, ptr @debug, align 4
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %470, label %468

468:                                              ; preds = %456
  %469 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 200, i32 noundef %457) #8
  br label %470

470:                                              ; preds = %468, %456
  %471 = load ptr, ptr %78, align 4
  %472 = call i32 @i2c_transfer(ptr noundef %471, ptr noundef nonnull %43, i32 noundef 1) #10
  %473 = icmp eq i32 %472, 1
  br i1 %473, label %476, label %474

474:                                              ; preds = %470
  %475 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %472, i32 noundef 200, i32 noundef %457) #8
  br label %476

476:                                              ; preds = %474, %470
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #10
  store i8 -60, ptr %40, align 2
  %477 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 9, ptr %477, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #10
  %478 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 0, ptr %478, align 4, !annotation !8
  %479 = load ptr, ptr %85, align 4
  %480 = load i8, ptr %479, align 4
  %481 = zext i8 %480 to i16
  store i16 %481, ptr %41, align 4
  %482 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %482, align 2
  store i16 2, ptr %478, align 4
  %483 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %483, align 4
  %484 = load i32, ptr @debug, align 4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %476
  %487 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 196, i32 noundef 9) #8
  br label %488

488:                                              ; preds = %486, %476
  %489 = load ptr, ptr %78, align 4
  %490 = call i32 @i2c_transfer(ptr noundef %489, ptr noundef nonnull %41, i32 noundef 1) #10
  %491 = icmp eq i32 %490, 1
  br i1 %491, label %494, label %492

492:                                              ; preds = %488
  %493 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %490, i32 noundef 196, i32 noundef 9) #8
  br label %494

494:                                              ; preds = %492, %488
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #10
  store i8 -57, ptr %38, align 2
  %495 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 18, ptr %495, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #10
  %496 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 0, ptr %496, align 4, !annotation !8
  %497 = load ptr, ptr %85, align 4
  %498 = load i8, ptr %497, align 4
  %499 = zext i8 %498 to i16
  store i16 %499, ptr %39, align 4
  %500 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %500, align 2
  store i16 2, ptr %496, align 4
  %501 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %501, align 4
  %502 = load i32, ptr @debug, align 4
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %506, label %504

504:                                              ; preds = %494
  %505 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 199, i32 noundef 18) #8
  br label %506

506:                                              ; preds = %504, %494
  %507 = load ptr, ptr %78, align 4
  %508 = call i32 @i2c_transfer(ptr noundef %507, ptr noundef nonnull %39, i32 noundef 1) #10
  %509 = icmp eq i32 %508, 1
  br i1 %509, label %512, label %510

510:                                              ; preds = %506
  %511 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %508, i32 noundef 199, i32 noundef 18) #8
  br label %512

512:                                              ; preds = %510, %506
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #10
  br label %669

513:                                              ; preds = %429
  %514 = icmp ult i32 %336, 20001000
  br i1 %514, label %515, label %593

515:                                              ; preds = %513
  %516 = trunc i32 %345 to i16
  %517 = udiv i16 -1020, %516
  %518 = add nuw nsw i16 %517, 1
  %519 = zext i16 %518 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #10
  store i8 -61, ptr %36, align 2
  %520 = getelementptr inbounds i8, ptr %36, i32 1
  %521 = trunc i16 %518 to i8
  store i8 %521, ptr %520, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #10
  %522 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 0, ptr %522, align 4, !annotation !8
  %523 = load ptr, ptr %85, align 4
  %524 = load i8, ptr %523, align 4
  %525 = zext i8 %524 to i16
  store i16 %525, ptr %37, align 4
  %526 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %526, align 2
  store i16 2, ptr %522, align 4
  %527 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %527, align 4
  %528 = load i32, ptr @debug, align 4
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %532, label %530

530:                                              ; preds = %515
  %531 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 195, i32 noundef %519) #8
  br label %532

532:                                              ; preds = %530, %515
  %533 = load ptr, ptr %78, align 4
  %534 = call i32 @i2c_transfer(ptr noundef %533, ptr noundef nonnull %37, i32 noundef 1) #10
  %535 = icmp eq i32 %534, 1
  br i1 %535, label %538, label %536

536:                                              ; preds = %532
  %537 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %534, i32 noundef 195, i32 noundef %519) #8
  br label %538

538:                                              ; preds = %536, %532
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %34) #10
  store i8 -56, ptr %34, align 2
  %539 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 14, ptr %539, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #10
  %540 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 0, ptr %540, align 4, !annotation !8
  %541 = load ptr, ptr %85, align 4
  %542 = load i8, ptr %541, align 4
  %543 = zext i8 %542 to i16
  store i16 %543, ptr %35, align 4
  %544 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %544, align 2
  store i16 2, ptr %540, align 4
  %545 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %545, align 4
  %546 = load i32, ptr @debug, align 4
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %550, label %548

548:                                              ; preds = %538
  %549 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 200, i32 noundef 14) #8
  br label %550

550:                                              ; preds = %548, %538
  %551 = load ptr, ptr %78, align 4
  %552 = call i32 @i2c_transfer(ptr noundef %551, ptr noundef nonnull %35, i32 noundef 1) #10
  %553 = icmp eq i32 %552, 1
  br i1 %553, label %556, label %554

554:                                              ; preds = %550
  %555 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %552, i32 noundef 200, i32 noundef 14) #8
  br label %556

556:                                              ; preds = %554, %550
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %34) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #10
  store i8 -60, ptr %32, align 2
  %557 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 7, ptr %557, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #10
  %558 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 0, ptr %558, align 4, !annotation !8
  %559 = load ptr, ptr %85, align 4
  %560 = load i8, ptr %559, align 4
  %561 = zext i8 %560 to i16
  store i16 %561, ptr %33, align 4
  %562 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %562, align 2
  store i16 2, ptr %558, align 4
  %563 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %563, align 4
  %564 = load i32, ptr @debug, align 4
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %556
  %567 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 196, i32 noundef 7) #8
  br label %568

568:                                              ; preds = %566, %556
  %569 = load ptr, ptr %78, align 4
  %570 = call i32 @i2c_transfer(ptr noundef %569, ptr noundef nonnull %33, i32 noundef 1) #10
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %574, label %572

572:                                              ; preds = %568
  %573 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %570, i32 noundef 196, i32 noundef 7) #8
  br label %574

574:                                              ; preds = %572, %568
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #10
  store i8 -57, ptr %30, align 2
  %575 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 24, ptr %575, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #10
  %576 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 0, ptr %576, align 4, !annotation !8
  %577 = load ptr, ptr %85, align 4
  %578 = load i8, ptr %577, align 4
  %579 = zext i8 %578 to i16
  store i16 %579, ptr %31, align 4
  %580 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %580, align 2
  store i16 2, ptr %576, align 4
  %581 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %581, align 4
  %582 = load i32, ptr @debug, align 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %586, label %584

584:                                              ; preds = %574
  %585 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 199, i32 noundef 24) #8
  br label %586

586:                                              ; preds = %584, %574
  %587 = load ptr, ptr %78, align 4
  %588 = call i32 @i2c_transfer(ptr noundef %587, ptr noundef nonnull %31, i32 noundef 1) #10
  %589 = icmp eq i32 %588, 1
  br i1 %589, label %592, label %590

590:                                              ; preds = %586
  %591 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %588, i32 noundef 199, i32 noundef 24) #8
  br label %592

592:                                              ; preds = %590, %586
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #10
  br label %669

593:                                              ; preds = %513
  %594 = udiv i32 129032, %345
  %595 = add nuw nsw i32 %594, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %28) #10
  store i8 -61, ptr %28, align 2
  %596 = getelementptr inbounds i8, ptr %28, i32 1
  %597 = trunc i32 %595 to i8
  store i8 %597, ptr %596, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #10
  %598 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 0, ptr %598, align 4, !annotation !8
  %599 = load ptr, ptr %85, align 4
  %600 = load i8, ptr %599, align 4
  %601 = zext i8 %600 to i16
  store i16 %601, ptr %29, align 4
  %602 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %602, align 2
  store i16 2, ptr %598, align 4
  %603 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %603, align 4
  %604 = load i32, ptr @debug, align 4
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %608, label %606

606:                                              ; preds = %593
  %607 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 195, i32 noundef %595) #8
  br label %608

608:                                              ; preds = %606, %593
  %609 = load ptr, ptr %78, align 4
  %610 = call i32 @i2c_transfer(ptr noundef %609, ptr noundef nonnull %29, i32 noundef 1) #10
  %611 = icmp eq i32 %610, 1
  br i1 %611, label %614, label %612

612:                                              ; preds = %608
  %613 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %610, i32 noundef 195, i32 noundef %595) #8
  br label %614

614:                                              ; preds = %612, %608
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %28) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #10
  store i8 -56, ptr %26, align 2
  %615 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 10, ptr %615, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #10
  %616 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 0, ptr %616, align 4, !annotation !8
  %617 = load ptr, ptr %85, align 4
  %618 = load i8, ptr %617, align 4
  %619 = zext i8 %618 to i16
  store i16 %619, ptr %27, align 4
  %620 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %620, align 2
  store i16 2, ptr %616, align 4
  %621 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %621, align 4
  %622 = load i32, ptr @debug, align 4
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %626, label %624

624:                                              ; preds = %614
  %625 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 200, i32 noundef 10) #8
  br label %626

626:                                              ; preds = %624, %614
  %627 = load ptr, ptr %78, align 4
  %628 = call i32 @i2c_transfer(ptr noundef %627, ptr noundef nonnull %27, i32 noundef 1) #10
  %629 = icmp eq i32 %628, 1
  br i1 %629, label %632, label %630

630:                                              ; preds = %626
  %631 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %628, i32 noundef 200, i32 noundef 10) #8
  br label %632

632:                                              ; preds = %630, %626
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #10
  store i8 -60, ptr %24, align 2
  %633 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 5, ptr %633, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #10
  %634 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 0, ptr %634, align 4, !annotation !8
  %635 = load ptr, ptr %85, align 4
  %636 = load i8, ptr %635, align 4
  %637 = zext i8 %636 to i16
  store i16 %637, ptr %25, align 4
  %638 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %638, align 2
  store i16 2, ptr %634, align 4
  %639 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %639, align 4
  %640 = load i32, ptr @debug, align 4
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %644, label %642

642:                                              ; preds = %632
  %643 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 196, i32 noundef 5) #8
  br label %644

644:                                              ; preds = %642, %632
  %645 = load ptr, ptr %78, align 4
  %646 = call i32 @i2c_transfer(ptr noundef %645, ptr noundef nonnull %25, i32 noundef 1) #10
  %647 = icmp eq i32 %646, 1
  br i1 %647, label %650, label %648

648:                                              ; preds = %644
  %649 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %646, i32 noundef 196, i32 noundef 5) #8
  br label %650

650:                                              ; preds = %648, %644
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #10
  store i8 -57, ptr %22, align 2
  %651 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 36, ptr %651, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #10
  %652 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 0, ptr %652, align 4, !annotation !8
  %653 = load ptr, ptr %85, align 4
  %654 = load i8, ptr %653, align 4
  %655 = zext i8 %654 to i16
  store i16 %655, ptr %23, align 4
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %656, align 2
  store i16 2, ptr %652, align 4
  %657 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %657, align 4
  %658 = load i32, ptr @debug, align 4
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %662, label %660

660:                                              ; preds = %650
  %661 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 199, i32 noundef 36) #8
  br label %662

662:                                              ; preds = %660, %650
  %663 = load ptr, ptr %78, align 4
  %664 = call i32 @i2c_transfer(ptr noundef %663, ptr noundef nonnull %23, i32 noundef 1) #10
  %665 = icmp eq i32 %664, 1
  br i1 %665, label %668, label %666

666:                                              ; preds = %662
  %667 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %664, i32 noundef 199, i32 noundef 36) #8
  br label %668

668:                                              ; preds = %666, %662
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #10
  br label %669

669:                                              ; preds = %668, %592, %512, %428
  %670 = load i32, ptr %335, align 4
  %671 = udiv i32 %670, 1000
  %672 = shl i32 %671, 16
  %673 = or i32 %672, 47872
  %674 = udiv i32 %673, 96000
  %675 = and i32 %674, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #10
  store i8 97, ptr %20, align 2
  %676 = getelementptr inbounds i8, ptr %20, i32 1
  %677 = trunc i32 %674 to i8
  store i8 %677, ptr %676, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #10
  %678 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 0, ptr %678, align 4, !annotation !8
  %679 = load ptr, ptr %85, align 4
  %680 = load i8, ptr %679, align 4
  %681 = zext i8 %680 to i16
  store i16 %681, ptr %21, align 4
  %682 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %682, align 2
  store i16 2, ptr %678, align 4
  %683 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %683, align 4
  %684 = load i32, ptr @debug, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %688, label %686

686:                                              ; preds = %669
  %687 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 97, i32 noundef %675) #8
  br label %688

688:                                              ; preds = %686, %669
  %689 = load ptr, ptr %78, align 4
  %690 = call i32 @i2c_transfer(ptr noundef %689, ptr noundef nonnull %21, i32 noundef 1) #10
  %691 = icmp eq i32 %690, 1
  br i1 %691, label %694, label %692

692:                                              ; preds = %688
  %693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %690, i32 noundef 97, i32 noundef %675) #8
  br label %694

694:                                              ; preds = %692, %688
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #10
  %695 = lshr i32 %674, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #10
  store i8 98, ptr %18, align 2
  %696 = getelementptr inbounds i8, ptr %18, i32 1
  %697 = trunc i32 %695 to i8
  store i8 %697, ptr %696, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #10
  %698 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 0, ptr %698, align 4, !annotation !8
  %699 = load ptr, ptr %85, align 4
  %700 = load i8, ptr %699, align 4
  %701 = zext i8 %700 to i16
  store i16 %701, ptr %19, align 4
  %702 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %702, align 2
  store i16 2, ptr %698, align 4
  %703 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %703, align 4
  %704 = load i32, ptr @debug, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %708, label %706

706:                                              ; preds = %694
  %707 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 98, i32 noundef %695) #8
  br label %708

708:                                              ; preds = %706, %694
  %709 = load ptr, ptr %78, align 4
  %710 = call i32 @i2c_transfer(ptr noundef %709, ptr noundef nonnull %19, i32 noundef 1) #10
  %711 = icmp eq i32 %710, 1
  br i1 %711, label %714, label %712

712:                                              ; preds = %708
  %713 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %710, i32 noundef 98, i32 noundef %695) #8
  br label %714

714:                                              ; preds = %712, %708
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #10
  store i8 86, ptr %16, align 2
  %715 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 0, ptr %715, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #10
  %716 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 0, ptr %716, align 4, !annotation !8
  %717 = load ptr, ptr %85, align 4
  %718 = load i8, ptr %717, align 4
  %719 = zext i8 %718 to i16
  store i16 %719, ptr %17, align 4
  %720 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %720, align 2
  store i16 2, ptr %716, align 4
  %721 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %721, align 4
  %722 = load i32, ptr @debug, align 4
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %726, label %724

724:                                              ; preds = %714
  %725 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 86, i32 noundef 0) #8
  br label %726

726:                                              ; preds = %724, %714
  %727 = load ptr, ptr %78, align 4
  %728 = call i32 @i2c_transfer(ptr noundef %727, ptr noundef nonnull %17, i32 noundef 1) #10
  %729 = icmp eq i32 %728, 1
  br i1 %729, label %732, label %730

730:                                              ; preds = %726
  %731 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %728, i32 noundef 86, i32 noundef 0) #8
  br label %732

732:                                              ; preds = %730, %726
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #10
  store i8 118, ptr %14, align 2
  %733 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 0, ptr %733, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %734 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 0, ptr %734, align 4, !annotation !8
  %735 = load ptr, ptr %85, align 4
  %736 = load i8, ptr %735, align 4
  %737 = zext i8 %736 to i16
  store i16 %737, ptr %15, align 4
  %738 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %738, align 2
  store i16 2, ptr %734, align 4
  %739 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %739, align 4
  %740 = load i32, ptr @debug, align 4
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %744, label %742

742:                                              ; preds = %732
  %743 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 118, i32 noundef 0) #8
  br label %744

744:                                              ; preds = %742, %732
  %745 = load ptr, ptr %78, align 4
  %746 = call i32 @i2c_transfer(ptr noundef %745, ptr noundef nonnull %15, i32 noundef 1) #10
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %750, label %748

748:                                              ; preds = %744
  %749 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %746, i32 noundef 118, i32 noundef 0) #8
  br label %750

750:                                              ; preds = %748, %744
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #10
  %751 = load ptr, ptr %85, align 4
  %752 = getelementptr inbounds %struct.ds3000_config, ptr %751, i32 0, i32 1
  %753 = load i8, ptr %752, align 1
  %754 = icmp eq i8 %753, 0
  br i1 %754, label %796, label %755

755:                                              ; preds = %750
  %756 = load i32, ptr %171, align 4
  %757 = icmp eq i32 %756, 6
  br i1 %757, label %777, label %758

758:                                              ; preds = %755
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #10
  store i8 -3, ptr %12, align 2
  %759 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 -128, ptr %759, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %760 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %760, align 4, !annotation !8
  %761 = load ptr, ptr %85, align 4
  %762 = load i8, ptr %761, align 4
  %763 = zext i8 %762 to i16
  store i16 %763, ptr %13, align 4
  %764 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %764, align 2
  %765 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %765, align 4
  %766 = load i32, ptr @debug, align 4
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %770, label %768

768:                                              ; preds = %758
  %769 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 253, i32 noundef 128) #8
  br label %770

770:                                              ; preds = %768, %758
  %771 = load ptr, ptr %78, align 4
  %772 = call i32 @i2c_transfer(ptr noundef %771, ptr noundef nonnull %13, i32 noundef 1) #10
  %773 = icmp eq i32 %772, 1
  br i1 %773, label %776, label %774

774:                                              ; preds = %770
  %775 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %772, i32 noundef 253, i32 noundef 128) #8
  br label %776

776:                                              ; preds = %774, %770
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #10
  br label %796

777:                                              ; preds = %755
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i8 -3, ptr %10, align 2
  %778 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 1, ptr %778, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  %779 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %779, align 4, !annotation !8
  %780 = load ptr, ptr %85, align 4
  %781 = load i8, ptr %780, align 4
  %782 = zext i8 %781 to i16
  store i16 %782, ptr %11, align 4
  %783 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %783, align 2
  %784 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %784, align 4
  %785 = load i32, ptr @debug, align 4
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %789, label %787

787:                                              ; preds = %777
  %788 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 253, i32 noundef 1) #8
  br label %789

789:                                              ; preds = %787, %777
  %790 = load ptr, ptr %78, align 4
  %791 = call i32 @i2c_transfer(ptr noundef %790, ptr noundef nonnull %11, i32 noundef 1) #10
  %792 = icmp eq i32 %791, 1
  br i1 %792, label %795, label %793

793:                                              ; preds = %789
  %794 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %791, i32 noundef 253, i32 noundef 1) #8
  br label %795

795:                                              ; preds = %793, %789
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  br label %796

796:                                              ; preds = %795, %776, %750
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i8 0, ptr %8, align 2
  %797 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %797, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #10
  %798 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %798, align 4, !annotation !8
  %799 = load ptr, ptr %85, align 4
  %800 = load i8, ptr %799, align 4
  %801 = zext i8 %800 to i16
  store i16 %801, ptr %9, align 4
  %802 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %802, align 2
  %803 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %803, align 4
  %804 = load i32, ptr @debug, align 4
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %808, label %806

806:                                              ; preds = %796
  %807 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 0, i32 noundef 0) #8
  br label %808

808:                                              ; preds = %806, %796
  %809 = load ptr, ptr %78, align 4
  %810 = call i32 @i2c_transfer(ptr noundef %809, ptr noundef nonnull %9, i32 noundef 1) #10
  %811 = icmp eq i32 %810, 1
  br i1 %811, label %814, label %812

812:                                              ; preds = %808
  %813 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %810, i32 noundef 0, i32 noundef 0) #8
  br label %814

814:                                              ; preds = %812, %808
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #10
  store i8 -78, ptr %6, align 2
  %815 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 0, ptr %815, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %816 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %816, align 4, !annotation !8
  %817 = load ptr, ptr %85, align 4
  %818 = load i8, ptr %817, align 4
  %819 = zext i8 %818 to i16
  store i16 %819, ptr %7, align 4
  %820 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %820, align 2
  %821 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %821, align 4
  %822 = load i32, ptr @debug, align 4
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %826, label %824

824:                                              ; preds = %814
  %825 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 178, i32 noundef 0) #8
  br label %826

826:                                              ; preds = %824, %814
  %827 = load ptr, ptr %78, align 4
  %828 = call i32 @i2c_transfer(ptr noundef %827, ptr noundef nonnull %7, i32 noundef 1) #10
  %829 = icmp eq i32 %828, 1
  br i1 %829, label %832, label %830

830:                                              ; preds = %826
  %831 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %828, i32 noundef 178, i32 noundef 0) #8
  br label %832

832:                                              ; preds = %830, %826
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #10
  %833 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 9
  %834 = load ptr, ptr %833, align 4
  %835 = icmp eq ptr %834, null
  br i1 %835, label %889, label %836

836:                                              ; preds = %832
  %837 = call i32 %834(ptr noundef %0, ptr noundef nonnull %76) #10
  %838 = load i32, ptr %76, align 4
  %839 = load i32, ptr %79, align 4
  %840 = sub i32 %838, %839
  %841 = load ptr, ptr %77, align 4
  %842 = shl i32 %840, 17
  %843 = or i32 %842, 96000
  %844 = sdiv i32 %843, 192000
  %845 = icmp slt i32 %843, -191999
  %846 = add nsw i32 %844, 65536
  %847 = select i1 %845, i32 %846, i32 %844
  %848 = ashr i32 %847, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i8 95, ptr %4, align 2
  %849 = getelementptr inbounds i8, ptr %4, i32 1
  %850 = trunc i32 %848 to i8
  store i8 %850, ptr %849, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %851 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %851, align 4, !annotation !8
  %852 = getelementptr inbounds %struct.ds3000_state, ptr %841, i32 0, i32 1
  %853 = load ptr, ptr %852, align 4
  %854 = load i8, ptr %853, align 4
  %855 = zext i8 %854 to i16
  store i16 %855, ptr %5, align 4
  %856 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %856, align 2
  %857 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %857, align 4
  %858 = load i32, ptr @debug, align 4
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %862, label %860

860:                                              ; preds = %836
  %861 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 95, i32 noundef %848) #8
  br label %862

862:                                              ; preds = %860, %836
  %863 = load ptr, ptr %841, align 4
  %864 = call i32 @i2c_transfer(ptr noundef %863, ptr noundef nonnull %5, i32 noundef 1) #10
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %868, label %866

866:                                              ; preds = %862
  %867 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %864, i32 noundef 95, i32 noundef %848) #8
  br label %868

868:                                              ; preds = %866, %862
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  %869 = and i32 %847, 255
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i8 94, ptr %2, align 2
  %870 = getelementptr inbounds i8, ptr %2, i32 1
  %871 = trunc i32 %847 to i8
  store i8 %871, ptr %870, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %872 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %872, align 4, !annotation !8
  %873 = load ptr, ptr %852, align 4
  %874 = load i8, ptr %873, align 4
  %875 = zext i8 %874 to i16
  store i16 %875, ptr %3, align 4
  %876 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %876, align 2
  %877 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %877, align 4
  %878 = load i32, ptr @debug, align 4
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %882, label %880

880:                                              ; preds = %868
  %881 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 94, i32 noundef %869) #8
  br label %882

882:                                              ; preds = %880, %868
  %883 = load ptr, ptr %841, align 4
  %884 = call i32 @i2c_transfer(ptr noundef %883, ptr noundef nonnull %3, i32 noundef 1) #10
  %885 = icmp eq i32 %884, 1
  br i1 %885, label %888, label %886

886:                                              ; preds = %882
  %887 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %884, i32 noundef 94, i32 noundef %869) #8
  br label %888

888:                                              ; preds = %886, %882
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %889

889:                                              ; preds = %888, %832
  br label %890

890:                                              ; preds = %920, %889
  %891 = phi i32 [ %921, %920 ], [ 0, %889 ]
  %892 = load ptr, ptr %77, align 4
  %893 = load i32, ptr %171, align 4
  switch i32 %893, label %920 [
    i32 5, label %894
    i32 6, label %898
  ]

894:                                              ; preds = %890
  %895 = call fastcc i32 @ds3000_readreg(ptr noundef %892, i8 noundef zeroext -47) #10
  %896 = and i32 %895, 7
  %897 = icmp eq i32 %896, 7
  br i1 %897, label %902, label %904

898:                                              ; preds = %890
  %899 = call fastcc i32 @ds3000_readreg(ptr noundef %892, i8 noundef zeroext 13) #10
  %900 = and i32 %899, 143
  %901 = icmp eq i32 %900, 143
  br i1 %901, label %902, label %904

902:                                              ; preds = %898, %894
  %903 = phi i32 [ %895, %894 ], [ %899, %898 ]
  br label %904

904:                                              ; preds = %902, %898, %894
  %905 = phi i32 [ 1, %902 ], [ 0, %898 ], [ 0, %894 ]
  %906 = phi i1 [ false, %902 ], [ true, %898 ], [ true, %894 ]
  %907 = phi i32 [ %903, %902 ], [ %899, %898 ], [ %895, %894 ]
  %908 = getelementptr inbounds %struct.ds3000_state, ptr %892, i32 0, i32 1
  %909 = load ptr, ptr %908, align 4
  %910 = getelementptr inbounds %struct.ds3000_config, ptr %909, i32 0, i32 3
  %911 = load ptr, ptr %910, align 4
  %912 = icmp eq ptr %911, null
  br i1 %912, label %914, label %913

913:                                              ; preds = %904
  call void %911(ptr noundef %0, i32 noundef %905) #10
  br label %914

914:                                              ; preds = %913, %904
  %915 = load i32, ptr @debug, align 4
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %919, label %917

917:                                              ; preds = %914
  %918 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.ds3000_read_status, i32 noundef %907) #8
  br label %919

919:                                              ; preds = %917, %914
  br i1 %906, label %920, label %923

920:                                              ; preds = %919, %890
  call void @msleep(i32 noundef 10) #10
  %921 = add nuw nsw i32 %891, 1
  %922 = icmp eq i32 %921, 30
  br i1 %922, label %923, label %890

923:                                              ; preds = %920, %919, %342, %339, %170
  %924 = phi i32 [ -22, %170 ], [ -22, %342 ], [ -22, %339 ], [ 0, %919 ], [ 0, %920 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %76) #10
  ret i32 %924
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_read_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %33 [
    i32 5, label %7
    i32 6, label %11
  ]

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @ds3000_readreg(ptr noundef %4, i8 noundef zeroext -47)
  %9 = and i32 %8, 7
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %15, label %17

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @ds3000_readreg(ptr noundef %4, i8 noundef zeroext 13)
  %13 = and i32 %12, 143
  %14 = icmp eq i32 %13, 143
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %8, %7 ], [ %12, %11 ]
  store i32 31, ptr %1, align 4
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = phi i32 [ %12, %11 ], [ %8, %7 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.ds3000_state, ptr %4, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.ds3000_config, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  tail call void %22(ptr noundef %0, i32 noundef %27) #10
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.ds3000_read_status, i32 noundef %18) #8
  br label %33

33:                                               ; preds = %31, %28, %2
  %34 = phi i32 [ -22, %2 ], [ 0, %31 ], [ 0, %28 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ds3000_read_ber) #8
  br label %23

23:                                               ; preds = %21, %2
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %182 [
    i32 5, label %26
    i32 6, label %94
  ]

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #10
  store i8 -7, ptr %15, align 2
  %27 = getelementptr inbounds i8, ptr %15, i32 1
  store i8 4, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %28 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %28, align 4, !annotation !8
  %29 = getelementptr inbounds %struct.ds3000_state, ptr %18, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i16
  store i16 %32, ptr %16, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %33, align 2
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %34, align 4
  %35 = load i32, ptr @debug, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 249, i32 noundef 4) #8
  br label %39

39:                                               ; preds = %37, %26
  %40 = load ptr, ptr %18, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %16, i32 noundef 1) #10
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %41, i32 noundef 249, i32 noundef 4) #8
  br label %45

45:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #10
  %46 = call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -8)
  %47 = and i32 %46, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -9)
  %51 = shl i32 %50, 8
  %52 = call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -10)
  %53 = or i32 %51, %52
  store i32 %53, ptr %1, align 4
  %54 = and i32 %46, 239
  %55 = or i32 %54, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i8 -8, ptr %13, align 2
  %56 = getelementptr inbounds i8, ptr %13, i32 1
  %57 = trunc i32 %55 to i8
  store i8 %57, ptr %56, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %58 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %58, align 4, !annotation !8
  %59 = load ptr, ptr %29, align 4
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %14, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %63, align 4
  %64 = load i32, ptr @debug, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %49
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 248, i32 noundef %55) #8
  br label %68

68:                                               ; preds = %66, %49
  %69 = load ptr, ptr %18, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %14, i32 noundef 1) #10
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %70, i32 noundef 248, i32 noundef %55) #8
  br label %74

74:                                               ; preds = %72, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i8 -8, ptr %11, align 2
  %75 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %57, ptr %75, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %76 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %76, align 4, !annotation !8
  %77 = load ptr, ptr %29, align 4
  %78 = load i8, ptr %77, align 4
  %79 = zext i8 %78 to i16
  store i16 %79, ptr %12, align 4
  %80 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %80, align 2
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %81, align 4
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %74
  %85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 248, i32 noundef %55) #8
  br label %86

86:                                               ; preds = %84, %74
  %87 = load ptr, ptr %18, align 4
  %88 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %12, i32 noundef 1) #10
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %88, i32 noundef 248, i32 noundef %55) #8
  br label %92

92:                                               ; preds = %90, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  br label %182

93:                                               ; preds = %45
  store i32 -1, ptr %1, align 4
  br label %182

94:                                               ; preds = %23
  %95 = tail call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -41)
  %96 = shl i32 %95, 16
  %97 = tail call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -42)
  %98 = shl i32 %97, 8
  %99 = or i32 %98, %96
  %100 = tail call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -43)
  %101 = or i32 %99, %100
  %102 = tail call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -8)
  %103 = tail call fastcc i32 @ds3000_readreg(ptr noundef %18, i8 noundef zeroext -9)
  %104 = icmp ugt i32 %101, 750
  br i1 %104, label %105, label %181

105:                                              ; preds = %94
  %106 = shl i32 %102, 8
  %107 = or i32 %106, %103
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 -47, ptr %9, align 2
  %108 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 1, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %109 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %109, align 4, !annotation !8
  %110 = getelementptr inbounds %struct.ds3000_state, ptr %18, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = load i8, ptr %111, align 4
  %113 = zext i8 %112 to i16
  store i16 %113, ptr %10, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %114, align 2
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %115, align 4
  %116 = load i32, ptr @debug, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %105
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 209, i32 noundef 1) #8
  br label %120

120:                                              ; preds = %118, %105
  %121 = load ptr, ptr %18, align 4
  %122 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %10, i32 noundef 1) #10
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %122, i32 noundef 209, i32 noundef 1) #8
  br label %126

126:                                              ; preds = %124, %120
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -7, ptr %7, align 2
  %127 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 1, ptr %127, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %128 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %128, align 4, !annotation !8
  %129 = load ptr, ptr %110, align 4
  %130 = load i8, ptr %129, align 4
  %131 = zext i8 %130 to i16
  store i16 %131, ptr %8, align 4
  %132 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %132, align 2
  %133 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %133, align 4
  %134 = load i32, ptr @debug, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %126
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 249, i32 noundef 1) #8
  br label %138

138:                                              ; preds = %136, %126
  %139 = load ptr, ptr %18, align 4
  %140 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %8, i32 noundef 1) #10
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %144, label %142

142:                                              ; preds = %138
  %143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %140, i32 noundef 249, i32 noundef 1) #8
  br label %144

144:                                              ; preds = %142, %138
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -7, ptr %5, align 2
  %145 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 0, ptr %145, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %146 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %146, align 4, !annotation !8
  %147 = load ptr, ptr %110, align 4
  %148 = load i8, ptr %147, align 4
  %149 = zext i8 %148 to i16
  store i16 %149, ptr %6, align 4
  %150 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %150, align 2
  %151 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %151, align 4
  %152 = load i32, ptr @debug, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %144
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 249, i32 noundef 0) #8
  br label %156

156:                                              ; preds = %154, %144
  %157 = load ptr, ptr %18, align 4
  %158 = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %6, i32 noundef 1) #10
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %158, i32 noundef 249, i32 noundef 0) #8
  br label %162

162:                                              ; preds = %160, %156
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -47, ptr %3, align 2
  %163 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 0, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %164 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %164, align 4, !annotation !8
  %165 = load ptr, ptr %110, align 4
  %166 = load i8, ptr %165, align 4
  %167 = zext i8 %166 to i16
  store i16 %167, ptr %4, align 4
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %168, align 2
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %169, align 4
  %170 = load i32, ptr @debug, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %162
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 209, i32 noundef 0) #8
  br label %174

174:                                              ; preds = %172, %162
  %175 = load ptr, ptr %18, align 4
  %176 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %4, i32 noundef 1) #10
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %176, i32 noundef 209, i32 noundef 0) #8
  br label %180

180:                                              ; preds = %178, %174
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  store i32 %107, ptr %1, align 4
  br label %182

181:                                              ; preds = %94
  store i32 -1, ptr %1, align 4
  br label %182

182:                                              ; preds = %181, %180, %93, %92, %23
  %183 = phi i32 [ -22, %23 ], [ 0, %180 ], [ 0, %181 ], [ 0, %92 ], [ 0, %93 ]
  ret i32 %183
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_read_signal_strength(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 13
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 %4(ptr noundef %0, ptr noundef %1) #10
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ds3000_read_snr) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %86 [
    i32 5, label %12
    i32 6, label %37
  ]

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @ds3000_readreg(ptr noundef %4, i8 noundef zeroext -1)
  %14 = trunc i32 %13 to i8
  %15 = lshr i8 %14, 3
  %16 = icmp ult i8 %14, 8
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = tail call i8 @llvm.umin.i8(i8 %15, i8 20)
  %19 = zext i8 %18 to i32
  %20 = add nsw i32 %19, -1
  %21 = getelementptr [20 x i16], ptr @ds3000_read_snr.dvbs_snr_tab, i32 0, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = mul nuw nsw i32 %23, 10
  %25 = udiv i32 %24, 23026
  %26 = trunc i32 %25 to i16
  %27 = mul i16 %26, 5240
  br label %28

28:                                               ; preds = %17, %12
  %29 = phi i16 [ %27, %17 ], [ 0, %12 ]
  %30 = phi i8 [ %18, %17 ], [ %15, %12 ]
  store i16 %29, ptr %1, align 2
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %86, label %33

33:                                               ; preds = %28
  %34 = zext i8 %30 to i32
  %35 = zext i16 %29 to i32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.ds3000_read_snr, i32 noundef %34, i32 noundef %35) #8
  br label %86

37:                                               ; preds = %9
  %38 = tail call fastcc i32 @ds3000_readreg(ptr noundef %4, i8 noundef zeroext -116)
  %39 = and i32 %38, 63
  %40 = tail call fastcc i32 @ds3000_readreg(ptr noundef %4, i8 noundef zeroext -115)
  %41 = shl i32 %40, 4
  %42 = add i32 %41, %39
  %43 = tail call fastcc i32 @ds3000_readreg(ptr noundef %4, i8 noundef zeroext -114)
  %44 = mul i32 %43, %43
  %45 = lshr i32 %44, 1
  %46 = icmp ult i32 %44, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i16 0, ptr %1, align 2
  br label %86

48:                                               ; preds = %37
  %49 = icmp eq i32 %42, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  store i16 -1, ptr %1, align 2
  br label %86

51:                                               ; preds = %48
  %52 = icmp ugt i32 %45, %42
  br i1 %52, label %53, label %65

53:                                               ; preds = %51
  %54 = udiv i32 %45, %42
  %55 = trunc i32 %54 to i8
  %56 = and i32 %54, 255
  %57 = icmp ugt i32 %56, 80
  %58 = select i1 %57, i8 80, i8 %55
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -1
  %61 = getelementptr [80 x i16], ptr @ds3000_read_snr.dvbs2_snr_tab, i32 0, i32 %60
  %62 = load i16, ptr %61, align 2
  %63 = udiv i16 %62, 1000
  %64 = mul i16 %63, 3275
  br label %77

65:                                               ; preds = %51
  %66 = udiv i32 %42, %45
  %67 = trunc i32 %66 to i8
  %68 = and i32 %66, 255
  %69 = icmp ugt i32 %68, 80
  %70 = select i1 %69, i8 80, i8 %67
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -1
  %73 = getelementptr [80 x i16], ptr @ds3000_read_snr.dvbs2_snr_tab, i32 0, i32 %72
  %74 = load i16, ptr %73, align 2
  %75 = udiv i16 %74, 1000
  %76 = sub nsw i16 0, %75
  br label %77

77:                                               ; preds = %65, %53
  %78 = phi i16 [ %76, %65 ], [ %64, %53 ]
  %79 = phi i8 [ %70, %65 ], [ %58, %53 ]
  store i16 %78, ptr %1, align 2
  %80 = load i32, ptr @debug, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = zext i8 %79 to i32
  %84 = zext i16 %78 to i32
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.ds3000_read_snr, i32 noundef %83, i32 noundef %84) #8
  br label %86

86:                                               ; preds = %82, %77, %50, %47, %33, %28, %9
  %87 = phi i32 [ 0, %47 ], [ 0, %50 ], [ -22, %9 ], [ 0, %77 ], [ 0, %82 ], [ 0, %28 ], [ 0, %33 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ds3000_read_ucblocks) #8
  br label %13

13:                                               ; preds = %11, %2
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %77 [
    i32 5, label %16
    i32 6, label %63
  ]

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @ds3000_readreg(ptr noundef %8, i8 noundef zeroext -11)
  %18 = shl i32 %17, 8
  %19 = tail call fastcc i32 @ds3000_readreg(ptr noundef %8, i8 noundef zeroext -12)
  %20 = or i32 %18, %19
  store i32 %20, ptr %1, align 4
  %21 = tail call fastcc i32 @ds3000_readreg(ptr noundef %8, i8 noundef zeroext -8)
  %22 = and i32 %21, 223
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -8, ptr %5, align 2
  %23 = getelementptr inbounds i8, ptr %5, i32 1
  %24 = trunc i32 %22 to i8
  store i8 %24, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %25 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %25, align 4, !annotation !8
  %26 = getelementptr inbounds %struct.ds3000_state, ptr %8, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i16
  store i16 %29, ptr %6, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %31, align 4
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %16
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 248, i32 noundef %22) #8
  br label %36

36:                                               ; preds = %34, %16
  %37 = load ptr, ptr %8, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %6, i32 noundef 1) #10
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %38, i32 noundef 248, i32 noundef %22) #8
  br label %42

42:                                               ; preds = %40, %36
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  %43 = or i32 %22, 32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -8, ptr %3, align 2
  %44 = getelementptr inbounds i8, ptr %3, i32 1
  %45 = trunc i32 %43 to i8
  store i8 %45, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %46 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load ptr, ptr %26, align 4
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %4, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %51, align 4
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 248, i32 noundef %43) #8
  br label %56

56:                                               ; preds = %54, %42
  %57 = load ptr, ptr %8, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %4, i32 noundef 1) #10
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %58, i32 noundef 248, i32 noundef %43) #8
  br label %62

62:                                               ; preds = %60, %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %77

63:                                               ; preds = %13
  %64 = tail call fastcc i32 @ds3000_readreg(ptr noundef %8, i8 noundef zeroext -30)
  %65 = shl i32 %64, 8
  %66 = tail call fastcc i32 @ds3000_readreg(ptr noundef %8, i8 noundef zeroext -31)
  %67 = or i32 %65, %66
  %68 = trunc i32 %67 to i16
  %69 = and i32 %67, 65535
  %70 = getelementptr inbounds %struct.ds3000_state, ptr %8, i32 0, i32 3
  %71 = load i16, ptr %70, align 4
  %72 = zext i16 %71 to i32
  %73 = icmp ugt i32 %69, %72
  %74 = sub nsw i32 %72, %69
  %75 = sub nsw i32 %69, %72
  %76 = select i1 %73, i32 %75, i32 %74
  store i32 %76, ptr %1, align 4
  store i16 %68, ptr %70, align 4
  br label %77

77:                                               ; preds = %63, %62, %13
  %78 = phi i32 [ -22, %13 ], [ 0, %63 ], [ 0, %62 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_send_diseqc_msg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.ds3000_send_diseqc_msg) #8
  br label %21

21:                                               ; preds = %19, %2
  %22 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %58, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr @debug, align 4
  br label %27

27:                                               ; preds = %52, %25
  %28 = phi i8 [ %55, %52 ], [ %23, %25 ]
  %29 = phi i32 [ %56, %52 ], [ %26, %25 ]
  %30 = phi i32 [ %53, %52 ], [ 0, %25 ]
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = add nuw nsw i32 %30, 1
  %34 = zext i8 %28 to i32
  br label %52

35:                                               ; preds = %27
  %36 = getelementptr [6 x i8], ptr %1, i32 0, i32 %30
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %38) #8
  %40 = load i8, ptr %22, align 1
  %41 = load i32, ptr @debug, align 4
  %42 = add nuw nsw i32 %30, 1
  %43 = zext i8 %40 to i32
  %44 = icmp ult i32 %42, %43
  %45 = icmp ne i32 %41, 0
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #8
  %49 = load i32, ptr @debug, align 4
  %50 = load i8, ptr %22, align 1
  %51 = zext i8 %50 to i32
  br label %52

52:                                               ; preds = %47, %35, %32
  %53 = phi i32 [ %42, %47 ], [ %42, %35 ], [ %33, %32 ]
  %54 = phi i32 [ %51, %47 ], [ %43, %35 ], [ %34, %32 ]
  %55 = phi i8 [ %50, %47 ], [ %40, %35 ], [ %28, %32 ]
  %56 = phi i32 [ %49, %47 ], [ %41, %35 ], [ 0, %32 ]
  %57 = icmp ult i32 %53, %54
  br i1 %57, label %27, label %58

58:                                               ; preds = %52, %21
  %59 = tail call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -94)
  %60 = and i32 %59, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i8 -94, ptr %13, align 2
  %61 = getelementptr inbounds i8, ptr %13, i32 1
  %62 = trunc i32 %60 to i8
  store i8 %62, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %63 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 0, ptr %63, align 4, !annotation !8
  %64 = getelementptr inbounds %struct.ds3000_state, ptr %16, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %14, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %68, align 2
  store i16 2, ptr %63, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %69, align 4
  %70 = load i32, ptr @debug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %58
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %60) #8
  br label %74

74:                                               ; preds = %72, %58
  %75 = load ptr, ptr %16, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %75, ptr noundef nonnull %14, i32 noundef 1) #10
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %76, i32 noundef 162, i32 noundef %60) #8
  br label %80

80:                                               ; preds = %78, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  %81 = load i8, ptr %22, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %113, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds i8, ptr %11, i32 1
  %85 = getelementptr inbounds i8, ptr %12, i32 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  br label %88

88:                                               ; preds = %108, %83
  %89 = phi i32 [ 0, %83 ], [ %109, %108 ]
  %90 = add nuw nsw i32 %89, 163
  %91 = getelementptr [6 x i8], ptr %1, i32 0, i32 %89
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  %94 = trunc i32 %90 to i8
  store i8 %94, ptr %11, align 2
  store i8 %92, ptr %84, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  store i32 0, ptr %85, align 4, !annotation !8
  %95 = load ptr, ptr %64, align 4
  %96 = load i8, ptr %95, align 4
  %97 = zext i8 %96 to i16
  store i16 %97, ptr %12, align 4
  store i16 0, ptr %86, align 2
  store i16 2, ptr %85, align 4
  store ptr %11, ptr %87, align 4
  %98 = load i32, ptr @debug, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %88
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %90, i32 noundef %93) #8
  br label %102

102:                                              ; preds = %100, %88
  %103 = load ptr, ptr %16, align 4
  %104 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %12, i32 noundef 1) #10
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  %107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %104, i32 noundef %90, i32 noundef %93) #8
  br label %108

108:                                              ; preds = %106, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  %109 = add nuw nsw i32 %89, 1
  %110 = load i8, ptr %22, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp ult i32 %109, %111
  br i1 %112, label %88, label %113

113:                                              ; preds = %108, %80
  %114 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %115 = load i8, ptr %22, align 1
  %116 = shl i8 %115, 3
  %117 = add i8 %116, -1
  %118 = zext i8 %117 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 -95, ptr %9, align 2
  %119 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %117, ptr %119, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %120 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 0, ptr %120, align 4, !annotation !8
  %121 = load ptr, ptr %64, align 4
  %122 = load i8, ptr %121, align 4
  %123 = zext i8 %122 to i16
  store i16 %123, ptr %10, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %124, align 2
  store i16 2, ptr %120, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %125, align 4
  %126 = load i32, ptr @debug, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %113
  %129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 161, i32 noundef %118) #8
  br label %130

130:                                              ; preds = %128, %113
  %131 = load ptr, ptr %16, align 4
  %132 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %10, i32 noundef 1) #10
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %132, i32 noundef 161, i32 noundef %118) #8
  br label %136

136:                                              ; preds = %134, %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  %137 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %138 = and i32 %137, 64
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %241, label %140

140:                                              ; preds = %136
  call void @msleep(i32 noundef 10) #10
  %141 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %142 = and i32 %141, 64
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %241, label %144

144:                                              ; preds = %140
  call void @msleep(i32 noundef 10) #10
  %145 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %146 = and i32 %145, 64
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %241, label %148

148:                                              ; preds = %144
  call void @msleep(i32 noundef 10) #10
  %149 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %150 = and i32 %149, 64
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %241, label %152

152:                                              ; preds = %148
  call void @msleep(i32 noundef 10) #10
  %153 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %154 = and i32 %153, 64
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %241, label %156

156:                                              ; preds = %152
  call void @msleep(i32 noundef 10) #10
  %157 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %158 = and i32 %157, 64
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %241, label %160

160:                                              ; preds = %156
  call void @msleep(i32 noundef 10) #10
  %161 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %162 = and i32 %161, 64
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %241, label %164

164:                                              ; preds = %160
  call void @msleep(i32 noundef 10) #10
  %165 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %166 = and i32 %165, 64
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %241, label %168

168:                                              ; preds = %164
  call void @msleep(i32 noundef 10) #10
  %169 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %170 = and i32 %169, 64
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %241, label %172

172:                                              ; preds = %168
  call void @msleep(i32 noundef 10) #10
  %173 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %174 = and i32 %173, 64
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %241, label %176

176:                                              ; preds = %172
  call void @msleep(i32 noundef 10) #10
  %177 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %178 = and i32 %177, 64
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %241, label %180

180:                                              ; preds = %176
  call void @msleep(i32 noundef 10) #10
  %181 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %182 = and i32 %181, 64
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %241, label %184

184:                                              ; preds = %180
  call void @msleep(i32 noundef 10) #10
  %185 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %186 = and i32 %185, 64
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %241, label %188

188:                                              ; preds = %184
  call void @msleep(i32 noundef 10) #10
  %189 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %190 = and i32 %189, 64
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %241, label %192

192:                                              ; preds = %188
  call void @msleep(i32 noundef 10) #10
  %193 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %194 = and i32 %193, 64
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %241, label %196

196:                                              ; preds = %192
  call void @msleep(i32 noundef 10) #10
  %197 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %198 = and i32 %197, 63
  %199 = or i32 %198, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -95, ptr %7, align 2
  %200 = getelementptr inbounds i8, ptr %7, i32 1
  %201 = trunc i32 %199 to i8
  store i8 %201, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %202 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %202, align 4, !annotation !8
  %203 = load ptr, ptr %64, align 4
  %204 = load i8, ptr %203, align 4
  %205 = zext i8 %204 to i16
  store i16 %205, ptr %8, align 4
  %206 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %206, align 2
  %207 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %207, align 4
  %208 = load i32, ptr @debug, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %196
  %211 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 161, i32 noundef %199) #8
  br label %212

212:                                              ; preds = %210, %196
  %213 = load ptr, ptr %16, align 4
  %214 = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %8, i32 noundef 1) #10
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %218, label %216

216:                                              ; preds = %212
  %217 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %214, i32 noundef 161, i32 noundef %199) #8
  br label %218

218:                                              ; preds = %216, %212
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %219 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -94)
  %220 = and i32 %219, 63
  %221 = or i32 %220, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -94, ptr %5, align 2
  %222 = getelementptr inbounds i8, ptr %5, i32 1
  %223 = trunc i32 %221 to i8
  store i8 %223, ptr %222, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %224 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %224, align 4, !annotation !8
  %225 = load ptr, ptr %64, align 4
  %226 = load i8, ptr %225, align 4
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %6, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %228, align 2
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %229, align 4
  %230 = load i32, ptr @debug, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %218
  %233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %221) #8
  br label %234

234:                                              ; preds = %232, %218
  %235 = load ptr, ptr %16, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %6, i32 noundef 1) #10
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %240, label %238

238:                                              ; preds = %234
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %236, i32 noundef 162, i32 noundef %221) #8
  br label %240

240:                                              ; preds = %238, %234
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %264

241:                                              ; preds = %192, %188, %184, %180, %176, %172, %168, %164, %160, %156, %152, %148, %144, %140, %136
  %242 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -94)
  %243 = and i32 %242, 63
  %244 = or i32 %243, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -94, ptr %3, align 2
  %245 = getelementptr inbounds i8, ptr %3, i32 1
  %246 = trunc i32 %244 to i8
  store i8 %246, ptr %245, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %247 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %247, align 4, !annotation !8
  %248 = load ptr, ptr %64, align 4
  %249 = load i8, ptr %248, align 4
  %250 = zext i8 %249 to i16
  store i16 %250, ptr %4, align 4
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %251, align 2
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %252, align 4
  %253 = load i32, ptr @debug, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %241
  %256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %244) #8
  br label %257

257:                                              ; preds = %255, %241
  %258 = load ptr, ptr %16, align 4
  %259 = call i32 @i2c_transfer(ptr noundef %258, ptr noundef nonnull %4, i32 noundef 1) #10
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %259, i32 noundef 162, i32 noundef %244) #8
  br label %263

263:                                              ; preds = %261, %257
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %264

264:                                              ; preds = %263, %240
  %265 = phi i32 [ -110, %240 ], [ 0, %263 ]
  ret i32 %265
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_diseqc_send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.ds3000_diseqc_send_burst) #8
  br label %21

21:                                               ; preds = %19, %2
  %22 = tail call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -94)
  %23 = and i32 %22, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i8 -94, ptr %13, align 2
  %24 = getelementptr inbounds i8, ptr %13, i32 1
  %25 = trunc i32 %23 to i8
  store i8 %25, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #10
  %26 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 0, ptr %26, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.ds3000_state, ptr %16, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %14, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %31, align 2
  store i16 2, ptr %26, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %32, align 4
  %33 = load i32, ptr @debug, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %21
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %23) #8
  br label %37

37:                                               ; preds = %35, %21
  %38 = load ptr, ptr %16, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %14, i32 noundef 1) #10
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %39, i32 noundef 162, i32 noundef %23) #8
  br label %43

43:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  switch i32 %1, label %170 [
    i32 0, label %44
    i32 1, label %63
  ]

44:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i8 -95, ptr %11, align 2
  %45 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 2, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  %46 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load ptr, ptr %27, align 4
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %12, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %51, align 4
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 161, i32 noundef 2) #8
  br label %56

56:                                               ; preds = %54, %44
  %57 = load ptr, ptr %16, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %57, ptr noundef nonnull %12, i32 noundef 1) #10
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %58, i32 noundef 161, i32 noundef 2) #8
  br label %62

62:                                               ; preds = %60, %56
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  br label %82

63:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #10
  store i8 -95, ptr %9, align 2
  %64 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 1, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  %65 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %65, align 4, !annotation !8
  %66 = load ptr, ptr %27, align 4
  %67 = load i8, ptr %66, align 4
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %10, align 4
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %69, align 2
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %70, align 4
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %63
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 161, i32 noundef 1) #8
  br label %75

75:                                               ; preds = %73, %63
  %76 = load ptr, ptr %16, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %10, i32 noundef 1) #10
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %77, i32 noundef 161, i32 noundef 1) #8
  br label %81

81:                                               ; preds = %79, %75
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #10
  br label %82

82:                                               ; preds = %81, %62
  call void @msleep(i32 noundef 13) #10
  %83 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %84 = and i32 %83, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %147, label %86

86:                                               ; preds = %82
  call void @msleep(i32 noundef 1) #10
  %87 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %88 = and i32 %87, 64
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %147, label %90

90:                                               ; preds = %86
  call void @msleep(i32 noundef 1) #10
  %91 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %92 = and i32 %91, 64
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %147, label %94

94:                                               ; preds = %90
  call void @msleep(i32 noundef 1) #10
  %95 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %96 = and i32 %95, 64
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %147, label %98

98:                                               ; preds = %94
  call void @msleep(i32 noundef 1) #10
  %99 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %100 = and i32 %99, 64
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %147, label %102

102:                                              ; preds = %98
  call void @msleep(i32 noundef 1) #10
  %103 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -95)
  %104 = and i32 %103, 63
  %105 = or i32 %104, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -95, ptr %7, align 2
  %106 = getelementptr inbounds i8, ptr %7, i32 1
  %107 = trunc i32 %105 to i8
  store i8 %107, ptr %106, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %108 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %108, align 4, !annotation !8
  %109 = load ptr, ptr %27, align 4
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i16
  store i16 %111, ptr %8, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %112, align 2
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %113, align 4
  %114 = load i32, ptr @debug, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %102
  %117 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 161, i32 noundef %105) #8
  br label %118

118:                                              ; preds = %116, %102
  %119 = load ptr, ptr %16, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %8, i32 noundef 1) #10
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %120, i32 noundef 161, i32 noundef %105) #8
  br label %124

124:                                              ; preds = %122, %118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  %125 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -94)
  %126 = and i32 %125, 63
  %127 = or i32 %126, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -94, ptr %5, align 2
  %128 = getelementptr inbounds i8, ptr %5, i32 1
  %129 = trunc i32 %127 to i8
  store i8 %129, ptr %128, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %130 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %130, align 4, !annotation !8
  %131 = load ptr, ptr %27, align 4
  %132 = load i8, ptr %131, align 4
  %133 = zext i8 %132 to i16
  store i16 %133, ptr %6, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %134, align 2
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %135, align 4
  %136 = load i32, ptr @debug, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %124
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %127) #8
  br label %140

140:                                              ; preds = %138, %124
  %141 = load ptr, ptr %16, align 4
  %142 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %6, i32 noundef 1) #10
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %142, i32 noundef 162, i32 noundef %127) #8
  br label %146

146:                                              ; preds = %144, %140
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %170

147:                                              ; preds = %98, %94, %90, %86, %82
  %148 = call fastcc i32 @ds3000_readreg(ptr noundef %16, i8 noundef zeroext -94)
  %149 = and i32 %148, 63
  %150 = or i32 %149, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -94, ptr %3, align 2
  %151 = getelementptr inbounds i8, ptr %3, i32 1
  %152 = trunc i32 %150 to i8
  store i8 %152, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %153 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %153, align 4, !annotation !8
  %154 = load ptr, ptr %27, align 4
  %155 = load i8, ptr %154, align 4
  %156 = zext i8 %155 to i16
  store i16 %156, ptr %4, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %157, align 2
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %158, align 4
  %159 = load i32, ptr @debug, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %147
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %150) #8
  br label %163

163:                                              ; preds = %161, %147
  %164 = load ptr, ptr %16, align 4
  %165 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %4, i32 noundef 1) #10
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %169, label %167

167:                                              ; preds = %163
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %165, i32 noundef 162, i32 noundef %150) #8
  br label %169

169:                                              ; preds = %167, %163
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %170

170:                                              ; preds = %169, %146, %43
  %171 = phi i32 [ -110, %146 ], [ 0, %169 ], [ -22, %43 ]
  ret i32 %171
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ds3000_set_tone, i32 noundef %1) #8
  br label %15

15:                                               ; preds = %13, %2
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.ds3000_set_tone, i32 noundef %1) #8
  br label %98

19:                                               ; preds = %15
  %20 = tail call fastcc i32 @ds3000_readreg(ptr noundef %10, i8 noundef zeroext -94)
  %21 = and i32 %20, 63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i8 -94, ptr %7, align 2
  %22 = getelementptr inbounds i8, ptr %7, i32 1
  %23 = trunc i32 %21 to i8
  store i8 %23, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %24 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %24, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.ds3000_state, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %8, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %30, align 4
  %31 = load i32, ptr @debug, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %21) #8
  br label %35

35:                                               ; preds = %33, %19
  %36 = load ptr, ptr %10, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %8, i32 noundef 1) #10
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %37, i32 noundef 162, i32 noundef %21) #8
  br label %41

41:                                               ; preds = %39, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  switch i32 %1, label %98 [
    i32 0, label %42
    i32 1, label %70
  ]

42:                                               ; preds = %41
  %43 = load i32, ptr @debug, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.ds3000_set_tone) #8
  br label %47

47:                                               ; preds = %45, %42
  %48 = call fastcc i32 @ds3000_readreg(ptr noundef %10, i8 noundef zeroext -95)
  %49 = and i32 %48, 184
  %50 = or i32 %49, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 -95, ptr %5, align 2
  %51 = getelementptr inbounds i8, ptr %5, i32 1
  %52 = trunc i32 %50 to i8
  store i8 %52, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %53 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %53, align 4, !annotation !8
  %54 = load ptr, ptr %25, align 4
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i16
  store i16 %56, ptr %6, align 4
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %57, align 2
  %58 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %58, align 4
  %59 = load i32, ptr @debug, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %47
  %62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 161, i32 noundef %50) #8
  br label %63

63:                                               ; preds = %61, %47
  %64 = load ptr, ptr %10, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %6, i32 noundef 1) #10
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %65, i32 noundef 161, i32 noundef %50) #8
  br label %69

69:                                               ; preds = %67, %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %98

70:                                               ; preds = %41
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.ds3000_set_tone) #8
  br label %75

75:                                               ; preds = %73, %70
  %76 = call fastcc i32 @ds3000_readreg(ptr noundef %10, i8 noundef zeroext -94)
  %77 = and i32 %76, 127
  %78 = or i32 %77, 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 -94, ptr %3, align 2
  %79 = getelementptr inbounds i8, ptr %3, i32 1
  %80 = trunc i32 %78 to i8
  store i8 %80, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %81 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %81, align 4, !annotation !8
  %82 = load ptr, ptr %25, align 4
  %83 = load i8, ptr %82, align 4
  %84 = zext i8 %83 to i16
  store i16 %84, ptr %4, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %86, align 4
  %87 = load i32, ptr @debug, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %75
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 162, i32 noundef %78) #8
  br label %91

91:                                               ; preds = %89, %75
  %92 = load ptr, ptr %10, align 4
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %4, i32 noundef 1) #10
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %93, i32 noundef 162, i32 noundef %78) #8
  br label %97

97:                                               ; preds = %95, %91
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %98

98:                                               ; preds = %97, %69, %41, %17
  %99 = phi i32 [ -22, %17 ], [ 0, %41 ], [ 0, %97 ], [ 0, %69 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ds3000_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  store i8 3, ptr %5, align 2
  %11 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 18, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %12 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %12, align 4, !annotation !8
  %13 = getelementptr inbounds %struct.ds3000_state, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %10
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 3, i32 noundef 18) #8
  br label %23

23:                                               ; preds = %21, %10
  %24 = load ptr, ptr %8, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %6, i32 noundef 1) #10
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %25, i32 noundef 3, i32 noundef 18) #8
  br label %29

29:                                               ; preds = %27, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  br label %50

30:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #10
  store i8 3, ptr %3, align 2
  %31 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 2, ptr %31, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %32, align 4, !annotation !8
  %33 = getelementptr inbounds %struct.ds3000_state, ptr %8, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %4, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %38, align 4
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef 3, i32 noundef 2) #8
  br label %43

43:                                               ; preds = %41, %30
  %44 = load ptr, ptr %8, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %4, i32 noundef 1) #10
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.ds3000_writereg, i32 noundef %45, i32 noundef 3, i32 noundef 2) #8
  br label %49

49:                                               ; preds = %47, %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #10
  br label %50

50:                                               ; preds = %49, %29
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }

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
