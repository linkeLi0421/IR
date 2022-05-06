; ModuleID = '/llk/IR/drivers/media/dvb-frontends/cxd2880/cxd2880_top.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2880/cxd2880_top.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxd2880_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22cxd2880_attach\22\09\09\09\09\09"
module asm "__kstrtabns_cxd2880_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cxd2880_priv = type { %struct.cxd2880_tnrdmd, ptr, %struct.cxd2880_io, %struct.cxd2880_spi_device, %struct.cxd2880_spi, %struct.cxd2880_dvbt_tune_param, %struct.cxd2880_dvbt2_tune_param, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.cxd2880_tnrdmd = type { ptr, ptr, %struct.cxd2880_tnrdmd_create_param, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, i8, i32, i8, i8, [100 x %struct.cxd2880_tnrdmd_cfg_mem], i8, %struct.cxd2880_tnrdmd_pid_ftr_cfg, i8, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.atomic_t }
%struct.cxd2880_tnrdmd_create_param = type { i32, i8, i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_cfg_mem = type { i32, i8, i8, i8, i8 }
%struct.cxd2880_tnrdmd_pid_ftr_cfg = type { i8, [32 x %struct.cxd2880_tnrdmd_pid_cfg] }
%struct.cxd2880_tnrdmd_pid_cfg = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.cxd2880_io = type { ptr, ptr, ptr, ptr, i8, i8, i8, ptr }
%struct.cxd2880_spi_device = type { ptr }
%struct.cxd2880_spi = type { ptr, ptr, ptr, i32, ptr }
%struct.cxd2880_dvbt_tune_param = type { i32, i32, i32 }
%struct.cxd2880_dvbt2_tune_param = type { i32, i32, i16, i32, i32 }
%struct.cxd2880_config = type { ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cxd2880_dvbt2_l1pre = type { i32, i8, i32, i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i16, i8, i16, i8, i8, i8, i8, i32, i8, i8, i32 }
%struct.cxd2880_dvbt_tpsinfo = type { i32, i32, i32, i32, i32, i32, i8, i8, i16, i8, i8, i8 }
%struct.cxd2880_dvbt2_l1post = type { i16, i8, i8, i8, i8, i32, i8, i32, i8 }
%struct.cxd2880_dvbt2_plp = type { i8, i32, i32, i8, i8, i8, i8, i32, i32, i8, i32, i16, i8, i8, i8, i8, i8, i16, i32, i8, i8 }
%struct.cxd2880_dvbt2_bbheader = type { i32, i8, i8, i8, i8, i8, i8, i16, i16, i8, i32, i32 }

@cxd2880_attach.priv = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"\013cxd2880: %s: invalid arg.\0A\00", align 1
@__func__.cxd2880_attach = private unnamed_addr constant [15 x i8] c"cxd2880_attach\00", align 1
@cxd2880_dvbt_t2_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Sony CXD2880\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 1000, i32 0, i32 0, i32 0, i32 0, i32 -804520257 }, [8 x i8] c"\03\10\00\00\00\00\00\00", ptr null, ptr @cxd2880_release, ptr null, ptr @cxd2880_init, ptr @cxd2880_sleep, ptr null, ptr null, ptr null, ptr @cxd2880_tune, ptr @cxd2880_get_frontend_algo, ptr @cxd2880_set_frontend, ptr null, ptr @cxd2880_get_frontend, ptr @cxd2880_read_status, ptr @cxd2880_read_ber, ptr @cxd2880_read_signal_strength, ptr @cxd2880_read_snr, ptr @cxd2880_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\013cxd2880: %s: spi_device_initialize failed. %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"\013cxd2880: %s: spi_device_create_spi failed. %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\013cxd2880: %s: io_spi_create failed. %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\013cxd2880: %s: set bank to 0x00 failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013cxd2880: %s: read chip id failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"\013cxd2880: %s: chip id invalid.\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\016cxd2880: %s: CXD2880 driver version: Ver %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"1.4.1 - 1.0.5\00", align 1
@__kstrtab_cxd2880_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxd2880_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_cxd2880_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxd2880_attach to i32), ptr @__kstrtab_cxd2880_attach, ptr @__kstrtabns_cxd2880_attach }, section "___ksymtab+cxd2880_attach", align 4
@__UNIQUE_ID_description255 = internal constant [55 x i8] c"description=Sony CXD2880 DVB-T2/T tuner + demod driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author256 = internal constant [48 x i8] c"author=Sony Semiconductor Solutions Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.cxd2880_release = private unnamed_addr constant [16 x i8] c"cxd2880_release\00", align 1
@__func__.cxd2880_init = private unnamed_addr constant [13 x i8] c"cxd2880_init\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"\016cxd2880: %s: cxd2880 tnrdmd create failed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"\013cxd2880: %s: cxd2880 integ init failed %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"\013cxd2880: %s: cxd2880 set config failed %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\013cxd2880: %s: invalid arg\0A\00", align 1
@__func__.cxd2880_sleep = private unnamed_addr constant [14 x i8] c"cxd2880_sleep\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"\013cxd2880: %s: invalid arg.\00", align 1
@__func__.cxd2880_tune = private unnamed_addr constant [13 x i8] c"cxd2880_tune\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"\013cxd2880: %s: cxd2880_set_frontend failed %d\0A\00", align 1
@__func__.cxd2880_set_frontend = private unnamed_addr constant [21 x i8] c"cxd2880_set_frontend\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"\016cxd2880: %s: sys:%d freq:%d bw:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"\013cxd2880: %s: invalid system\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"\016cxd2880: %s: tune result %d\0A\00", align 1
@__func__.cxd2880_get_frontend = private unnamed_addr constant [21 x i8] c"cxd2880_get_frontend\00", align 1
@__func__.cxd2880_read_status = private unnamed_addr constant [20 x i8] c"cxd2880_read_status\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"\013cxd2880: %s: invalid system\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"\013cxd2880: %s: failed. sys = %d\0A\00", align 1
@cxd2880_set_ber_per_period_t.cr_table = internal unnamed_addr constant [5 x i32] [i32 31500, i32 42000, i32 47250, i32 52500, i32 55125], align 4
@cxd2880_set_ber_per_period_t.denominator_tbl = internal unnamed_addr constant [4 x i32] [i32 125664, i32 129472, i32 137088, i32 152320], align 4
@__func__.cxd2880_set_ber_per_period_t = private unnamed_addr constant [29 x i8] c"cxd2880_set_ber_per_period_t\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\013cxd2880: %s: tps monitor error ret = %d\0A\00", align 1
@cxd2880_set_ber_per_period_t2.gi_tbl = internal unnamed_addr constant [7 x i32] [i32 32, i32 64, i32 128, i32 256, i32 8, i32 152, i32 76], align 4
@cxd2880_set_ber_per_period_t2.n_tbl = internal unnamed_addr constant [6 x i8] c"\08\02\04\10\01\01", align 1
@cxd2880_set_ber_per_period_t2.mode_tbl = internal unnamed_addr constant [6 x i8] c"\02\08\04\01\10 ", align 1
@cxd2880_set_ber_per_period_t2.kbch_tbl = internal unnamed_addr constant [2 x [8 x i32]] [[8 x i32] [i32 6952, i32 9472, i32 10552, i32 11632, i32 12352, i32 13072, i32 5152, i32 6232], [8 x i32] [i32 32128, i32 38608, i32 42960, i32 48328, i32 51568, i32 53760, i32 0, i32 0]], align 4
@__func__.cxd2880_set_ber_per_period_t2 = private unnamed_addr constant [30 x i8] c"cxd2880_set_ber_per_period_t2\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"\016cxd2880: %s: l1 pre error\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\016cxd2880: %s: plp info error\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"\016cxd2880: %s: l1 post error\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"\016cxd2880: %s: bb header error\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"\016cxd2880: %s: plp mode is not Normal or HEM\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@cxd2880_post_bit_err_t2.n_bch_bits_lookup = internal unnamed_addr constant [2 x [8 x i16]] [[8 x i16] [i16 7200, i16 9720, i16 10800, i16 11880, i16 12600, i16 13320, i16 5400, i16 6480], [8 x i16] [i16 32400, i16 -26656, i16 -22336, i16 -16936, i16 -13696, i16 -11536, i16 21600, i16 25920]], align 2
@__func__.cxd2880_read_signal_strength = private unnamed_addr constant [29 x i8] c"cxd2880_read_signal_strength\00", align 1
@__func__.cxd2880_read_snr = private unnamed_addr constant [17 x i8] c"cxd2880_read_snr\00", align 1
@__func__.cxd2880_read_ucblocks = private unnamed_addr constant [22 x i8] c"cxd2880_read_ucblocks\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description255, ptr @__UNIQUE_ID_license257, ptr @__ksymtab_cxd2880_attach], section "llvm.metadata"
@switch.table.cxd2880_get_frontend.26 = private unnamed_addr constant [5 x i32] [i32 1, i32 3, i32 4, i32 5, i32 6], align 4
@switch.table.cxd2880_get_frontend.27 = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], align 4
@switch.table.cxd2880_get_frontend.28 = private unnamed_addr constant [6 x i32] [i32 1, i32 10, i32 2, i32 3, i32 4, i32 5], align 4
@switch.table.cxd2880_get_frontend.29 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @cxd2880_attach(ptr noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cxd2880_attach) #11
  br label %72

7:                                                ; preds = %2
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1148) #12
  store ptr %9, ptr @cxd2880_attach.priv, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %72, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr inbounds %struct.cxd2880_priv, ptr %9, i32 0, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.cxd2880_config, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.cxd2880_priv, ptr %9, i32 0, i32 7
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.cxd2880_priv, ptr %9, i32 0, i32 3
  store ptr %12, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %18, ptr noundef nonnull align 4 dereferenceable(544) @cxd2880_dvbt_t2_ops, i32 544, i1 false)
  %19 = tail call i32 @cxd2880_spi_device_initialize(ptr noundef %17, i32 noundef 0, i32 noundef 55000000) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.cxd2880_attach, i32 noundef %19) #11
  %23 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %23) #10
  br label %72

24:                                               ; preds = %11
  %25 = load ptr, ptr @cxd2880_attach.priv, align 4
  %26 = getelementptr inbounds %struct.cxd2880_priv, ptr %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.cxd2880_priv, ptr %25, i32 0, i32 3
  %28 = tail call i32 @cxd2880_spi_device_create_spi(ptr noundef %26, ptr noundef %27) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.cxd2880_attach, i32 noundef %28) #11
  %32 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %32) #10
  br label %72

33:                                               ; preds = %24
  %34 = load ptr, ptr @cxd2880_attach.priv, align 4
  %35 = getelementptr inbounds %struct.cxd2880_priv, ptr %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.cxd2880_priv, ptr %34, i32 0, i32 4
  %37 = tail call i32 @cxd2880_io_spi_create(ptr noundef %35, ptr noundef %36, i8 noundef zeroext 0) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.cxd2880_attach, i32 noundef %37) #11
  %41 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %41) #10
  br label %72

42:                                               ; preds = %33
  %43 = load ptr, ptr @cxd2880_attach.priv, align 4
  %44 = getelementptr inbounds %struct.cxd2880_priv, ptr %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.cxd2880_priv, ptr %43, i32 0, i32 2, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %44, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.cxd2880_attach) #11
  %51 = load ptr, ptr @cxd2880_attach.priv, align 4
  tail call void @kfree(ptr noundef %51) #10
  br label %72

52:                                               ; preds = %42
  %53 = load ptr, ptr @cxd2880_attach.priv, align 4
  %54 = getelementptr inbounds %struct.cxd2880_priv, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %54, i32 noundef 0, i8 noundef zeroext -3, ptr noundef nonnull %3, i32 noundef 1) #10
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.cxd2880_attach) #11
  %60 = load ptr, ptr @cxd2880_attach.priv, align 4
  call void @kfree(ptr noundef %60) #10
  br label %72

61:                                               ; preds = %52
  %62 = load i8, ptr %3, align 1
  %63 = and i8 %62, -9
  %64 = icmp eq i8 %63, 98
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.cxd2880_attach) #11
  %67 = load ptr, ptr @cxd2880_attach.priv, align 4
  call void @kfree(ptr noundef %67) #10
  br label %72

68:                                               ; preds = %61
  %69 = load ptr, ptr @cxd2880_attach.priv, align 4
  %70 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  store ptr %69, ptr %70, align 4
  %71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.cxd2880_attach, ptr noundef nonnull @.str.8) #11
  br label %72

72:                                               ; preds = %68, %65, %58, %49, %39, %30, %21, %7, %5
  %73 = phi ptr [ null, %21 ], [ null, %30 ], [ null, %39 ], [ null, %49 ], [ null, %58 ], [ null, %65 ], [ %0, %68 ], [ null, %5 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret ptr %73
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_spi_device_initialize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_spi_device_create_spi(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_io_spi_create(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @cxd2880_release(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cxd2880_release) #11
  br label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_init(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.cxd2880_tnrdmd_create_param, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 12, i1 false), !annotation !8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cxd2880_init) #11
  br label %38

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  store i32 1, ptr %2, align 4
  %10 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %2, i32 0, i32 1
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %2, i32 0, i32 3
  store i8 18, ptr %11, align 4
  %12 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %2, i32 0, i32 4
  store i8 8, ptr %12, align 1
  %13 = getelementptr inbounds %struct.cxd2880_tnrdmd_create_param, ptr %2, i32 0, i32 6
  store i8 1, ptr %13, align 1
  %14 = getelementptr inbounds %struct.cxd2880_priv, ptr %9, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  tail call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.cxd2880_priv, ptr %9, i32 0, i32 2
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %7
  %21 = call i32 @cxd2880_tnrdmd_create(ptr noundef %9, ptr noundef %18, ptr noundef nonnull %2) #10
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %14, align 4
  call void @mutex_unlock(ptr noundef %24) #10
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.cxd2880_init, i32 noundef %21) #11
  br label %38

26:                                               ; preds = %20, %7
  %27 = call i32 @cxd2880_integ_init(ptr noundef %9) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %14, align 4
  call void @mutex_unlock(ptr noundef %30) #10
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.cxd2880_init, i32 noundef %27) #11
  br label %38

32:                                               ; preds = %26
  %33 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %9, i32 noundef 10, i32 noundef 0) #10
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %14, align 4
  call void @mutex_unlock(ptr noundef %35) #10
  br i1 %34, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.cxd2880_init, i32 noundef %33) #11
  br label %38

38:                                               ; preds = %36, %32, %29, %23, %5
  %39 = phi i32 [ %21, %23 ], [ %27, %29 ], [ %33, %36 ], [ -22, %5 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_sleep(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cxd2880_sleep) #11
  br label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = tail call i32 @cxd2880_tnrdmd_sleep(ptr noundef %7) #10
  %11 = load ptr, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %11) #10
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ %10, %5 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef writeonly %3, ptr noundef %4) #0 {
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %3, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %4, null
  %10 = and i1 %8, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.cxd2880_tune) #11
  br label %21

13:                                               ; preds = %5
  br i1 %1, label %14, label %19

14:                                               ; preds = %13
  %15 = tail call i32 @cxd2880_set_frontend(ptr noundef nonnull %0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.cxd2880_tune, i32 noundef %15) #11
  br label %21

19:                                               ; preds = %14, %13
  store i32 20, ptr %3, align 4
  %20 = tail call i32 @cxd2880_read_status(ptr noundef nonnull %0, ptr noundef nonnull %4)
  br label %21

21:                                               ; preds = %19, %17, %11
  %22 = phi i32 [ %15, %17 ], [ %20, %19 ], [ -22, %11 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @cxd2880_get_frontend_algo(ptr nocapture noundef readnone %0) #6 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_set_frontend(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cxd2880_set_frontend) #11
  br label %108

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %10, align 1
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  store i64 0, ptr %11, align 1
  store i8 1, ptr %9, align 2
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  store i64 0, ptr %14, align 1
  store i8 1, ptr %12, align 1
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 0, ptr %17, align 1
  store i8 1, ptr %15, align 4
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 0, ptr %20, align 1
  store i8 1, ptr %18, align 1
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %22, align 1
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 0, ptr %23, align 1
  store i8 1, ptr %21, align 2
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %25, align 1
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  store i64 0, ptr %26, align 1
  store i8 1, ptr %24, align 1
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %108 [
    i32 1712000, label %33
    i32 5000000, label %29
    i32 6000000, label %30
    i32 7000000, label %31
    i32 8000000, label %32
  ]

29:                                               ; preds = %5
  br label %33

30:                                               ; preds = %5
  br label %33

31:                                               ; preds = %5
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %31, %30, %29, %5
  %34 = phi i32 [ 8, %32 ], [ 7, %31 ], [ 6, %30 ], [ 5, %29 ], [ 1, %5 ]
  %35 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 14
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %8, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.cxd2880_set_frontend, i32 noundef %37, i32 noundef %38, i32 noundef %34) #11
  %40 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  tail call void @mutex_lock(ptr noundef %41) #10
  %42 = load i32, ptr %36, align 4
  switch i32 %42, label %101 [
    i32 3, label %43
    i32 16, label %71
  ]

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 25
  store i32 1, ptr %44, align 4
  %45 = load i32, ptr %8, align 4
  %46 = udiv i32 %45, 1000
  %47 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 5, i32 1
  store i32 %34, ptr %48, align 4
  %49 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 5, i32 2
  store i32 0, ptr %49, align 4
  %50 = icmp ne ptr %7, null
  %51 = icmp ne ptr %47, null
  %52 = and i1 %50, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %104, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 22
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -1
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %62, label %104

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 28
  store volatile i32 0, ptr %63, align 4
  %64 = add nsw i32 %34, -5
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %66, label %104

66:                                               ; preds = %62
  %67 = tail call i32 @cxd2880_tnrdmd_dvbt_tune1(ptr noundef nonnull %7, ptr noundef nonnull %47) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %104

69:                                               ; preds = %66
  tail call void @usleep_range_state(i32 noundef 1000000, i32 noundef 1001000, i32 noundef 2) #10
  %70 = tail call i32 @cxd2880_tnrdmd_dvbt_tune2(ptr noundef nonnull %7, ptr noundef nonnull %47) #10
  br label %104

71:                                               ; preds = %33
  %72 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 25
  store i32 2, ptr %72, align 4
  %73 = load i32, ptr %8, align 4
  %74 = udiv i32 %73, 1000
  %75 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 6
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 6, i32 1
  store i32 %34, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %78 = load i32, ptr %77, align 4
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 6, i32 2
  store i16 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.cxd2880_priv, ptr %7, i32 0, i32 6, i32 3
  store i32 0, ptr %81, align 4
  %82 = icmp ne ptr %7, null
  %83 = icmp ne ptr %75, null
  %84 = and i1 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %71
  %86 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 3
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 22
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, -1
  %93 = icmp ult i32 %92, 2
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %7, i32 0, i32 28
  store volatile i32 0, ptr %95, align 4
  switch i32 %34, label %104 [
    i32 1, label %96
    i32 5, label %96
    i32 6, label %96
    i32 7, label %96
    i32 8, label %96
  ]

96:                                               ; preds = %94, %94, %94, %94, %94
  %97 = tail call i32 @cxd2880_tnrdmd_dvbt2_tune1(ptr noundef nonnull %7, ptr noundef nonnull %75) #10
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  tail call void @usleep_range_state(i32 noundef 1000000, i32 noundef 1001000, i32 noundef 2) #10
  %100 = tail call i32 @cxd2880_tnrdmd_dvbt2_tune2(ptr noundef nonnull %7, ptr noundef nonnull %75) #10
  br label %104

101:                                              ; preds = %33
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cxd2880_set_frontend) #11
  %103 = load ptr, ptr %40, align 4
  tail call void @mutex_unlock(ptr noundef %103) #10
  br label %108

104:                                              ; preds = %99, %96, %94, %89, %85, %71, %69, %66, %62, %57, %53, %43
  %105 = phi i32 [ %70, %69 ], [ -22, %43 ], [ -22, %53 ], [ -22, %57 ], [ -25, %62 ], [ %67, %66 ], [ %100, %99 ], [ -22, %71 ], [ -22, %85 ], [ -22, %89 ], [ -25, %94 ], [ %97, %96 ]
  %106 = load ptr, ptr %40, align 4
  tail call void @mutex_unlock(ptr noundef %106) #10
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.cxd2880_set_frontend, i32 noundef %105) #11
  br label %108

108:                                              ; preds = %104, %101, %5, %3
  %109 = phi i32 [ %105, %104 ], [ -22, %101 ], [ -22, %3 ], [ -22, %5 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_get_frontend(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = alloca %struct.cxd2880_dvbt2_l1pre, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = icmp ne ptr %0, null
  %16 = icmp ne ptr %1, null
  %17 = and i1 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.cxd2880_get_frontend) #11
  br label %206

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %206 [
    i32 3, label %23
    i32 16, label %117
  ]

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 0, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #10
  store i32 0, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 0, ptr %12, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #10
  store i16 0, ptr %13, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.cxd2880_priv, ptr %25, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  tail call void @mutex_lock(ptr noundef %27) #10
  %28 = call i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef %25, ptr noundef nonnull %9, ptr noundef nonnull %10) #10
  %29 = load ptr, ptr %26, align 4
  call void @mutex_unlock(ptr noundef %29) #10
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, ptr %9, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %10, align 4
  %37 = add i32 %36, -1
  %38 = icmp ult i32 %37, 3
  %39 = select i1 %38, i32 %36, i32 0
  br label %42

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi i32 [ 0, %40 ], [ %39, %31 ]
  %44 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %26, align 4
  call void @mutex_lock(ptr noundef %45) #10
  %46 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %25, ptr noundef nonnull %11) #10
  %47 = load ptr, ptr %26, align 4
  call void @mutex_unlock(ptr noundef %47) #10
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %79

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %11, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -1
  %53 = icmp ult i32 %52, 3
  %54 = select i1 %53, i32 %51, i32 0
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %11, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp ult i32 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = getelementptr inbounds [5 x i32], ptr @switch.table.cxd2880_get_frontend.29, i32 0, i32 %57
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %49
  %63 = phi i32 [ %61, %59 ], [ 0, %49 ]
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %11, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp ult i32 %66, 5
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = getelementptr inbounds [5 x i32], ptr @switch.table.cxd2880_get_frontend.29, i32 0, i32 %66
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = phi i32 [ %70, %68 ], [ 0, %62 ]
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %11, align 4
  %75 = icmp eq i32 %74, 1
  %76 = zext i1 %75 to i32
  %77 = icmp eq i32 %74, 2
  %78 = select i1 %77, i32 3, i32 %76
  br label %83

79:                                               ; preds = %42
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 9
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 11
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 12
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %79, %71
  %84 = phi i32 [ 0, %79 ], [ %78, %71 ]
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %84, ptr %85, align 4
  %86 = load ptr, ptr %26, align 4
  call void @mutex_lock(ptr noundef %86) #10
  %87 = call i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef %25, ptr noundef nonnull %12) #10
  %88 = load ptr, ptr %26, align 4
  call void @mutex_unlock(ptr noundef %88) #10
  %89 = icmp eq i32 %87, 0
  %90 = load i32, ptr %12, align 4
  %91 = icmp eq i32 %90, 1
  %92 = select i1 %89, i1 %91, i1 false
  %93 = zext i1 %92 to i32
  %94 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %93, ptr %94, align 4
  %95 = load ptr, ptr %26, align 4
  call void @mutex_lock(ptr noundef %95) #10
  %96 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %25, ptr noundef nonnull %14) #10
  %97 = load ptr, ptr %26, align 4
  call void @mutex_unlock(ptr noundef %97) #10
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %83
  %100 = load i32, ptr %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42, i32 1, i32 0, i32 1
  store i64 %101, ptr %102, align 1
  br label %103

103:                                              ; preds = %99, %83
  %104 = phi i8 [ 1, %99 ], [ 0, %83 ]
  %105 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42
  store i8 1, ptr %105, align 4
  %106 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42, i32 1
  store i8 %104, ptr %106, align 1
  %107 = call i32 @cxd2880_read_snr(ptr noundef nonnull %0, ptr noundef nonnull %13) #10
  %108 = icmp eq i32 %107, 0
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43
  store i8 1, ptr %109, align 1
  %110 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1
  br i1 %108, label %111, label %115

111:                                              ; preds = %103
  store i8 1, ptr %110, align 1
  %112 = load i16, ptr %13, align 2
  %113 = zext i16 %112 to i64
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1, i32 0, i32 1
  store i64 %113, ptr %114, align 1
  br label %116

115:                                              ; preds = %103
  store i8 0, ptr %110, align 1
  br label %116

116:                                              ; preds = %115, %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %206

117:                                              ; preds = %20
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %3, i8 0, i32 84, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #10
  store i16 0, ptr %7, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.cxd2880_priv, ptr %119, i32 0, i32 7
  %121 = load ptr, ptr %120, align 4
  tail call void @mutex_lock(ptr noundef %121) #10
  %122 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef %119, ptr noundef nonnull %3) #10
  %123 = load ptr, ptr %120, align 4
  call void @mutex_unlock(ptr noundef %123) #10
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %3, i32 0, i32 5
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, -1
  %129 = icmp ult i32 %128, 5
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = getelementptr inbounds [5 x i32], ptr @switch.table.cxd2880_get_frontend.26, i32 0, i32 %128
  %132 = load i32, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %125
  %134 = phi i32 [ 0, %125 ], [ %132, %130 ]
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %3, i32 0, i32 7
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, -1
  %139 = icmp ult i32 %138, 6
  br i1 %139, label %142, label %145

140:                                              ; preds = %117
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 6
  store i32 0, ptr %141, align 4
  br label %145

142:                                              ; preds = %133
  %143 = getelementptr inbounds [6 x i32], ptr @switch.table.cxd2880_get_frontend.27, i32 0, i32 %138
  %144 = load i32, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %140, %133
  %146 = phi i32 [ 0, %140 ], [ 0, %133 ], [ %144, %142 ]
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 8
  store i32 %146, ptr %147, align 4
  %148 = load ptr, ptr %120, align 4
  call void @mutex_lock(ptr noundef %148) #10
  %149 = call i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef %119, i32 noundef 1, ptr noundef nonnull %4) #10
  %150 = load ptr, ptr %120, align 4
  call void @mutex_unlock(ptr noundef %150) #10
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %145
  %153 = load i32, ptr %4, align 4
  %154 = icmp ult i32 %153, 6
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = getelementptr inbounds [6 x i32], ptr @switch.table.cxd2880_get_frontend.28, i32 0, i32 %153
  %157 = load i32, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %152, %145
  %159 = phi i32 [ 0, %145 ], [ %157, %155 ], [ 0, %152 ]
  %160 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %159, ptr %160, align 4
  %161 = load ptr, ptr %120, align 4
  call void @mutex_lock(ptr noundef %161) #10
  %162 = call i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef %119, i32 noundef 1, ptr noundef nonnull %5) #10
  %163 = load ptr, ptr %120, align 4
  call void @mutex_unlock(ptr noundef %163) #10
  %164 = icmp eq i32 %162, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load i32, ptr %5, align 4
  %167 = add i32 %166, -1
  %168 = icmp ult i32 %167, 3
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = shl i32 %167, 1
  %171 = or i32 %170, 1
  br label %172

172:                                              ; preds = %169, %165, %158
  %173 = phi i32 [ 0, %165 ], [ 0, %158 ], [ %171, %169 ]
  %174 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %173, ptr %174, align 4
  %175 = load ptr, ptr %120, align 4
  call void @mutex_lock(ptr noundef %175) #10
  %176 = call i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef %119, ptr noundef nonnull %6) #10
  %177 = load ptr, ptr %120, align 4
  call void @mutex_unlock(ptr noundef %177) #10
  %178 = icmp eq i32 %176, 0
  %179 = load i32, ptr %6, align 4
  %180 = icmp eq i32 %179, 1
  %181 = select i1 %178, i1 %180, i1 false
  %182 = zext i1 %181 to i32
  %183 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 4
  store i32 %182, ptr %183, align 4
  %184 = load ptr, ptr %120, align 4
  call void @mutex_lock(ptr noundef %184) #10
  %185 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %119, ptr noundef nonnull %8) #10
  %186 = load ptr, ptr %120, align 4
  call void @mutex_unlock(ptr noundef %186) #10
  %187 = icmp eq i32 %185, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %172
  %189 = load i32, ptr %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42, i32 1, i32 0, i32 1
  store i64 %190, ptr %191, align 1
  br label %192

192:                                              ; preds = %188, %172
  %193 = phi i8 [ 1, %188 ], [ 0, %172 ]
  %194 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42
  store i8 1, ptr %194, align 4
  %195 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 42, i32 1
  store i8 %193, ptr %195, align 1
  %196 = call i32 @cxd2880_read_snr(ptr noundef nonnull %0, ptr noundef nonnull %7) #10
  %197 = icmp eq i32 %196, 0
  %198 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43
  store i8 1, ptr %198, align 1
  %199 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1
  br i1 %197, label %200, label %204

200:                                              ; preds = %192
  store i8 1, ptr %199, align 1
  %201 = load i16, ptr %7, align 2
  %202 = zext i16 %201 to i64
  %203 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 43, i32 1, i32 0, i32 1
  store i64 %202, ptr %203, align 1
  br label %205

204:                                              ; preds = %192
  store i8 0, ptr %199, align 1
  br label %205

205:                                              ; preds = %204, %200
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %3) #10
  br label %206

206:                                              ; preds = %205, %116, %20, %18
  %207 = phi i32 [ -22, %18 ], [ 0, %205 ], [ 0, %116 ], [ -22, %20 ]
  ret i32 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_read_status(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [3 x i8], align 1
  %5 = alloca [3 x i8], align 1
  %6 = alloca [3 x i8], align 1
  %7 = alloca [5 x i8], align 1
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.cxd2880_dvbt2_l1pre, align 4
  %10 = alloca %struct.cxd2880_dvbt2_l1post, align 4
  %11 = alloca %struct.cxd2880_dvbt2_plp, align 4
  %12 = alloca %struct.cxd2880_dvbt2_bbheader, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #10
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  store i8 0, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #10
  store i8 0, ptr %19, align 1
  %20 = icmp ne ptr %0, null
  %21 = icmp ne ptr %1, null
  %22 = and i1 %20, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cxd2880_read_status) #11
  br label %1034

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  store i32 0, ptr %1, align 4
  %28 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %27, i32 0, i32 22
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.cxd2880_priv, ptr %27, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  tail call void @mutex_lock(ptr noundef %33) #10
  %34 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %40 [
    i32 3, label %36
    i32 16, label %38
  ]

36:                                               ; preds = %31
  %37 = call i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef %27, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  br label %43

38:                                               ; preds = %31
  %39 = call i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef %27, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #10
  br label %43

40:                                               ; preds = %31
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.cxd2880_read_status) #11
  %42 = load ptr, ptr %32, align 4
  tail call void @mutex_unlock(ptr noundef %42) #10
  br label %1034

43:                                               ; preds = %38, %36
  %44 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %45 = load ptr, ptr %32, align 4
  call void @mutex_unlock(ptr noundef %45) #10
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %27, i32 0, i32 25
  %49 = load i32, ptr %48, align 4
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.cxd2880_read_status, i32 noundef %49) #11
  br label %1034

51:                                               ; preds = %43
  %52 = load i8, ptr %17, align 1
  %53 = icmp eq i8 %52, 6
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 3, ptr %1, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i8, ptr %18, align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %1, align 4
  %60 = or i32 %59, 28
  store i32 %60, ptr %1, align 4
  br label %61

61:                                               ; preds = %58, %55, %25
  %62 = getelementptr inbounds %struct.cxd2880_priv, ptr %27, i32 0, i32 14
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %407

65:                                               ; preds = %61
  %66 = load i32, ptr %1, align 4
  %67 = and i32 %66, 18
  %68 = icmp eq i32 %67, 18
  br i1 %68, label %69, label %407

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.cxd2880_priv, ptr %27, i32 0, i32 7
  %71 = load ptr, ptr %70, align 4
  call void @mutex_lock(ptr noundef %71) #10
  %72 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %73 = load i32, ptr %72, align 4
  switch i32 %73, label %402 [
    i32 3, label %74
    i32 16, label %213
  ]

74:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %15, i8 0, i32 32, i1 false) #10, !annotation !8
  %75 = load ptr, ptr %26, align 4
  %76 = getelementptr inbounds %struct.cxd2880_priv, ptr %75, i32 0, i32 5, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef %75, ptr noundef nonnull %15) #10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.cxd2880_set_ber_per_period_t, i32 noundef %78) #11
  %82 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 1
  store i32 0, ptr %82, align 4
  store i32 0, ptr %15, align 4
  %83 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 4
  store i32 3, ptr %83, align 4
  %84 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 2
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 3
  store i32 0, ptr %85, align 4
  br label %96

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %115

90:                                               ; preds = %86
  %91 = load i32, ptr %15, align 4
  %92 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 4
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  br label %96

96:                                               ; preds = %90, %80
  %97 = phi i32 [ %95, %90 ], [ 0, %80 ]
  %98 = phi i32 [ %93, %90 ], [ 3, %80 ]
  %99 = phi i32 [ %91, %90 ], [ 0, %80 ]
  %100 = shl i32 %99, 1
  %101 = add i32 %100, 2
  %102 = mul i32 %101, %77
  %103 = mul i32 %102, 63000000
  %104 = getelementptr [4 x i32], ptr @cxd2880_set_ber_per_period_t.denominator_tbl, i32 0, i32 %98
  %105 = load i32, ptr %104, align 4
  %106 = udiv i32 %103, %105
  %107 = getelementptr [5 x i32], ptr @cxd2880_set_ber_per_period_t.cr_table, i32 0, i32 %97
  %108 = load i32, ptr %107, align 4
  %109 = mul i32 %102, 1000
  %110 = mul i32 %109, %108
  %111 = udiv i32 %110, %105
  %112 = mul i32 %102, 875
  %113 = mul i32 %112, %108
  %114 = udiv i32 %113, %105
  br label %172

115:                                              ; preds = %86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #10
  store i8 0, ptr %16, align 1
  %116 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %75, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.cxd2880_io, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = call i32 %119(ptr noundef %117, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %152

122:                                              ; preds = %115
  %123 = load ptr, ptr %116, align 4
  %124 = load ptr, ptr %123, align 4
  %125 = call i32 %124(ptr noundef %123, i32 noundef 1, i8 noundef zeroext 103, ptr noundef nonnull %16, i32 noundef 1) #10
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %122
  %128 = load i8, ptr %16, align 1
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %152, label %131

131:                                              ; preds = %127
  %132 = load i32, ptr %15, align 4
  %133 = shl i32 %132, 1
  %134 = add i32 %133, 2
  %135 = mul i32 %134, %77
  %136 = mul i32 %135, 63000000
  %137 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 4
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr [4 x i32], ptr @cxd2880_set_ber_per_period_t.denominator_tbl, i32 0, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = udiv i32 %136, %140
  %142 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr [5 x i32], ptr @cxd2880_set_ber_per_period_t.cr_table, i32 0, i32 %143
  %145 = load i32, ptr %144, align 4
  %146 = mul i32 %135, 1000
  %147 = mul i32 %146, %145
  %148 = udiv i32 %147, %140
  %149 = mul i32 %135, 875
  %150 = mul i32 %149, %145
  %151 = udiv i32 %150, %140
  br label %168

152:                                              ; preds = %127, %122, %115
  %153 = mul i32 %77, 126000000
  %154 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = getelementptr [4 x i32], ptr @cxd2880_set_ber_per_period_t.denominator_tbl, i32 0, i32 %155
  %157 = load i32, ptr %156, align 4
  %158 = udiv i32 %153, %157
  %159 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, ptr %15, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr [5 x i32], ptr @cxd2880_set_ber_per_period_t.cr_table, i32 0, i32 %160
  %162 = load i32, ptr %161, align 4
  %163 = mul i32 %162, %77
  %164 = mul i32 %163, 2000
  %165 = udiv i32 %164, %157
  %166 = mul i32 %163, 1750
  %167 = udiv i32 %166, %157
  br label %168

168:                                              ; preds = %152, %131
  %169 = phi i32 [ %141, %131 ], [ %158, %152 ]
  %170 = phi i32 [ %148, %131 ], [ %165, %152 ]
  %171 = phi i32 [ %151, %131 ], [ %167, %152 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #10
  br label %172

172:                                              ; preds = %168, %96
  %173 = phi i32 [ %106, %96 ], [ %169, %168 ]
  %174 = phi i32 [ %111, %96 ], [ %170, %168 ]
  %175 = phi i32 [ %114, %96 ], [ %171, %168 ]
  %176 = icmp ult i32 %173, 8192
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = lshr i32 %173, 1
  %179 = add nuw nsw i32 %178, 256000
  %180 = udiv i32 %179, %173
  %181 = getelementptr inbounds %struct.cxd2880_priv, ptr %75, i32 0, i32 9
  store i32 %180, ptr %181, align 4
  br label %192

182:                                              ; preds = %172
  %183 = call i32 @intlog2(i32 noundef %173) #10
  %184 = lshr i32 %183, 24
  %185 = shl i32 1000, %184
  %186 = lshr i32 %173, 1
  %187 = add i32 %185, %186
  %188 = udiv i32 %187, %173
  %189 = getelementptr inbounds %struct.cxd2880_priv, ptr %75, i32 0, i32 9
  store i32 %188, ptr %189, align 4
  %190 = icmp eq i32 %184, 8
  %191 = add nsw i32 %184, -12
  br i1 %190, label %192, label %193

192:                                              ; preds = %182, %177
  br label %193

193:                                              ; preds = %192, %182
  %194 = phi i32 [ 0, %192 ], [ %191, %182 ]
  %195 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %75, i32 noundef 30, i32 noundef %194) #10
  %196 = call i32 @intlog2(i32 noundef %174) #10
  %197 = lshr i32 %196, 24
  %198 = shl i32 1000, %197
  %199 = lshr i32 %174, 1
  %200 = add i32 %198, %199
  %201 = udiv i32 %200, %174
  %202 = getelementptr inbounds %struct.cxd2880_priv, ptr %75, i32 0, i32 11
  store i32 %201, ptr %202, align 4
  %203 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %75, i32 noundef 29, i32 noundef %197) #10
  %204 = call i32 @intlog2(i32 noundef %175) #10
  %205 = lshr i32 %204, 24
  %206 = shl i32 1000, %205
  %207 = lshr i32 %175, 1
  %208 = add i32 %206, %207
  %209 = udiv i32 %208, %175
  %210 = getelementptr inbounds %struct.cxd2880_priv, ptr %75, i32 0, i32 13
  store i32 %209, ptr %210, align 4
  %211 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %75, i32 noundef 31, i32 noundef %205) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #10
  %212 = load i32, ptr %1, align 4
  store i32 %212, ptr %62, align 4
  br label %405

213:                                              ; preds = %69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #10
  store i8 0, ptr %14, align 1, !annotation !8
  %214 = load ptr, ptr %26, align 4
  %215 = call i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(ptr noundef %214, ptr noundef nonnull %13) #10
  %216 = icmp ne i32 %215, 0
  %217 = load i8, ptr %13, align 1
  %218 = icmp eq i8 %217, 0
  %219 = select i1 %216, i1 true, i1 %218
  br i1 %219, label %233, label %220

220:                                              ; preds = %213
  %221 = call i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(ptr noundef %214, ptr noundef nonnull %14) #10
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load i8, ptr %14, align 1
  %225 = icmp ne i8 %224, 0
  %226 = getelementptr inbounds %struct.cxd2880_priv, ptr %214, i32 0, i32 6, i32 4
  %227 = zext i1 %225 to i32
  store i32 %227, ptr %226, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(84) %9, i8 0, i32 84, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %10, i8 0, i32 24, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(52) %11, i8 0, i32 52, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 24, i1 false) #10, !annotation !8
  %228 = load ptr, ptr %26, align 4
  %229 = getelementptr inbounds %struct.cxd2880_priv, ptr %228, i32 0, i32 6, i32 1
  %230 = load i32, ptr %229, align 4
  %231 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef %228, ptr noundef nonnull %9) #10
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %389

233:                                              ; preds = %220, %213
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  br label %405

234:                                              ; preds = %223
  %235 = call i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(ptr noundef %228, i32 noundef 1, ptr noundef nonnull %11) #10
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %389

237:                                              ; preds = %234
  %238 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(ptr noundef %228, ptr noundef nonnull %10) #10
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %389

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %9, i32 0, i32 5
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr [6 x i8], ptr @cxd2880_set_ber_per_period_t2.mode_tbl, i32 0, i32 %242
  %244 = load i8, ptr %243, align 1
  %245 = zext i8 %244 to i32
  %246 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %9, i32 0, i32 7
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr [7 x i32], ptr @cxd2880_set_ber_per_period_t2.gi_tbl, i32 0, i32 %247
  %249 = load i32, ptr %248, align 4
  %250 = add i32 %249, 1024
  %251 = mul i32 %250, %245
  %252 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %9, i32 0, i32 20
  %253 = load i16, ptr %252, align 2
  %254 = zext i16 %253 to i32
  %255 = getelementptr [6 x i8], ptr @cxd2880_set_ber_per_period_t2.n_tbl, i32 0, i32 %242
  %256 = load i8, ptr %255, align 1
  %257 = zext i8 %256 to i32
  %258 = add nuw nsw i32 %257, %254
  %259 = mul i32 %251, %258
  %260 = add i32 %259, 2048
  %261 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, ptr %9, i32 0, i32 4
  %262 = load i8, ptr %261, align 1
  %263 = icmp ne i8 %262, 0
  %264 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %10, i32 0, i32 8
  %265 = load i8, ptr %264, align 4
  %266 = icmp ne i8 %265, 0
  %267 = select i1 %263, i1 %266, i1 false
  br i1 %267, label %268, label %275

268:                                              ; preds = %240
  %269 = zext i8 %265 to i32
  %270 = getelementptr inbounds %struct.cxd2880_dvbt2_l1post, ptr %10, i32 0, i32 7
  %271 = load i32, ptr %270, align 4
  %272 = lshr i32 %269, 1
  %273 = add i32 %271, %272
  %274 = udiv i32 %273, %269
  br label %275

275:                                              ; preds = %268, %240
  %276 = phi i32 [ %274, %268 ], [ 0, %240 ]
  switch i32 %230, label %296 [
    i32 1, label %277
    i32 5, label %282
    i32 6, label %287
    i32 7, label %292
  ]

277:                                              ; preds = %275
  %278 = add i32 %276, %260
  %279 = mul i32 %278, 71
  %280 = add i32 %279, 65
  %281 = udiv i32 %280, 131
  br label %301

282:                                              ; preds = %275
  %283 = add i32 %276, %260
  %284 = mul i32 %283, 7
  %285 = add i32 %284, 20
  %286 = udiv i32 %285, 40
  br label %301

287:                                              ; preds = %275
  %288 = add i32 %276, %260
  %289 = mul i32 %288, 7
  %290 = add i32 %289, 24
  %291 = udiv i32 %290, 48
  br label %301

292:                                              ; preds = %275
  %293 = add i32 %276, %260
  %294 = add i32 %293, 4
  %295 = lshr i32 %294, 3
  br label %301

296:                                              ; preds = %275
  %297 = add i32 %276, %260
  %298 = mul i32 %297, 7
  %299 = add i32 %298, 32
  %300 = lshr i32 %299, 6
  br label %301

301:                                              ; preds = %296, %292, %287, %282, %277
  %302 = phi i32 [ %300, %296 ], [ %295, %292 ], [ %291, %287 ], [ %286, %282 ], [ %281, %277 ]
  %303 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 14
  %304 = load i8, ptr %303, align 4
  %305 = icmp ne i8 %304, 0
  %306 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 13
  %307 = load i8, ptr %306, align 1
  %308 = icmp ne i8 %307, 0
  %309 = select i1 %305, i1 %308, i1 false
  br i1 %309, label %310, label %319

310:                                              ; preds = %301
  %311 = zext i8 %307 to i32
  %312 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 11
  %313 = load i16, ptr %312, align 4
  %314 = zext i16 %313 to i32
  %315 = mul i32 %314, 1000000
  %316 = lshr i32 %302, 1
  %317 = add i32 %315, %316
  %318 = udiv i32 %317, %302
  br label %324

319:                                              ; preds = %301
  %320 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 11
  %321 = load i16, ptr %320, align 4
  %322 = zext i16 %321 to i32
  %323 = mul i32 %322, 1000000
  br label %324

324:                                              ; preds = %319, %310
  %325 = phi i32 [ %302, %319 ], [ %311, %310 ]
  %326 = phi i32 [ %323, %319 ], [ %318, %310 ]
  %327 = lshr i32 %325, 1
  %328 = add i32 %326, %327
  %329 = udiv i32 %328, %325
  %330 = call i32 @intlog2(i32 noundef %329) #10
  %331 = lshr i32 %330, 24
  %332 = shl i32 1000, %331
  %333 = lshr i32 %329, 1
  %334 = add i32 %332, %333
  %335 = udiv i32 %334, %329
  %336 = getelementptr inbounds %struct.cxd2880_priv, ptr %228, i32 0, i32 9
  store i32 %335, ptr %336, align 4
  %337 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %228, i32 noundef 33, i32 noundef %331) #10
  %338 = call i32 @intlog2(i32 noundef %329) #10
  %339 = lshr i32 %338, 24
  %340 = shl i32 1000, %339
  %341 = add i32 %340, %333
  %342 = udiv i32 %341, %329
  %343 = getelementptr inbounds %struct.cxd2880_priv, ptr %228, i32 0, i32 11
  store i32 %342, ptr %343, align 4
  %344 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %228, i32 noundef 32, i32 noundef %339) #10
  %345 = call i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(ptr noundef %228, i32 noundef 1, ptr noundef nonnull %12) #10
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %324
  %348 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.cxd2880_set_ber_per_period_t2) #11
  br label %396

349:                                              ; preds = %324
  %350 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %12, i32 0, i32 11
  %351 = load i32, ptr %350, align 4
  switch i32 %351, label %379 [
    i32 1, label %352
    i32 2, label %369
  ]

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.cxd2880_dvbt2_bbheader, ptr %12, i32 0, i32 3
  %354 = load i8, ptr %353, align 2
  %355 = icmp eq i8 %354, 0
  %356 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 10
  %357 = load i32, ptr %356, align 4
  %358 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 8
  %359 = load i32, ptr %358, align 4
  %360 = getelementptr [2 x [8 x i32]], ptr @cxd2880_set_ber_per_period_t2.kbch_tbl, i32 0, i32 %357, i32 %359
  %361 = load i32, ptr %360, align 4
  %362 = mul i32 %361, %329
  br i1 %355, label %363, label %366

363:                                              ; preds = %352
  %364 = add i32 %362, 752
  %365 = udiv i32 %364, 1504
  br label %381

366:                                              ; preds = %352
  %367 = add i32 %362, 764
  %368 = udiv i32 %367, 1528
  br label %381

369:                                              ; preds = %349
  %370 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 10
  %371 = load i32, ptr %370, align 4
  %372 = getelementptr inbounds %struct.cxd2880_dvbt2_plp, ptr %11, i32 0, i32 8
  %373 = load i32, ptr %372, align 4
  %374 = getelementptr [2 x [8 x i32]], ptr @cxd2880_set_ber_per_period_t2.kbch_tbl, i32 0, i32 %371, i32 %373
  %375 = load i32, ptr %374, align 4
  %376 = mul i32 %375, %329
  %377 = add i32 %376, 748
  %378 = udiv i32 %377, 1496
  br label %381

379:                                              ; preds = %349
  %380 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.cxd2880_set_ber_per_period_t2) #11
  br label %396

381:                                              ; preds = %369, %366, %363
  %382 = phi i32 [ %368, %366 ], [ %365, %363 ], [ %378, %369 ]
  %383 = call i32 @intlog2(i32 noundef %382) #10
  %384 = lshr i32 %383, 24
  %385 = shl i32 1000, %384
  %386 = lshr i32 %382, 1
  %387 = add i32 %385, %386
  %388 = udiv i32 %387, %382
  br label %396

389:                                              ; preds = %237, %234, %223
  %390 = phi ptr [ @.str.21, %223 ], [ @.str.22, %234 ], [ @.str.23, %237 ]
  %391 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %390, ptr noundef nonnull @__func__.cxd2880_set_ber_per_period_t2) #11
  %392 = getelementptr inbounds %struct.cxd2880_priv, ptr %228, i32 0, i32 9
  store i32 1000, ptr %392, align 4
  %393 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %228, i32 noundef 33, i32 noundef 0) #10
  %394 = getelementptr inbounds %struct.cxd2880_priv, ptr %228, i32 0, i32 11
  store i32 1000, ptr %394, align 4
  %395 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %228, i32 noundef 32, i32 noundef 0) #10
  br label %396

396:                                              ; preds = %389, %381, %379, %347
  %397 = phi i32 [ %388, %381 ], [ 1000, %389 ], [ 1000, %379 ], [ 1000, %347 ]
  %398 = phi i32 [ %384, %381 ], [ 8, %389 ], [ 8, %379 ], [ 8, %347 ]
  %399 = getelementptr inbounds %struct.cxd2880_priv, ptr %228, i32 0, i32 13
  store i32 %397, ptr %399, align 4
  %400 = call i32 @cxd2880_tnrdmd_set_cfg(ptr noundef %228, i32 noundef 34, i32 noundef %398) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %9) #10
  %401 = load i32, ptr %1, align 4
  store i32 %401, ptr %62, align 4
  br label %405

402:                                              ; preds = %69
  %403 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cxd2880_read_status) #11
  %404 = load ptr, ptr %70, align 4
  call void @mutex_unlock(ptr noundef %404) #10
  br label %1034

405:                                              ; preds = %396, %233, %193
  %406 = load ptr, ptr %70, align 4
  call void @mutex_unlock(ptr noundef %406) #10
  br label %407

407:                                              ; preds = %405, %65, %61
  %408 = load i32, ptr %1, align 4
  %409 = load ptr, ptr %26, align 4
  %410 = and i32 %408, 18
  %411 = icmp eq i32 %410, 18
  br i1 %411, label %425, label %412

412:                                              ; preds = %407
  %413 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  store i8 1, ptr %413, align 2
  %414 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %414, align 1
  %415 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 1, ptr %415, align 1
  %416 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %416, align 1
  %417 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %417, align 4
  %418 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %418, align 1
  %419 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %419, align 1
  %420 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %420, align 1
  %421 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %421, align 2
  %422 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %422, align 1
  %423 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %423, align 1
  %424 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %424, align 1
  br label %1034

425:                                              ; preds = %407
  %426 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 8
  %427 = load i32, ptr %426, align 4
  %428 = load volatile i32, ptr @jiffies, align 64
  %429 = sub i32 %427, %428
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %653

431:                                              ; preds = %425
  %432 = load volatile i32, ptr @jiffies, align 64
  %433 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 9
  %434 = load i32, ptr %433, align 4
  %435 = call i32 @__msecs_to_jiffies(i32 noundef %434) #10
  %436 = add i32 %435, %432
  store i32 %436, ptr %426, align 4
  %437 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %438 = load i32, ptr %437, align 4
  switch i32 %438, label %1034 [
    i32 3, label %439
    i32 16, label %524
  ]

439:                                              ; preds = %431
  %440 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 7
  %441 = load ptr, ptr %440, align 4
  call void @mutex_lock(ptr noundef %441) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #10
  store i16 0, ptr %8, align 2, !annotation !8
  %442 = icmp eq ptr %409, null
  br i1 %442, label %520, label %443

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 3
  %445 = load i32, ptr %444, align 4
  %446 = icmp eq i32 %445, 2
  br i1 %446, label %520, label %447

447:                                              ; preds = %443
  %448 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 22
  %449 = load i32, ptr %448, align 4
  %450 = icmp eq i32 %449, 2
  br i1 %450, label %451, label %520

451:                                              ; preds = %447
  %452 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 25
  %453 = load i32, ptr %452, align 4
  %454 = icmp eq i32 %453, 1
  br i1 %454, label %455, label %520

455:                                              ; preds = %451
  %456 = call i32 @slvt_freeze_reg(ptr noundef nonnull %409) #10
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %520

458:                                              ; preds = %455
  %459 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 1
  %460 = load ptr, ptr %459, align 4
  %461 = getelementptr inbounds %struct.cxd2880_io, ptr %460, i32 0, i32 2
  %462 = load ptr, ptr %461, align 4
  %463 = call i32 %462(ptr noundef %460, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #10
  %464 = icmp eq i32 %463, 0
  %465 = load ptr, ptr %459, align 4
  br i1 %464, label %470, label %466

466:                                              ; preds = %458
  %467 = getelementptr inbounds %struct.cxd2880_io, ptr %465, i32 0, i32 2
  %468 = load ptr, ptr %467, align 4
  %469 = call i32 %468(ptr noundef %465, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %520

470:                                              ; preds = %458
  %471 = load ptr, ptr %465, align 4
  %472 = call i32 %471(ptr noundef %465, i32 noundef 1, i8 noundef zeroext 57, ptr noundef nonnull %8, i32 noundef 1) #10
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %479, label %474

474:                                              ; preds = %470
  %475 = load ptr, ptr %459, align 4
  %476 = getelementptr inbounds %struct.cxd2880_io, ptr %475, i32 0, i32 2
  %477 = load ptr, ptr %476, align 4
  %478 = call i32 %477(ptr noundef %475, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %520

479:                                              ; preds = %470
  %480 = load i8, ptr %8, align 2
  %481 = and i8 %480, 1
  %482 = icmp eq i8 %481, 0
  %483 = load ptr, ptr %459, align 4
  br i1 %482, label %484, label %488

484:                                              ; preds = %479
  %485 = getelementptr inbounds %struct.cxd2880_io, ptr %483, i32 0, i32 2
  %486 = load ptr, ptr %485, align 4
  %487 = call i32 %486(ptr noundef %483, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %520

488:                                              ; preds = %479
  %489 = load ptr, ptr %483, align 4
  %490 = call i32 %489(ptr noundef %483, i32 noundef 1, i8 noundef zeroext 34, ptr noundef nonnull %8, i32 noundef 2) #10
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %497, label %492

492:                                              ; preds = %488
  %493 = load ptr, ptr %459, align 4
  %494 = getelementptr inbounds %struct.cxd2880_io, ptr %493, i32 0, i32 2
  %495 = load ptr, ptr %494, align 4
  %496 = call i32 %495(ptr noundef %493, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %520

497:                                              ; preds = %488
  %498 = load i8, ptr %8, align 2
  %499 = zext i8 %498 to i32
  %500 = shl nuw nsw i32 %499, 8
  %501 = getelementptr inbounds [2 x i8], ptr %8, i32 0, i32 1
  %502 = load i8, ptr %501, align 1
  %503 = zext i8 %502 to i32
  %504 = or i32 %500, %503
  %505 = load ptr, ptr %459, align 4
  %506 = load ptr, ptr %505, align 4
  %507 = call i32 %506(ptr noundef %505, i32 noundef 1, i8 noundef zeroext 111, ptr noundef nonnull %8, i32 noundef 1) #10
  %508 = icmp eq i32 %507, 0
  %509 = load ptr, ptr %459, align 4
  %510 = getelementptr inbounds %struct.cxd2880_io, ptr %509, i32 0, i32 2
  %511 = load ptr, ptr %510, align 4
  %512 = call i32 %511(ptr noundef %509, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br i1 %508, label %513, label %520

513:                                              ; preds = %497
  %514 = load i8, ptr %8, align 2
  %515 = and i8 %514, 7
  %516 = zext i8 %515 to i32
  %517 = icmp eq i8 %515, 0
  %518 = shl nuw nsw i32 4096, %516
  %519 = select i1 %517, i32 256, i32 %518
  br label %520

520:                                              ; preds = %513, %497, %492, %484, %474, %466, %455, %451, %447, %443, %439
  %521 = phi i32 [ 0, %443 ], [ 0, %484 ], [ %504, %513 ], [ %504, %497 ], [ 0, %492 ], [ 0, %474 ], [ 0, %466 ], [ 0, %455 ], [ 0, %451 ], [ 0, %447 ], [ 0, %439 ]
  %522 = phi i32 [ 0, %443 ], [ 0, %484 ], [ %519, %513 ], [ 0, %497 ], [ 0, %492 ], [ 0, %474 ], [ 0, %466 ], [ 0, %455 ], [ 0, %451 ], [ 0, %447 ], [ 0, %439 ]
  %523 = phi i32 [ -22, %443 ], [ -11, %484 ], [ 0, %513 ], [ %507, %497 ], [ %490, %492 ], [ %472, %474 ], [ %463, %466 ], [ %456, %455 ], [ -22, %451 ], [ -22, %447 ], [ -22, %439 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #10
  br label %630

524:                                              ; preds = %431
  %525 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 7
  %526 = load ptr, ptr %525, align 4
  call void @mutex_lock(ptr noundef %526) #10
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %7, i8 0, i32 5, i1 false) #10, !annotation !8
  %527 = icmp eq ptr %409, null
  br i1 %527, label %626, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 3
  %530 = load i32, ptr %529, align 4
  %531 = icmp eq i32 %530, 2
  br i1 %531, label %626, label %532

532:                                              ; preds = %528
  %533 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 22
  %534 = load i32, ptr %533, align 4
  %535 = icmp eq i32 %534, 2
  br i1 %535, label %536, label %626

536:                                              ; preds = %532
  %537 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 25
  %538 = load i32, ptr %537, align 4
  %539 = icmp eq i32 %538, 2
  br i1 %539, label %540, label %626

540:                                              ; preds = %536
  %541 = call i32 @slvt_freeze_reg(ptr noundef nonnull %409) #10
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %626

543:                                              ; preds = %540
  %544 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 1
  %545 = load ptr, ptr %544, align 4
  %546 = getelementptr inbounds %struct.cxd2880_io, ptr %545, i32 0, i32 2
  %547 = load ptr, ptr %546, align 4
  %548 = call i32 %547(ptr noundef %545, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #10
  %549 = icmp eq i32 %548, 0
  %550 = load ptr, ptr %544, align 4
  br i1 %549, label %555, label %551

551:                                              ; preds = %543
  %552 = getelementptr inbounds %struct.cxd2880_io, ptr %550, i32 0, i32 2
  %553 = load ptr, ptr %552, align 4
  %554 = call i32 %553(ptr noundef %550, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %626

555:                                              ; preds = %543
  %556 = load ptr, ptr %550, align 4
  %557 = call i32 %556(ptr noundef %550, i32 noundef 1, i8 noundef zeroext 60, ptr noundef nonnull %7, i32 noundef 5) #10
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %564, label %559

559:                                              ; preds = %555
  %560 = load ptr, ptr %544, align 4
  %561 = getelementptr inbounds %struct.cxd2880_io, ptr %560, i32 0, i32 2
  %562 = load ptr, ptr %561, align 4
  %563 = call i32 %562(ptr noundef %560, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %626

564:                                              ; preds = %555
  %565 = load i8, ptr %7, align 1
  %566 = and i8 %565, 1
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %564
  %569 = load ptr, ptr %544, align 4
  %570 = getelementptr inbounds %struct.cxd2880_io, ptr %569, i32 0, i32 2
  %571 = load ptr, ptr %570, align 4
  %572 = call i32 %571(ptr noundef %569, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %626

573:                                              ; preds = %564
  %574 = getelementptr inbounds [5 x i8], ptr %7, i32 0, i32 1
  %575 = load i8, ptr %574, align 1
  %576 = and i8 %575, 15
  %577 = zext i8 %576 to i32
  %578 = shl nuw nsw i32 %577, 24
  %579 = getelementptr inbounds [5 x i8], ptr %7, i32 0, i32 2
  %580 = load i8, ptr %579, align 1
  %581 = zext i8 %580 to i32
  %582 = shl nuw nsw i32 %581, 16
  %583 = or i32 %578, %582
  %584 = getelementptr inbounds [5 x i8], ptr %7, i32 0, i32 3
  %585 = load i8, ptr %584, align 1
  %586 = zext i8 %585 to i32
  %587 = shl nuw nsw i32 %586, 8
  %588 = or i32 %583, %587
  %589 = getelementptr inbounds [5 x i8], ptr %7, i32 0, i32 4
  %590 = load i8, ptr %589, align 1
  %591 = zext i8 %590 to i32
  %592 = or i32 %588, %591
  %593 = load ptr, ptr %544, align 4
  %594 = load ptr, ptr %593, align 4
  %595 = call i32 %594(ptr noundef %593, i32 noundef 1, i8 noundef zeroext -96, ptr noundef nonnull %7, i32 noundef 1) #10
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %602, label %597

597:                                              ; preds = %573
  %598 = load ptr, ptr %544, align 4
  %599 = getelementptr inbounds %struct.cxd2880_io, ptr %598, i32 0, i32 2
  %600 = load ptr, ptr %599, align 4
  %601 = call i32 %600(ptr noundef %598, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %626

602:                                              ; preds = %573
  %603 = load i8, ptr %7, align 1
  %604 = and i8 %603, 3
  %605 = icmp eq i8 %604, 0
  %606 = select i1 %605, i32 16200, i32 64800
  %607 = load ptr, ptr %544, align 4
  %608 = getelementptr inbounds %struct.cxd2880_io, ptr %607, i32 0, i32 2
  %609 = load ptr, ptr %608, align 4
  %610 = call i32 %609(ptr noundef %607, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  %611 = load ptr, ptr %544, align 4
  %612 = getelementptr inbounds %struct.cxd2880_io, ptr %611, i32 0, i32 2
  %613 = load ptr, ptr %612, align 4
  %614 = call i32 %613(ptr noundef %611, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 32) #10
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %626

616:                                              ; preds = %602
  %617 = load ptr, ptr %544, align 4
  %618 = load ptr, ptr %617, align 4
  %619 = call i32 %618(ptr noundef %617, i32 noundef 1, i8 noundef zeroext 111, ptr noundef nonnull %7, i32 noundef 1) #10
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %626

621:                                              ; preds = %616
  %622 = load i8, ptr %7, align 1
  %623 = and i8 %622, 15
  %624 = zext i8 %623 to i32
  %625 = shl nuw nsw i32 %606, %624
  br label %626

626:                                              ; preds = %621, %616, %602, %597, %568, %559, %551, %540, %536, %532, %528, %524
  %627 = phi i32 [ 0, %528 ], [ 0, %568 ], [ %592, %621 ], [ %592, %616 ], [ %592, %602 ], [ %592, %597 ], [ 0, %559 ], [ 0, %551 ], [ 0, %540 ], [ 0, %536 ], [ 0, %532 ], [ 0, %524 ]
  %628 = phi i32 [ 0, %528 ], [ 0, %568 ], [ %625, %621 ], [ 0, %616 ], [ 0, %602 ], [ 0, %597 ], [ 0, %559 ], [ 0, %551 ], [ 0, %540 ], [ 0, %536 ], [ 0, %532 ], [ 0, %524 ]
  %629 = phi i32 [ -22, %528 ], [ -11, %568 ], [ 0, %621 ], [ %619, %616 ], [ %614, %602 ], [ %595, %597 ], [ %557, %559 ], [ %548, %551 ], [ %541, %540 ], [ -22, %536 ], [ -22, %532 ], [ -22, %524 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %7) #10
  br label %630

630:                                              ; preds = %626, %520
  %631 = phi ptr [ %525, %626 ], [ %440, %520 ]
  %632 = phi i32 [ %627, %626 ], [ %521, %520 ]
  %633 = phi i32 [ %628, %626 ], [ %522, %520 ]
  %634 = phi i32 [ %629, %626 ], [ %523, %520 ]
  %635 = load ptr, ptr %631, align 4
  call void @mutex_unlock(ptr noundef %635) #10
  %636 = icmp eq i32 %634, 0
  %637 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  store i8 1, ptr %637, align 2
  %638 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  br i1 %636, label %639, label %650

639:                                              ; preds = %630
  store i8 3, ptr %638, align 1
  %640 = zext i32 %632 to i64
  %641 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %642 = load i64, ptr %641, align 1
  %643 = add i64 %642, %640
  store i64 %643, ptr %641, align 1
  %644 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 1, ptr %644, align 1
  %645 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 3, ptr %645, align 1
  %646 = zext i32 %633 to i64
  %647 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %648 = load i64, ptr %647, align 1
  %649 = add i64 %648, %646
  store i64 %649, ptr %647, align 1
  br label %653

650:                                              ; preds = %630
  store i8 0, ptr %638, align 1
  %651 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 1, ptr %651, align 1
  %652 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %652, align 1
  br label %653

653:                                              ; preds = %650, %639, %425
  %654 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 10
  %655 = load i32, ptr %654, align 4
  %656 = load volatile i32, ptr @jiffies, align 64
  %657 = sub i32 %655, %656
  %658 = icmp slt i32 %657, 0
  br i1 %658, label %659, label %873

659:                                              ; preds = %653
  %660 = load volatile i32, ptr @jiffies, align 64
  %661 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 11
  %662 = load i32, ptr %661, align 4
  %663 = call i32 @__msecs_to_jiffies(i32 noundef %662) #10
  %664 = add i32 %663, %660
  store i32 %664, ptr %654, align 4
  %665 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %666 = load i32, ptr %665, align 4
  switch i32 %666, label %1034 [
    i32 3, label %667
    i32 16, label %731
  ]

667:                                              ; preds = %659
  %668 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 7
  %669 = load ptr, ptr %668, align 4
  call void @mutex_lock(ptr noundef %669) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %6, i8 0, i32 3, i1 false) #10, !annotation !8
  %670 = icmp eq ptr %409, null
  br i1 %670, label %727, label %671

671:                                              ; preds = %667
  %672 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 3
  %673 = load i32, ptr %672, align 4
  %674 = icmp eq i32 %673, 2
  br i1 %674, label %727, label %675

675:                                              ; preds = %671
  %676 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 22
  %677 = load i32, ptr %676, align 4
  %678 = icmp eq i32 %677, 2
  br i1 %678, label %679, label %727

679:                                              ; preds = %675
  %680 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 25
  %681 = load i32, ptr %680, align 4
  %682 = icmp eq i32 %681, 1
  br i1 %682, label %683, label %727

683:                                              ; preds = %679
  %684 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 1
  %685 = load ptr, ptr %684, align 4
  %686 = getelementptr inbounds %struct.cxd2880_io, ptr %685, i32 0, i32 2
  %687 = load ptr, ptr %686, align 4
  %688 = call i32 %687(ptr noundef %685, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #10
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %690, label %727

690:                                              ; preds = %683
  %691 = load ptr, ptr %684, align 4
  %692 = load ptr, ptr %691, align 4
  %693 = call i32 %692(ptr noundef %691, i32 noundef 1, i8 noundef zeroext 21, ptr noundef nonnull %6, i32 noundef 3) #10
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %727

695:                                              ; preds = %690
  %696 = load i8, ptr %6, align 1
  %697 = zext i8 %696 to i32
  %698 = and i32 %697, 64
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %727, label %700

700:                                              ; preds = %695
  %701 = shl nuw nsw i32 %697, 16
  %702 = and i32 %701, 4128768
  %703 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 1
  %704 = load i8, ptr %703, align 1
  %705 = zext i8 %704 to i32
  %706 = shl nuw nsw i32 %705, 8
  %707 = or i32 %706, %702
  %708 = getelementptr inbounds [3 x i8], ptr %6, i32 0, i32 2
  %709 = load i8, ptr %708, align 1
  %710 = zext i8 %709 to i32
  %711 = or i32 %707, %710
  %712 = load ptr, ptr %684, align 4
  %713 = getelementptr inbounds %struct.cxd2880_io, ptr %712, i32 0, i32 2
  %714 = load ptr, ptr %713, align 4
  %715 = call i32 %714(ptr noundef %712, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #10
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %727

717:                                              ; preds = %700
  %718 = load ptr, ptr %684, align 4
  %719 = load ptr, ptr %718, align 4
  %720 = call i32 %719(ptr noundef %718, i32 noundef 1, i8 noundef zeroext 96, ptr noundef nonnull %6, i32 noundef 1) #10
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %727

722:                                              ; preds = %717
  %723 = load i8, ptr %6, align 1
  %724 = and i8 %723, 31
  %725 = zext i8 %724 to i32
  %726 = shl i32 1632, %725
  br label %727

727:                                              ; preds = %722, %717, %700, %695, %690, %683, %679, %675, %671, %667
  %728 = phi i32 [ 0, %671 ], [ 0, %695 ], [ %711, %722 ], [ %711, %717 ], [ %711, %700 ], [ 0, %690 ], [ 0, %683 ], [ 0, %679 ], [ 0, %675 ], [ 0, %667 ]
  %729 = phi i32 [ 0, %671 ], [ 0, %695 ], [ %726, %722 ], [ 0, %717 ], [ 0, %700 ], [ 0, %690 ], [ 0, %683 ], [ 0, %679 ], [ 0, %675 ], [ 0, %667 ]
  %730 = phi i32 [ -22, %671 ], [ -11, %695 ], [ 0, %722 ], [ %720, %717 ], [ %715, %700 ], [ %693, %690 ], [ %688, %683 ], [ -22, %679 ], [ -22, %675 ], [ -22, %667 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #10
  br label %850

731:                                              ; preds = %659
  %732 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 7
  %733 = load ptr, ptr %732, align 4
  call void @mutex_lock(ptr noundef %733) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false) #10, !annotation !8
  %734 = icmp eq ptr %409, null
  br i1 %734, label %846, label %735

735:                                              ; preds = %731
  %736 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 3
  %737 = load i32, ptr %736, align 4
  %738 = icmp eq i32 %737, 2
  br i1 %738, label %846, label %739

739:                                              ; preds = %735
  %740 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 22
  %741 = load i32, ptr %740, align 4
  %742 = icmp eq i32 %741, 2
  br i1 %742, label %743, label %846

743:                                              ; preds = %739
  %744 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 25
  %745 = load i32, ptr %744, align 4
  %746 = icmp eq i32 %745, 2
  br i1 %746, label %747, label %846

747:                                              ; preds = %743
  %748 = call i32 @slvt_freeze_reg(ptr noundef nonnull %409) #10
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %846

750:                                              ; preds = %747
  %751 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 1
  %752 = load ptr, ptr %751, align 4
  %753 = getelementptr inbounds %struct.cxd2880_io, ptr %752, i32 0, i32 2
  %754 = load ptr, ptr %753, align 4
  %755 = call i32 %754(ptr noundef %752, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #10
  %756 = icmp eq i32 %755, 0
  %757 = load ptr, ptr %751, align 4
  br i1 %756, label %762, label %758

758:                                              ; preds = %750
  %759 = getelementptr inbounds %struct.cxd2880_io, ptr %757, i32 0, i32 2
  %760 = load ptr, ptr %759, align 4
  %761 = call i32 %760(ptr noundef %757, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %846

762:                                              ; preds = %750
  %763 = load ptr, ptr %757, align 4
  %764 = call i32 %763(ptr noundef %757, i32 noundef 1, i8 noundef zeroext 21, ptr noundef nonnull %5, i32 noundef 3) #10
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %771, label %766

766:                                              ; preds = %762
  %767 = load ptr, ptr %751, align 4
  %768 = getelementptr inbounds %struct.cxd2880_io, ptr %767, i32 0, i32 2
  %769 = load ptr, ptr %768, align 4
  %770 = call i32 %769(ptr noundef %767, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %846

771:                                              ; preds = %762
  %772 = load i8, ptr %5, align 1
  %773 = zext i8 %772 to i32
  %774 = and i32 %773, 64
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %781

776:                                              ; preds = %771
  %777 = load ptr, ptr %751, align 4
  %778 = getelementptr inbounds %struct.cxd2880_io, ptr %777, i32 0, i32 2
  %779 = load ptr, ptr %778, align 4
  %780 = call i32 %779(ptr noundef %777, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %846

781:                                              ; preds = %771
  %782 = shl nuw nsw i32 %773, 16
  %783 = and i32 %782, 4128768
  %784 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 1
  %785 = load i8, ptr %784, align 1
  %786 = zext i8 %785 to i32
  %787 = shl nuw nsw i32 %786, 8
  %788 = or i32 %787, %783
  %789 = getelementptr inbounds [3 x i8], ptr %5, i32 0, i32 2
  %790 = load i8, ptr %789, align 1
  %791 = zext i8 %790 to i32
  %792 = or i32 %788, %791
  %793 = load ptr, ptr %751, align 4
  %794 = load ptr, ptr %793, align 4
  %795 = call i32 %794(ptr noundef %793, i32 noundef 1, i8 noundef zeroext -99, ptr noundef nonnull %5, i32 noundef 1) #10
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %802, label %797

797:                                              ; preds = %781
  %798 = load ptr, ptr %751, align 4
  %799 = getelementptr inbounds %struct.cxd2880_io, ptr %798, i32 0, i32 2
  %800 = load ptr, ptr %799, align 4
  %801 = call i32 %800(ptr noundef %798, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %846

802:                                              ; preds = %781
  %803 = load i8, ptr %5, align 1
  %804 = and i8 %803, 7
  %805 = zext i8 %804 to i32
  %806 = load ptr, ptr %751, align 4
  %807 = load ptr, ptr %806, align 4
  %808 = call i32 %807(ptr noundef %806, i32 noundef 1, i8 noundef zeroext -96, ptr noundef nonnull %5, i32 noundef 1) #10
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %815, label %810

810:                                              ; preds = %802
  %811 = load ptr, ptr %751, align 4
  %812 = getelementptr inbounds %struct.cxd2880_io, ptr %811, i32 0, i32 2
  %813 = load ptr, ptr %812, align 4
  %814 = call i32 %813(ptr noundef %811, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %846

815:                                              ; preds = %802
  %816 = load i8, ptr %5, align 1
  %817 = and i8 %816, 3
  %818 = zext i8 %817 to i32
  %819 = load ptr, ptr %751, align 4
  %820 = getelementptr inbounds %struct.cxd2880_io, ptr %819, i32 0, i32 2
  %821 = load ptr, ptr %820, align 4
  %822 = call i32 %821(ptr noundef %819, i32 noundef 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  %823 = load ptr, ptr %751, align 4
  %824 = getelementptr inbounds %struct.cxd2880_io, ptr %823, i32 0, i32 2
  %825 = load ptr, ptr %824, align 4
  %826 = call i32 %825(ptr noundef %823, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 32) #10
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %828, label %846

828:                                              ; preds = %815
  %829 = load ptr, ptr %751, align 4
  %830 = load ptr, ptr %829, align 4
  %831 = call i32 %830(ptr noundef %829, i32 noundef 1, i8 noundef zeroext 114, ptr noundef nonnull %5, i32 noundef 1) #10
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %846

833:                                              ; preds = %828
  %834 = icmp ugt i8 %817, 1
  br i1 %834, label %846, label %835

835:                                              ; preds = %833
  %836 = load i8, ptr %5, align 1
  %837 = and i8 %836, 15
  %838 = zext i8 %837 to i32
  %839 = getelementptr [2 x [8 x i16]], ptr @cxd2880_post_bit_err_t2.n_bch_bits_lookup, i32 0, i32 %818, i32 %805
  %840 = load i16, ptr %839, align 2
  %841 = zext i16 %840 to i32
  %842 = shl nuw nsw i32 %841, %838
  %843 = icmp ugt i32 %792, %842
  %844 = select i1 %843, i32 0, i32 %842
  %845 = select i1 %843, i32 -11, i32 0
  br label %846

846:                                              ; preds = %835, %833, %828, %815, %810, %797, %776, %766, %758, %747, %743, %739, %735, %731
  %847 = phi i32 [ 0, %735 ], [ 0, %776 ], [ %792, %833 ], [ %792, %828 ], [ %792, %815 ], [ %792, %810 ], [ %792, %797 ], [ 0, %766 ], [ 0, %758 ], [ 0, %747 ], [ 0, %743 ], [ 0, %739 ], [ 0, %731 ], [ %792, %835 ]
  %848 = phi i32 [ 0, %735 ], [ 0, %776 ], [ 0, %833 ], [ 0, %828 ], [ 0, %815 ], [ 0, %810 ], [ 0, %797 ], [ 0, %766 ], [ 0, %758 ], [ 0, %747 ], [ 0, %743 ], [ 0, %739 ], [ 0, %731 ], [ %844, %835 ]
  %849 = phi i32 [ -22, %735 ], [ -11, %776 ], [ -11, %833 ], [ %831, %828 ], [ %826, %815 ], [ %808, %810 ], [ %795, %797 ], [ %764, %766 ], [ %755, %758 ], [ %748, %747 ], [ -22, %743 ], [ -22, %739 ], [ -22, %731 ], [ %845, %835 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #10
  br label %850

850:                                              ; preds = %846, %727
  %851 = phi ptr [ %732, %846 ], [ %668, %727 ]
  %852 = phi i32 [ %847, %846 ], [ %728, %727 ]
  %853 = phi i32 [ %848, %846 ], [ %729, %727 ]
  %854 = phi i32 [ %849, %846 ], [ %730, %727 ]
  %855 = load ptr, ptr %851, align 4
  call void @mutex_unlock(ptr noundef %855) #10
  %856 = icmp eq i32 %854, 0
  %857 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %857, align 4
  %858 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  br i1 %856, label %859, label %870

859:                                              ; preds = %850
  store i8 3, ptr %858, align 1
  %860 = zext i32 %852 to i64
  %861 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %862 = load i64, ptr %861, align 1
  %863 = add i64 %862, %860
  store i64 %863, ptr %861, align 1
  %864 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %864, align 1
  %865 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %865, align 1
  %866 = zext i32 %853 to i64
  %867 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %868 = load i64, ptr %867, align 1
  %869 = add i64 %868, %866
  store i64 %869, ptr %867, align 1
  br label %873

870:                                              ; preds = %850
  store i8 0, ptr %858, align 1
  %871 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %871, align 1
  %872 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %872, align 1
  br label %873

873:                                              ; preds = %870, %859, %653
  %874 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 12
  %875 = load i32, ptr %874, align 4
  %876 = load volatile i32, ptr @jiffies, align 64
  %877 = sub i32 %875, %876
  %878 = icmp slt i32 %877, 0
  br i1 %878, label %879, label %1034

879:                                              ; preds = %873
  %880 = load volatile i32, ptr @jiffies, align 64
  %881 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 13
  %882 = load i32, ptr %881, align 4
  %883 = call i32 @__msecs_to_jiffies(i32 noundef %882) #10
  %884 = add i32 %883, %880
  store i32 %884, ptr %874, align 4
  %885 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %886 = load i32, ptr %885, align 4
  switch i32 %886, label %1034 [
    i32 3, label %887
    i32 16, label %949
  ]

887:                                              ; preds = %879
  %888 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 7
  %889 = load ptr, ptr %888, align 4
  call void @mutex_lock(ptr noundef %889) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false) #10, !annotation !8
  %890 = icmp eq ptr %409, null
  br i1 %890, label %945, label %891

891:                                              ; preds = %887
  %892 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 3
  %893 = load i32, ptr %892, align 4
  %894 = icmp eq i32 %893, 2
  br i1 %894, label %945, label %895

895:                                              ; preds = %891
  %896 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 22
  %897 = load i32, ptr %896, align 4
  %898 = icmp eq i32 %897, 2
  br i1 %898, label %899, label %945

899:                                              ; preds = %895
  %900 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 25
  %901 = load i32, ptr %900, align 4
  %902 = icmp eq i32 %901, 1
  br i1 %902, label %903, label %945

903:                                              ; preds = %899
  %904 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 1
  %905 = load ptr, ptr %904, align 4
  %906 = getelementptr inbounds %struct.cxd2880_io, ptr %905, i32 0, i32 2
  %907 = load ptr, ptr %906, align 4
  %908 = call i32 %907(ptr noundef %905, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 13) #10
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %910, label %945

910:                                              ; preds = %903
  %911 = load ptr, ptr %904, align 4
  %912 = load ptr, ptr %911, align 4
  %913 = call i32 %912(ptr noundef %911, i32 noundef 1, i8 noundef zeroext 24, ptr noundef nonnull %4, i32 noundef 3) #10
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %945

915:                                              ; preds = %910
  %916 = load i8, ptr %4, align 1
  %917 = and i8 %916, 1
  %918 = icmp eq i8 %917, 0
  br i1 %918, label %945, label %919

919:                                              ; preds = %915
  %920 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %921 = load i8, ptr %920, align 1
  %922 = zext i8 %921 to i32
  %923 = shl nuw nsw i32 %922, 8
  %924 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %925 = load i8, ptr %924, align 1
  %926 = zext i8 %925 to i32
  %927 = or i32 %923, %926
  %928 = load ptr, ptr %904, align 4
  %929 = getelementptr inbounds %struct.cxd2880_io, ptr %928, i32 0, i32 2
  %930 = load ptr, ptr %929, align 4
  %931 = call i32 %930(ptr noundef %928, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 16) #10
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %933, label %945

933:                                              ; preds = %919
  %934 = load ptr, ptr %904, align 4
  %935 = load ptr, ptr %934, align 4
  %936 = call i32 %935(ptr noundef %934, i32 noundef 1, i8 noundef zeroext 92, ptr noundef nonnull %4, i32 noundef 1) #10
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %945

938:                                              ; preds = %933
  %939 = load i8, ptr %4, align 1
  %940 = and i8 %939, 15
  %941 = zext i8 %940 to i32
  %942 = shl nuw nsw i32 1, %941
  %943 = icmp ugt i32 %927, %942
  %944 = select i1 %943, i32 -11, i32 0
  br label %945

945:                                              ; preds = %938, %933, %919, %915, %910, %903, %899, %895, %891, %887
  %946 = phi i32 [ 0, %891 ], [ 0, %915 ], [ %927, %938 ], [ %927, %933 ], [ %927, %919 ], [ 0, %910 ], [ 0, %903 ], [ 0, %899 ], [ 0, %895 ], [ 0, %887 ]
  %947 = phi i32 [ 0, %891 ], [ 0, %915 ], [ %942, %938 ], [ 0, %933 ], [ 0, %919 ], [ 0, %910 ], [ 0, %903 ], [ 0, %899 ], [ 0, %895 ], [ 0, %887 ]
  %948 = phi i32 [ -22, %891 ], [ -11, %915 ], [ %944, %938 ], [ %936, %933 ], [ %931, %919 ], [ %913, %910 ], [ %908, %903 ], [ -22, %899 ], [ -22, %895 ], [ -22, %887 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  br label %1011

949:                                              ; preds = %879
  %950 = getelementptr inbounds %struct.cxd2880_priv, ptr %409, i32 0, i32 7
  %951 = load ptr, ptr %950, align 4
  call void @mutex_lock(ptr noundef %951) #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #10, !annotation !8
  %952 = icmp eq ptr %409, null
  br i1 %952, label %1007, label %953

953:                                              ; preds = %949
  %954 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 3
  %955 = load i32, ptr %954, align 4
  %956 = icmp eq i32 %955, 2
  br i1 %956, label %1007, label %957

957:                                              ; preds = %953
  %958 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 22
  %959 = load i32, ptr %958, align 4
  %960 = icmp eq i32 %959, 2
  br i1 %960, label %961, label %1007

961:                                              ; preds = %957
  %962 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 25
  %963 = load i32, ptr %962, align 4
  %964 = icmp eq i32 %963, 2
  br i1 %964, label %965, label %1007

965:                                              ; preds = %961
  %966 = getelementptr inbounds %struct.cxd2880_tnrdmd, ptr %409, i32 0, i32 1
  %967 = load ptr, ptr %966, align 4
  %968 = getelementptr inbounds %struct.cxd2880_io, ptr %967, i32 0, i32 2
  %969 = load ptr, ptr %968, align 4
  %970 = call i32 %969(ptr noundef %967, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 11) #10
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %1007

972:                                              ; preds = %965
  %973 = load ptr, ptr %966, align 4
  %974 = load ptr, ptr %973, align 4
  %975 = call i32 %974(ptr noundef %973, i32 noundef 1, i8 noundef zeroext 24, ptr noundef nonnull %3, i32 noundef 3) #10
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %977, label %1007

977:                                              ; preds = %972
  %978 = load i8, ptr %3, align 1
  %979 = and i8 %978, 1
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %1007, label %981

981:                                              ; preds = %977
  %982 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %983 = load i8, ptr %982, align 1
  %984 = zext i8 %983 to i32
  %985 = shl nuw nsw i32 %984, 8
  %986 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %987 = load i8, ptr %986, align 1
  %988 = zext i8 %987 to i32
  %989 = or i32 %985, %988
  %990 = load ptr, ptr %966, align 4
  %991 = getelementptr inbounds %struct.cxd2880_io, ptr %990, i32 0, i32 2
  %992 = load ptr, ptr %991, align 4
  %993 = call i32 %992(ptr noundef %990, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 36) #10
  %994 = icmp eq i32 %993, 0
  br i1 %994, label %995, label %1007

995:                                              ; preds = %981
  %996 = load ptr, ptr %966, align 4
  %997 = load ptr, ptr %996, align 4
  %998 = call i32 %997(ptr noundef %996, i32 noundef 1, i8 noundef zeroext -36, ptr noundef nonnull %3, i32 noundef 1) #10
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1007

1000:                                             ; preds = %995
  %1001 = load i8, ptr %3, align 1
  %1002 = and i8 %1001, 15
  %1003 = zext i8 %1002 to i32
  %1004 = shl nuw nsw i32 1, %1003
  %1005 = icmp ugt i32 %989, %1004
  %1006 = select i1 %1005, i32 -11, i32 0
  br label %1007

1007:                                             ; preds = %1000, %995, %981, %977, %972, %965, %961, %957, %953, %949
  %1008 = phi i32 [ 0, %953 ], [ 0, %977 ], [ %989, %1000 ], [ %989, %995 ], [ %989, %981 ], [ 0, %972 ], [ 0, %965 ], [ 0, %961 ], [ 0, %957 ], [ 0, %949 ]
  %1009 = phi i32 [ 0, %953 ], [ 0, %977 ], [ %1004, %1000 ], [ 0, %995 ], [ 0, %981 ], [ 0, %972 ], [ 0, %965 ], [ 0, %961 ], [ 0, %957 ], [ 0, %949 ]
  %1010 = phi i32 [ -22, %953 ], [ -11, %977 ], [ %1006, %1000 ], [ %998, %995 ], [ %993, %981 ], [ %975, %972 ], [ %970, %965 ], [ -22, %961 ], [ -22, %957 ], [ -22, %949 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  br label %1011

1011:                                             ; preds = %1007, %945
  %1012 = phi ptr [ %950, %1007 ], [ %888, %945 ]
  %1013 = phi i32 [ %1008, %1007 ], [ %946, %945 ]
  %1014 = phi i32 [ %1009, %1007 ], [ %947, %945 ]
  %1015 = phi i32 [ %1010, %1007 ], [ %948, %945 ]
  %1016 = load ptr, ptr %1012, align 4
  call void @mutex_unlock(ptr noundef %1016) #10
  %1017 = icmp eq i32 %1015, 0
  %1018 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %1018, align 2
  %1019 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  br i1 %1017, label %1020, label %1031

1020:                                             ; preds = %1011
  store i8 3, ptr %1019, align 1
  %1021 = zext i32 %1013 to i64
  %1022 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %1023 = load i64, ptr %1022, align 1
  %1024 = add i64 %1023, %1021
  store i64 %1024, ptr %1022, align 1
  %1025 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %1025, align 1
  %1026 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %1026, align 1
  %1027 = zext i32 %1014 to i64
  %1028 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %1029 = load i64, ptr %1028, align 1
  %1030 = add i64 %1029, %1027
  store i64 %1030, ptr %1028, align 1
  br label %1034

1031:                                             ; preds = %1011
  store i8 0, ptr %1019, align 1
  %1032 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %1032, align 1
  %1033 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %1033, align 1
  br label %1034

1034:                                             ; preds = %1031, %1020, %879, %873, %659, %431, %412, %402, %47, %40, %23
  %1035 = phi i32 [ %44, %47 ], [ -22, %402 ], [ -22, %40 ], [ -22, %23 ], [ 0, %412 ], [ 0, %431 ], [ 0, %659 ], [ 0, %873 ], [ 0, %879 ], [ 0, %1020 ], [ 0, %1031 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #10
  ret i32 %1035
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cxd2880_read_ber(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #7 {
  store i32 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_read_signal_strength(ptr noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cxd2880_read_signal_strength) #11
  br label %29

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cxd2880_priv, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %27 [
    i32 3, label %16
    i32 16, label %16
  ]

16:                                               ; preds = %9, %9
  %17 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef %11, ptr noundef nonnull %3) #10
  %18 = load ptr, ptr %12, align 4
  call void @mutex_unlock(ptr noundef %18) #10
  %19 = load i32, ptr %3, align 4
  %20 = sdiv i32 %19, 125
  %21 = call i32 @llvm.smax.i32(i32 %20, i32 -840)
  %22 = call i32 @llvm.smin.i32(i32 %21, i32 -240)
  %23 = mul nsw i32 %22, 65535
  %24 = add nsw i32 %23, 55049400
  %25 = udiv i32 %24, 600
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %1, align 2
  br label %29

27:                                               ; preds = %9
  %28 = load ptr, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %28) #10
  br label %29

29:                                               ; preds = %27, %16, %7
  %30 = phi i32 [ %17, %16 ], [ -22, %27 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_read_snr(ptr noundef readonly %0, ptr noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cxd2880_read_snr) #11
  br label %29

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.cxd2880_priv, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  tail call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %20 [
    i32 3, label %16
    i32 16, label %18
  ]

16:                                               ; preds = %9
  %17 = call i32 @cxd2880_tnrdmd_dvbt_mon_snr(ptr noundef %11, ptr noundef nonnull %3) #10
  br label %23

18:                                               ; preds = %9
  %19 = call i32 @cxd2880_tnrdmd_dvbt2_mon_snr(ptr noundef %11, ptr noundef nonnull %3) #10
  br label %23

20:                                               ; preds = %9
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cxd2880_read_snr) #11
  %22 = load ptr, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef %22) #10
  br label %29

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %25 = load ptr, ptr %12, align 4
  call void @mutex_unlock(ptr noundef %25) #10
  %26 = load i32, ptr %3, align 4
  %27 = call i32 @llvm.smax.i32(i32 %26, i32 0)
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %1, align 2
  br label %29

29:                                               ; preds = %23, %20, %7
  %30 = phi i32 [ %24, %23 ], [ -22, %20 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cxd2880_read_ucblocks(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.cxd2880_read_ucblocks) #11
  br label %25

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.cxd2880_priv, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %19 [
    i32 3, label %15
    i32 16, label %17
  ]

15:                                               ; preds = %8
  %16 = tail call i32 @cxd2880_tnrdmd_dvbt_mon_packet_error_number(ptr noundef %10, ptr noundef nonnull %1) #10
  br label %22

17:                                               ; preds = %8
  %18 = tail call i32 @cxd2880_tnrdmd_dvbt2_mon_packet_error_number(ptr noundef %10, ptr noundef nonnull %1) #10
  br label %22

19:                                               ; preds = %8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.cxd2880_read_ucblocks) #11
  %21 = load ptr, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %21) #10
  br label %25

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %24 = load ptr, ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef %24) #10
  br label %25

25:                                               ; preds = %22, %19, %6
  %26 = phi i32 [ %23, %22 ], [ -22, %19 ], [ -22, %6 ]
  ret i32 %26
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_integ_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_set_cfg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_sleep(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_tune1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_tune2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_tune1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_tune2(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_qam(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_sync_stat(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog2(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_check_l1post_valid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_data_plp_error(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_active_plp(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_post(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_bbheader(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slvt_freeze_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_snr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_snr(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_packet_error_number(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_packet_error_number(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
