; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mxl5xx.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mxl5xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxl5xx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mxl5xx_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mxl5xx_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.list_head = type { ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mxl = type { %struct.list_head, ptr, %struct.dvb_frontend, ptr, i32, i32, i32, [3 x i8], i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mxl_base = type { %struct.list_head, %struct.list_head, i8, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i32, %struct.mutex, %struct.mutex, %struct.mutex, [248 x i8], i32, [512 x i8] }
%struct.mxl5xx_cfg = type { i8, i8, i32, i32, i32, ptr, i32, ptr, ptr }
%struct.MXL_REG_FIELD_T = type { i32, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.MBIN_FILE_HEADER_T = type { i8, i8, i8, i8, [4 x i8], [3 x i8], i8, [4 x i8] }
%struct.MBIN_FILE_T = type { %struct.MBIN_FILE_HEADER_T, [1 x i8] }
%struct.MBIN_SEGMENT_HEADER_T = type { i8, [3 x i8], [4 x i8] }
%struct.MBIN_SEGMENT_T = type { %struct.MBIN_SEGMENT_HEADER_T, [1 x i8] }

@mxl5xx_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&base->i2c_lock\00", align 1
@mxl5xx_attach.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"&base->status_lock\00", align 1
@mxl5xx_attach.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"&base->tune_lock\00", align 1
@mxllist = internal global %struct.list_head { ptr @mxllist, ptr @mxllist }, align 4
@mxl_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"MaxLinear MxL5xx DVB-S/S2 tuner-demodulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 300000000, i32 -1944967296, i32 0, i32 0, i32 1000000, i32 45000000, i32 0, i32 268436993 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr null, ptr @release, ptr null, ptr @init, ptr @sleep, ptr null, ptr null, ptr null, ptr @tune, ptr @get_algo, ptr null, ptr null, ptr @get_frontend, ptr @read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @send_master_cmd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@__kstrtab_mxl5xx_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxl5xx_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mxl5xx_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxl5xx_attach to i32), ptr @__kstrtab_mxl5xx_attach, ptr @__kstrtabns_mxl5xx_attach }, section "___ksymtab_gpl+mxl5xx_attach", align 4
@__UNIQUE_ID_description249 = internal constant [63 x i8] c"description=MaxLinear MxL5xx DVB-S/S2 tuner-demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [72 x i8] c"author=Ralph and Marcus Metzler, Metzler Brothers Systementwicklung GbR\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@ts_map1_to_1 = internal global [8 x i8] c"\00\01\02\03\04\05\06\07", align 1
@ts_map54x = internal global [8 x i8] c"\02\03\04\05\08\08\08\08", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Hydra chip version %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"padMuxBond=%08x, prcmChipId=%08x, prcmSoCId=%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"i2c read error 1\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"i2c read error 2\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"i2c write error\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Hydra FW alive. Hail!\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Invalid FW Header\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Invalid FW Checksum\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s: Invalid file header ID (%c)\0A\00", align 1
@__func__.do_firmware_download = private unnamed_addr constant [21 x i8] c"do_firmware_download\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%s: Invalid segment header ID (%c)\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"fw block write failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%s busy\0A\00", align 1
@__func__.send_command = private unnamed_addr constant [13 x i8] c"send_command\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"chipID=%08x\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"chipVer=%08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"FWVer=%08x\0A\00", align 1
@__const.config_ts.xpt_sync_polarity = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 8, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 9, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 10, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 11, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 12, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 13, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 14, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 15, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_clock_polarity = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 16, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 17, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 18, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 19, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 20, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 21, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 22, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 23, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_valid_polarity = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_ts_clock_phase = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 0, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 4, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 8, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 12, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 16, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 20, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 24, i8 3, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708136, i8 28, i8 3, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_lsb_first = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 16, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 17, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 18, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 19, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 20, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 21, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 22, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 23, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_sync_byte = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708144, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_enable_output = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_err_replace_sync = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 24, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 25, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 26, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 27, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 28, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 29, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 30, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708148, i8 31, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_err_replace_valid = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 8, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 9, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 10, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 11, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 12, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 13, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 14, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708140, i8 15, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_continuous_clock = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 0, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 1, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 2, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 3, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 4, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 5, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 6, i8 1, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871707692, i8 7, i8 1, [2 x i8] zeroinitializer }], align 4
@__const.config_ts.xpt_nco_clock_rate = private unnamed_addr constant [8 x { i32, i8, i8, [2 x i8] }] [{ i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 80, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 81, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 82, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 83, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 84, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 85, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 86, [2 x i8] zeroinitializer }, { i32, i8, i8, [2 x i8] } { i32 -1871708092, i8 16, i8 87, [2 x i8] zeroinitializer }], align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"DIGIO = %08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"set drive_strength = %u\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__const.conv_fec.fec2fec = private unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 10, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 11], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_mxl5xx_attach], section "llvm.metadata"
@switch.table.get_frontend = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], align 4
@switch.table.read_status = private unnamed_addr constant [3 x i32] [i32 5, i32 5, i32 1], align 4
@switch.table.read_status.22 = private unnamed_addr constant [3 x i32] [i32 6, i32 6, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mxl5xx_attach(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1076) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 4
  store i32 %2, ptr %10, align 8
  %11 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 5
  store i32 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 6
  store i32 -1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = load i8, ptr %1, align 4
  %16 = load ptr, ptr @mxllist, align 4
  %17 = icmp eq ptr %16, @mxllist
  br i1 %17, label %42, label %18

18:                                               ; preds = %27, %9
  %19 = phi ptr [ %28, %27 ], [ %16, %9 ]
  %20 = getelementptr inbounds %struct.mxl_base, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.mxl_base, ptr %19, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, %15
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %18
  %28 = load ptr, ptr %19, align 4
  %29 = icmp eq ptr %28, @mxllist
  br i1 %29, label %42, label %18

30:                                               ; preds = %23
  %31 = icmp eq ptr %19, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.mxl_base, ptr %19, i32 0, i32 4
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  %36 = getelementptr inbounds %struct.mxl_base, ptr %19, i32 0, i32 13
  %37 = load i8, ptr %36, align 2
  %38 = zext i8 %37 to i32
  %39 = icmp ugt i32 %35, %38
  br i1 %39, label %81, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 1
  store ptr %19, ptr %41, align 8
  br label %68

42:                                               ; preds = %30, %27, %9
  %43 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %44 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 884) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %81, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 3
  store ptr %0, ptr %47, align 4
  %48 = load i8, ptr %1, align 4
  %49 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 2
  store i8 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.mxl5xx_cfg, ptr %1, i32 0, i32 1
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 4
  store i32 1, ptr %54, align 8
  %55 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %55, ptr noundef nonnull @.str, ptr noundef nonnull @mxl5xx_attach.__key) #13
  %56 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %56, ptr noundef nonnull @.str.2, ptr noundef nonnull @mxl5xx_attach.__key.1) #13
  %57 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %57, ptr noundef nonnull @.str.4, ptr noundef nonnull @mxl5xx_attach.__key.3) #13
  %58 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 1
  store volatile ptr %58, ptr %58, align 8
  %59 = getelementptr inbounds %struct.mxl_base, ptr %44, i32 0, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 1
  store ptr %44, ptr %60, align 8
  %61 = tail call fastcc i32 @probe(ptr noundef nonnull %7, ptr noundef %1)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %46
  tail call void @kfree(ptr noundef nonnull %44) #13
  br label %81

64:                                               ; preds = %46
  %65 = load ptr, ptr @mxllist, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %44, ptr %66, align 4
  store ptr %65, ptr %44, align 8
  %67 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr @mxllist, ptr %67, align 4
  store volatile ptr %44, ptr @mxllist, align 4
  br label %68

68:                                               ; preds = %64, %40
  %69 = phi ptr [ %19, %40 ], [ %44, %64 ]
  %70 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 2
  %71 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %71, ptr noundef nonnull align 4 dereferenceable(544) @mxl_ops, i32 544, i1 false)
  %72 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 7
  store i8 4, ptr %72, align 4
  %73 = trunc i32 %2 to i8
  %74 = getelementptr %struct.mxl, ptr %7, i32 0, i32 7, i32 1
  store i8 %73, ptr %74, align 1
  %75 = getelementptr %struct.mxl, ptr %7, i32 0, i32 7, i32 2
  store i8 8, ptr %75, align 2
  %76 = getelementptr inbounds %struct.mxl, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %76, align 4
  store ptr @set_input, ptr %4, align 4
  %77 = getelementptr inbounds %struct.mxl_base, ptr %69, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %7, ptr %79, align 4
  store ptr %78, ptr %7, align 8
  %80 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %77, ptr %80, align 4
  store volatile ptr %7, ptr %77, align 4
  br label %82

81:                                               ; preds = %63, %42, %32
  tail call void @kfree(ptr noundef nonnull %7) #13
  br label %82

82:                                               ; preds = %81, %68, %5
  %83 = phi ptr [ null, %81 ], [ %70, %68 ], [ null, %5 ]
  ret ptr %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @probe(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca i32, align 4
  %96 = alloca i32, align 4
  %97 = alloca i32, align 4
  %98 = alloca i32, align 4
  %99 = alloca i32, align 4
  %100 = alloca i32, align 4
  %101 = alloca i32, align 4
  %102 = alloca i32, align 4
  %103 = alloca i32, align 4
  %104 = alloca i32, align 4
  %105 = alloca i32, align 4
  %106 = alloca i32, align 4
  %107 = alloca i32, align 4
  %108 = alloca i32, align 4
  %109 = alloca i32, align 4
  %110 = alloca i32, align 4
  %111 = alloca i32, align 4
  %112 = alloca i32, align 4
  %113 = alloca i32, align 4
  %114 = alloca i32, align 4
  %115 = alloca i32, align 4
  %116 = alloca i32, align 4
  %117 = alloca i32, align 4
  %118 = alloca i32, align 4
  %119 = alloca i32, align 4
  %120 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.mxl_base, ptr %121, i32 0, i32 10
  store ptr @ts_map1_to_1, ptr %122, align 4
  %123 = load ptr, ptr %120, align 4
  %124 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  switch i32 %125, label %198 [
    i32 0, label %126
    i32 12, label %126
    i32 6, label %134
    i32 2, label %142
    i32 3, label %150
    i32 7, label %160
    i32 10, label %160
    i32 4, label %170
    i32 11, label %170
    i32 8, label %178
    i32 9, label %188
  ]

126:                                              ; preds = %2, %2
  %127 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 1, ptr %127, align 4
  %128 = load ptr, ptr %120, align 4
  %129 = getelementptr inbounds %struct.mxl_base, ptr %128, i32 0, i32 13
  store i8 8, ptr %129, align 2
  %130 = load ptr, ptr %120, align 4
  %131 = getelementptr inbounds %struct.mxl_base, ptr %130, i32 0, i32 14
  store i8 1, ptr %131, align 1
  %132 = load ptr, ptr %120, align 4
  %133 = getelementptr inbounds %struct.mxl_base, ptr %132, i32 0, i32 6
  store i32 0, ptr %133, align 4
  br label %206

134:                                              ; preds = %2
  %135 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 1, ptr %135, align 4
  %136 = load ptr, ptr %120, align 4
  %137 = getelementptr inbounds %struct.mxl_base, ptr %136, i32 0, i32 13
  store i8 8, ptr %137, align 2
  %138 = load ptr, ptr %120, align 4
  %139 = getelementptr inbounds %struct.mxl_base, ptr %138, i32 0, i32 14
  store i8 3, ptr %139, align 1
  %140 = load ptr, ptr %120, align 4
  %141 = getelementptr inbounds %struct.mxl_base, ptr %140, i32 0, i32 6
  store i32 9, ptr %141, align 4
  br label %206

142:                                              ; preds = %2
  %143 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 0, ptr %143, align 4
  %144 = load ptr, ptr %120, align 4
  %145 = getelementptr inbounds %struct.mxl_base, ptr %144, i32 0, i32 13
  store i8 8, ptr %145, align 2
  %146 = load ptr, ptr %120, align 4
  %147 = getelementptr inbounds %struct.mxl_base, ptr %146, i32 0, i32 14
  store i8 4, ptr %147, align 1
  %148 = load ptr, ptr %120, align 4
  %149 = getelementptr inbounds %struct.mxl_base, ptr %148, i32 0, i32 6
  store i32 2, ptr %149, align 4
  br label %206

150:                                              ; preds = %2
  %151 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 0, ptr %151, align 4
  %152 = load ptr, ptr %120, align 4
  %153 = getelementptr inbounds %struct.mxl_base, ptr %152, i32 0, i32 13
  store i8 4, ptr %153, align 2
  %154 = load ptr, ptr %120, align 4
  %155 = getelementptr inbounds %struct.mxl_base, ptr %154, i32 0, i32 14
  store i8 4, ptr %155, align 1
  %156 = load ptr, ptr %120, align 4
  %157 = getelementptr inbounds %struct.mxl_base, ptr %156, i32 0, i32 6
  store i32 3, ptr %157, align 4
  %158 = load ptr, ptr %120, align 4
  %159 = getelementptr inbounds %struct.mxl_base, ptr %158, i32 0, i32 10
  store ptr @ts_map54x, ptr %159, align 4
  br label %206

160:                                              ; preds = %2, %2
  %161 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 0, ptr %161, align 4
  %162 = load ptr, ptr %120, align 4
  %163 = getelementptr inbounds %struct.mxl_base, ptr %162, i32 0, i32 13
  store i8 4, ptr %163, align 2
  %164 = load ptr, ptr %120, align 4
  %165 = getelementptr inbounds %struct.mxl_base, ptr %164, i32 0, i32 14
  store i8 1, ptr %165, align 1
  %166 = load ptr, ptr %120, align 4
  %167 = getelementptr inbounds %struct.mxl_base, ptr %166, i32 0, i32 6
  store i32 10, ptr %167, align 4
  %168 = load ptr, ptr %120, align 4
  %169 = getelementptr inbounds %struct.mxl_base, ptr %168, i32 0, i32 10
  store ptr @ts_map54x, ptr %169, align 4
  br label %206

170:                                              ; preds = %2, %2
  %171 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 0, ptr %171, align 4
  %172 = load ptr, ptr %120, align 4
  %173 = getelementptr inbounds %struct.mxl_base, ptr %172, i32 0, i32 13
  store i8 6, ptr %173, align 2
  %174 = load ptr, ptr %120, align 4
  %175 = getelementptr inbounds %struct.mxl_base, ptr %174, i32 0, i32 14
  store i8 1, ptr %175, align 1
  %176 = load ptr, ptr %120, align 4
  %177 = getelementptr inbounds %struct.mxl_base, ptr %176, i32 0, i32 6
  store i32 4, ptr %177, align 4
  br label %206

178:                                              ; preds = %2
  %179 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 0, ptr %179, align 4
  %180 = load ptr, ptr %120, align 4
  %181 = getelementptr inbounds %struct.mxl_base, ptr %180, i32 0, i32 13
  store i8 8, ptr %181, align 2
  %182 = load ptr, ptr %120, align 4
  %183 = getelementptr inbounds %struct.mxl_base, ptr %182, i32 0, i32 14
  store i8 1, ptr %183, align 1
  %184 = load ptr, ptr %120, align 4
  %185 = getelementptr inbounds %struct.mxl_base, ptr %184, i32 0, i32 12
  store i8 1, ptr %185, align 1
  %186 = load ptr, ptr %120, align 4
  %187 = getelementptr inbounds %struct.mxl_base, ptr %186, i32 0, i32 6
  store i32 11, ptr %187, align 4
  br label %206

188:                                              ; preds = %2
  %189 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 1, ptr %189, align 4
  %190 = load ptr, ptr %120, align 4
  %191 = getelementptr inbounds %struct.mxl_base, ptr %190, i32 0, i32 13
  store i8 4, ptr %191, align 2
  %192 = load ptr, ptr %120, align 4
  %193 = getelementptr inbounds %struct.mxl_base, ptr %192, i32 0, i32 14
  store i8 3, ptr %193, align 1
  %194 = load ptr, ptr %120, align 4
  %195 = getelementptr inbounds %struct.mxl_base, ptr %194, i32 0, i32 6
  store i32 12, ptr %195, align 4
  %196 = load ptr, ptr %120, align 4
  %197 = getelementptr inbounds %struct.mxl_base, ptr %196, i32 0, i32 10
  store ptr @ts_map54x, ptr %197, align 4
  br label %206

198:                                              ; preds = %2
  %199 = getelementptr inbounds %struct.mxl_base, ptr %123, i32 0, i32 11
  store i8 0, ptr %199, align 4
  %200 = load ptr, ptr %120, align 4
  %201 = getelementptr inbounds %struct.mxl_base, ptr %200, i32 0, i32 13
  store i8 8, ptr %201, align 2
  %202 = load ptr, ptr %120, align 4
  %203 = getelementptr inbounds %struct.mxl_base, ptr %202, i32 0, i32 14
  store i8 4, ptr %203, align 1
  %204 = load ptr, ptr %120, align 4
  %205 = getelementptr inbounds %struct.mxl_base, ptr %204, i32 0, i32 6
  store i32 1, ptr %205, align 4
  br label %206

206:                                              ; preds = %198, %188, %178, %170, %160, %150, %142, %134, %126
  %207 = load ptr, ptr %120, align 4
  %208 = getelementptr inbounds %struct.mxl_base, ptr %207, i32 0, i32 5
  %209 = load i32, ptr %208, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %119) #13
  store i32 0, ptr %119, align 4
  %210 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047792, ptr noundef nonnull %119) #13
  %211 = icmp eq i32 %210, 0
  %212 = load i32, ptr %119, align 4
  %213 = and i32 %212, 7
  %214 = select i1 %211, i32 %213, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %119) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %118) #13
  store i32 0, ptr %118, align 4
  %215 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147287040, ptr noundef nonnull %118) #13
  %216 = load i32, ptr %118, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %118) #13
  %217 = or i32 %215, %210
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %117) #13
  store i32 0, ptr %117, align 4
  %218 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147287036, ptr noundef nonnull %117) #13
  %219 = load i32, ptr %117, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %117) #13
  %220 = or i32 %217, %218
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %1403

222:                                              ; preds = %206
  %223 = icmp eq i32 %218, 0
  %224 = lshr i32 %219, 24
  %225 = select i1 %223, i32 %224, i32 0
  %226 = icmp eq i32 %215, 0
  %227 = and i32 %216, 4095
  %228 = select i1 %226, i32 %227, i32 0
  %229 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %230 = load ptr, ptr %229, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %230, ptr noundef nonnull @.str.6, i32 noundef %214, i32 noundef %228, i32 noundef %225) #14
  %231 = icmp eq i32 %228, 1376
  br i1 %231, label %1403, label %232

232:                                              ; preds = %222
  switch i32 %214, label %1403 [
    i32 0, label %233
    i32 1, label %237
    i32 3, label %241
    i32 5, label %239
  ]

233:                                              ; preds = %232
  switch i32 %209, label %1403 [
    i32 0, label %242
    i32 12, label %234
  ]

234:                                              ; preds = %233
  %235 = load ptr, ptr %120, align 4
  %236 = getelementptr inbounds %struct.mxl_base, ptr %235, i32 0, i32 5
  store i32 0, ptr %236, align 4
  br label %242

237:                                              ; preds = %232
  %238 = icmp eq i32 %209, 1
  br i1 %238, label %242, label %1403

239:                                              ; preds = %232
  %240 = icmp eq i32 %209, 6
  br i1 %240, label %242, label %1403

241:                                              ; preds = %232
  switch i32 %209, label %1403 [
    i32 9, label %242
    i32 3, label %242
  ]

242:                                              ; preds = %241, %241, %239, %237, %234, %233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %116) #13
  store i32 0, ptr %116, align 4, !annotation !8
  %243 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147287020, ptr noundef nonnull %116) #13
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = load i32, ptr %116, align 4
  %247 = or i32 %246, 512
  store i32 %247, ptr %116, align 4
  %248 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147287020, i32 noundef %247) #13
  br label %249

249:                                              ; preds = %245, %242
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %116) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %115) #13
  store i32 0, ptr %115, align 4, !annotation !8
  %250 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147286980, ptr noundef nonnull %115) #13
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = load i32, ptr %115, align 4
  %254 = or i32 %253, 4096
  store i32 %254, ptr %115, align 4
  %255 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147286980, i32 noundef %254) #13
  br label %256

256:                                              ; preds = %252, %249
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %115) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %114) #13
  store i32 0, ptr %114, align 4
  %257 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147287040, ptr noundef nonnull %114) #13
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %114) #13
  br label %265

260:                                              ; preds = %256
  %261 = load i32, ptr %114, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %114) #13
  %262 = and i32 %261, 61440
  %263 = icmp eq i32 %262, 8192
  %264 = select i1 %263, i32 2, i32 1
  br label %265

265:                                              ; preds = %260, %259
  %266 = phi i32 [ 0, %259 ], [ %264, %260 ]
  %267 = load ptr, ptr %120, align 4
  %268 = getelementptr inbounds %struct.mxl_base, ptr %267, i32 0, i32 7
  store i32 %266, ptr %268, align 4
  %269 = load ptr, ptr %229, align 4
  %270 = load ptr, ptr %120, align 4
  %271 = getelementptr inbounds %struct.mxl_base, ptr %270, i32 0, i32 7
  %272 = load i32, ptr %271, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %269, ptr noundef nonnull @.str.5, i32 noundef %272) #14
  %273 = getelementptr inbounds %struct.mxl5xx_cfg, ptr %1, i32 0, i32 3
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr inbounds %struct.mxl5xx_cfg, ptr %1, i32 0, i32 2
  %276 = load i32, ptr %275, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %113) #13
  store i32 0, ptr %113, align 4, !annotation !8
  %277 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1876950956, ptr noundef nonnull %113) #13
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %265
  %280 = load i32, ptr %113, align 4
  %281 = and i32 %280, -8388609
  store i32 %281, ptr %113, align 4
  %282 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1876950956, i32 noundef %281) #13
  br label %283

283:                                              ; preds = %279, %265
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %113) #13
  %284 = icmp ne i32 %274, 24000000
  %285 = zext i1 %284 to i32
  %286 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef 1073726960, i32 noundef %285) #13
  %287 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef 1073737124, i32 noundef %276) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %111) #13
  store i32 0, ptr %111, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %112) #13
  store i32 0, ptr %112, align 4, !annotation !8
  %288 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef 1073737180, ptr noundef nonnull %111) #13
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  call void @msleep(i32 noundef 20) #13
  %291 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef 1073737180, ptr noundef nonnull %112) #13
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %294, label %293

293:                                              ; preds = %290, %283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %112) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %111) #13
  br label %298

294:                                              ; preds = %290
  %295 = load i32, ptr %112, align 4
  %296 = load i32, ptr %111, align 4
  %297 = icmp eq i32 %295, %296
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %112) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %111) #13
  br i1 %297, label %298, label %320

298:                                              ; preds = %294, %293
  %299 = getelementptr inbounds %struct.mxl5xx_cfg, ptr %1, i32 0, i32 5
  %300 = load ptr, ptr %299, align 4
  %301 = icmp eq ptr %300, null
  br i1 %301, label %304, label %302

302:                                              ; preds = %298
  %303 = call fastcc i32 @firmware_download(ptr noundef %0, ptr noundef nonnull %300) #13
  br label %317

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.mxl5xx_cfg, ptr %1, i32 0, i32 7
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, null
  br i1 %307, label %1403, label %308

308:                                              ; preds = %304
  %309 = call noalias ptr @vmalloc(i32 noundef 262144) #15
  %310 = icmp eq ptr %309, null
  br i1 %310, label %1403, label %311

311:                                              ; preds = %308
  %312 = load ptr, ptr %305, align 4
  %313 = getelementptr inbounds %struct.mxl5xx_cfg, ptr %1, i32 0, i32 8
  %314 = load ptr, ptr %313, align 4
  %315 = call i32 %312(ptr noundef %314, ptr noundef nonnull %309, i32 noundef 262144) #13
  %316 = call fastcc i32 @firmware_download(ptr noundef %0, ptr noundef nonnull %309) #13
  call void @vfree(ptr noundef nonnull %309) #13
  br label %317

317:                                              ; preds = %311, %302
  %318 = phi i32 [ %303, %302 ], [ %316, %311 ]
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %1403

320:                                              ; preds = %317, %294
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %110) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %109) #13
  store i32 0, ptr %109, align 4
  %321 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047792, ptr noundef nonnull %109) #13
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %320
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %109) #13
  br label %344

324:                                              ; preds = %320
  %325 = load i32, ptr %109, align 4
  %326 = and i32 %325, 7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %109) #13
  %327 = load ptr, ptr %229, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %327, ptr noundef nonnull @.str.17, i32 noundef %326) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %108) #13
  store i32 0, ptr %108, align 4
  %328 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147287036, ptr noundef nonnull %108) #13
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %324
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %108) #13
  br label %344

331:                                              ; preds = %324
  %332 = load i32, ptr %108, align 4
  %333 = lshr i32 %332, 8
  %334 = and i32 %333, 255
  store i32 %334, ptr %110, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %108) #13
  %335 = load ptr, ptr %229, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %335, ptr noundef nonnull @.str.18, i32 noundef %334) #14
  %336 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef 1073737144, ptr noundef nonnull %110) #13
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %331
  %339 = load ptr, ptr %229, align 4
  %340 = load i32, ptr %110, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %339, ptr noundef nonnull @.str.19, i32 noundef %340) #14
  %341 = load i32, ptr %110, align 4
  %342 = load ptr, ptr %120, align 4
  %343 = getelementptr inbounds %struct.mxl_base, ptr %342, i32 0, i32 9
  store i32 %341, ptr %343, align 4
  br label %344

344:                                              ; preds = %338, %331, %330, %323
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %110) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %107) #13
  store i32 0, ptr %107, align 4, !annotation !8
  %345 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %107) #13
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %344
  %348 = load i32, ptr %107, align 4
  %349 = and i32 %348, -2
  store i32 %349, ptr %107, align 4
  %350 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %349) #13
  br label %351

351:                                              ; preds = %347, %344
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %107) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %106) #13
  store i32 0, ptr %106, align 4, !annotation !8
  %352 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %106) #13
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %351
  %355 = load i32, ptr %106, align 4
  %356 = and i32 %355, -3
  store i32 %356, ptr %106, align 4
  %357 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %356) #13
  br label %358

358:                                              ; preds = %354, %351
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %106) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %105) #13
  store i32 0, ptr %105, align 4, !annotation !8
  %359 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %105) #13
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %358
  %362 = load i32, ptr %105, align 4
  %363 = and i32 %362, -5
  store i32 %363, ptr %105, align 4
  %364 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %363) #13
  br label %365

365:                                              ; preds = %361, %358
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %105) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %104) #13
  store i32 0, ptr %104, align 4, !annotation !8
  %366 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %104) #13
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load i32, ptr %104, align 4
  %370 = and i32 %369, -9
  store i32 %370, ptr %104, align 4
  %371 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %370) #13
  br label %372

372:                                              ; preds = %368, %365
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %104) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %103) #13
  store i32 0, ptr %103, align 4, !annotation !8
  %373 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %103) #13
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i32, ptr %103, align 4
  %377 = and i32 %376, -17
  store i32 %377, ptr %103, align 4
  %378 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %377) #13
  br label %379

379:                                              ; preds = %375, %372
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %103) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %102) #13
  store i32 0, ptr %102, align 4, !annotation !8
  %380 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %102) #13
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %379
  %383 = load i32, ptr %102, align 4
  %384 = and i32 %383, -33
  store i32 %384, ptr %102, align 4
  %385 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %384) #13
  br label %386

386:                                              ; preds = %382, %379
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %102) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %101) #13
  store i32 0, ptr %101, align 4, !annotation !8
  %387 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %101) #13
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = load i32, ptr %101, align 4
  %391 = and i32 %390, -65
  store i32 %391, ptr %101, align 4
  %392 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %391) #13
  br label %393

393:                                              ; preds = %389, %386
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %101) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %100) #13
  store i32 0, ptr %100, align 4, !annotation !8
  %394 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708148, ptr noundef nonnull %100) #13
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = load i32, ptr %100, align 4
  %398 = and i32 %397, -129
  store i32 %398, ptr %100, align 4
  %399 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708148, i32 noundef %398) #13
  br label %400

400:                                              ; preds = %396, %393
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %100) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %99) #13
  store i32 0, ptr %99, align 4, !annotation !8
  %401 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708152, ptr noundef nonnull %99) #13
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %408

403:                                              ; preds = %400
  %404 = load i32, ptr %99, align 4
  %405 = and i32 %404, -4
  %406 = or i32 %405, 1
  store i32 %406, ptr %99, align 4
  %407 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708152, i32 noundef %406) #13
  br label %408

408:                                              ; preds = %403, %400
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %99) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %98) #13
  store i32 0, ptr %98, align 4, !annotation !8
  %409 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708152, ptr noundef nonnull %98) #13
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %408
  %412 = load i32, ptr %98, align 4
  %413 = and i32 %412, -13
  %414 = or i32 %413, 4
  store i32 %414, ptr %98, align 4
  %415 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708152, i32 noundef %414) #13
  br label %416

416:                                              ; preds = %411, %408
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %98) #13
  %417 = load ptr, ptr %120, align 4
  %418 = getelementptr inbounds %struct.mxl_base, ptr %417, i32 0, i32 13
  %419 = load i8, ptr %418, align 2
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %1262, label %421

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct.mxl5xx_cfg, ptr %1, i32 0, i32 4
  %423 = load i32, ptr %422, align 4
  %424 = icmp eq i32 %423, 0
  %425 = trunc i32 %423 to i16
  %426 = and i16 %425, 255
  %427 = select i1 %424, i16 69, i16 %426
  br label %435

428:                                              ; preds = %1258
  %429 = add nuw nsw i32 %437, 1
  %430 = load ptr, ptr %120, align 4
  %431 = getelementptr inbounds %struct.mxl_base, ptr %430, i32 0, i32 13
  %432 = load i8, ptr %431, align 2
  %433 = zext i8 %432 to i32
  %434 = icmp ult i32 %429, %433
  br i1 %434, label %435, label %1262

435:                                              ; preds = %428, %421
  %436 = phi ptr [ %417, %421 ], [ %430, %428 ]
  %437 = phi i32 [ 0, %421 ], [ %429, %428 ]
  %438 = getelementptr inbounds %struct.mxl_base, ptr %436, i32 0, i32 10
  %439 = load ptr, ptr %438, align 4
  %440 = getelementptr i8, ptr %439, i32 %437
  %441 = load i8, ptr %440, align 1
  %442 = zext i8 %441 to i32
  %443 = getelementptr inbounds %struct.mxl_base, ptr %436, i32 0, i32 5
  %444 = load i32, ptr %443, align 4
  %445 = icmp eq i32 %444, 7
  %446 = icmp eq i32 %444, 10
  %447 = or i1 %445, %446
  %448 = select i1 %447, i32 2, i32 0
  switch i32 %444, label %889 [
    i32 4, label %449
    i32 0, label %449
    i32 7, label %449
    i32 10, label %449
    i32 11, label %449
    i32 12, label %449
    i32 3, label %565
    i32 9, label %565
    i32 8, label %790
  ]

449:                                              ; preds = %435, %435, %435, %435, %435, %435
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %97) #13
  store i32 0, ptr %97, align 4, !annotation !8
  %450 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %97) #13
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %449
  %453 = load i32, ptr %97, align 4
  %454 = and i32 %453, -117440513
  %455 = shl nuw nsw i32 %448, 24
  %456 = or i32 %454, %455
  store i32 %456, ptr %97, align 4
  %457 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %456) #13
  br label %458

458:                                              ; preds = %452, %449
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %97) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %96) #13
  store i32 0, ptr %96, align 4, !annotation !8
  %459 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %96) #13
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %467

461:                                              ; preds = %458
  %462 = load i32, ptr %96, align 4
  %463 = and i32 %462, -1879048193
  %464 = shl nuw nsw i32 %448, 28
  %465 = or i32 %463, %464
  store i32 %465, ptr %96, align 4
  %466 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %465) #13
  br label %467

467:                                              ; preds = %461, %458
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %96) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %95) #13
  store i32 0, ptr %95, align 4, !annotation !8
  %468 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %95) #13
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %475

470:                                              ; preds = %467
  %471 = load i32, ptr %95, align 4
  %472 = and i32 %471, -8
  %473 = or i32 %472, %448
  store i32 %473, ptr %95, align 4
  %474 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %473) #13
  br label %475

475:                                              ; preds = %470, %467
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %95) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %94) #13
  store i32 0, ptr %94, align 4, !annotation !8
  %476 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %94) #13
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %475
  %479 = load i32, ptr %94, align 4
  %480 = and i32 %479, -113
  %481 = shl nuw nsw i32 %448, 4
  %482 = or i32 %480, %481
  store i32 %482, ptr %94, align 4
  %483 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %482) #13
  br label %484

484:                                              ; preds = %478, %475
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %94) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %93) #13
  store i32 0, ptr %93, align 4, !annotation !8
  %485 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %93) #13
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %493

487:                                              ; preds = %484
  %488 = load i32, ptr %93, align 4
  %489 = and i32 %488, -1793
  %490 = shl nuw nsw i32 %448, 8
  %491 = or i32 %489, %490
  store i32 %491, ptr %93, align 4
  %492 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %491) #13
  br label %493

493:                                              ; preds = %487, %484
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %93) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %92) #13
  store i32 0, ptr %92, align 4, !annotation !8
  %494 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %92) #13
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %502

496:                                              ; preds = %493
  %497 = load i32, ptr %92, align 4
  %498 = and i32 %497, -28673
  %499 = shl nuw nsw i32 %448, 12
  %500 = or i32 %498, %499
  store i32 %500, ptr %92, align 4
  %501 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %500) #13
  br label %502

502:                                              ; preds = %496, %493
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %92) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %91) #13
  store i32 0, ptr %91, align 4, !annotation !8
  %503 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %91) #13
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %511

505:                                              ; preds = %502
  %506 = load i32, ptr %91, align 4
  %507 = and i32 %506, -458753
  %508 = shl nuw nsw i32 %448, 16
  %509 = or i32 %507, %508
  store i32 %509, ptr %91, align 4
  %510 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %509) #13
  br label %511

511:                                              ; preds = %505, %502
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %91) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %90) #13
  store i32 0, ptr %90, align 4, !annotation !8
  %512 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %90) #13
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %520

514:                                              ; preds = %511
  %515 = load i32, ptr %90, align 4
  %516 = and i32 %515, -7340033
  %517 = shl nuw nsw i32 %448, 20
  %518 = or i32 %516, %517
  store i32 %518, ptr %90, align 4
  %519 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %518) #13
  br label %520

520:                                              ; preds = %514, %511
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %90) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %89) #13
  store i32 0, ptr %89, align 4, !annotation !8
  %521 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %89) #13
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %529

523:                                              ; preds = %520
  %524 = load i32, ptr %89, align 4
  %525 = and i32 %524, -117440513
  %526 = shl nuw nsw i32 %448, 24
  %527 = or i32 %525, %526
  store i32 %527, ptr %89, align 4
  %528 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %527) #13
  br label %529

529:                                              ; preds = %523, %520
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %89) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %88) #13
  store i32 0, ptr %88, align 4, !annotation !8
  %530 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %88) #13
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %538

532:                                              ; preds = %529
  %533 = load i32, ptr %88, align 4
  %534 = and i32 %533, -1879048193
  %535 = shl nuw nsw i32 %448, 28
  %536 = or i32 %534, %535
  store i32 %536, ptr %88, align 4
  %537 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %536) #13
  br label %538

538:                                              ; preds = %532, %529
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %88) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %87) #13
  store i32 0, ptr %87, align 4, !annotation !8
  %539 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %87) #13
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %546

541:                                              ; preds = %538
  %542 = load i32, ptr %87, align 4
  %543 = and i32 %542, -8
  %544 = or i32 %543, %448
  store i32 %544, ptr %87, align 4
  %545 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %544) #13
  br label %546

546:                                              ; preds = %541, %538
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %87) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %86) #13
  store i32 0, ptr %86, align 4, !annotation !8
  %547 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %86) #13
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %555

549:                                              ; preds = %546
  %550 = load i32, ptr %86, align 4
  %551 = and i32 %550, -113
  %552 = shl nuw nsw i32 %448, 4
  %553 = or i32 %551, %552
  store i32 %553, ptr %86, align 4
  %554 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %553) #13
  br label %555

555:                                              ; preds = %549, %546
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %86) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %85) #13
  store i32 0, ptr %85, align 4, !annotation !8
  %556 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %85) #13
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %564

558:                                              ; preds = %555
  %559 = load i32, ptr %85, align 4
  %560 = and i32 %559, -1793
  %561 = shl nuw nsw i32 %448, 8
  %562 = or i32 %560, %561
  store i32 %562, ptr %85, align 4
  %563 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %562) #13
  br label %564

564:                                              ; preds = %558, %555
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %85) #13
  br label %988

565:                                              ; preds = %435, %435
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %84) #13
  store i32 0, ptr %84, align 4, !annotation !8
  %566 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047828, ptr noundef nonnull %84) #13
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %565
  %569 = load i32, ptr %84, align 4
  %570 = and i32 %569, -113
  %571 = or i32 %570, 16
  store i32 %571, ptr %84, align 4
  %572 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047828, i32 noundef %571) #13
  br label %573

573:                                              ; preds = %568, %565
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %84) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %83) #13
  store i32 0, ptr %83, align 4, !annotation !8
  %574 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047828, ptr noundef nonnull %83) #13
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %580

576:                                              ; preds = %573
  %577 = load i32, ptr %83, align 4
  %578 = and i32 %577, -1793
  store i32 %578, ptr %83, align 4
  %579 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047828, i32 noundef %578) #13
  br label %580

580:                                              ; preds = %576, %573
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %83) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %82) #13
  store i32 0, ptr %82, align 4, !annotation !8
  %581 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047828, ptr noundef nonnull %82) #13
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %587

583:                                              ; preds = %580
  %584 = load i32, ptr %82, align 4
  %585 = and i32 %584, -28673
  store i32 %585, ptr %82, align 4
  %586 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047828, i32 noundef %585) #13
  br label %587

587:                                              ; preds = %583, %580
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %82) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %81) #13
  store i32 0, ptr %81, align 4, !annotation !8
  %588 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047828, ptr noundef nonnull %81) #13
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %587
  %591 = load i32, ptr %81, align 4
  %592 = and i32 %591, -458753
  store i32 %592, ptr %81, align 4
  %593 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047828, i32 noundef %592) #13
  br label %594

594:                                              ; preds = %590, %587
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %81) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %80) #13
  store i32 0, ptr %80, align 4, !annotation !8
  %595 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %80) #13
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %601

597:                                              ; preds = %594
  %598 = load i32, ptr %80, align 4
  %599 = and i32 %598, -8
  store i32 %599, ptr %80, align 4
  %600 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %599) #13
  br label %601

601:                                              ; preds = %597, %594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %80) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %79) #13
  store i32 0, ptr %79, align 4, !annotation !8
  %602 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %79) #13
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %609

604:                                              ; preds = %601
  %605 = load i32, ptr %79, align 4
  %606 = and i32 %605, -28673
  %607 = or i32 %606, 4096
  store i32 %607, ptr %79, align 4
  %608 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %607) #13
  br label %609

609:                                              ; preds = %604, %601
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %79) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %78) #13
  store i32 0, ptr %78, align 4, !annotation !8
  %610 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %78) #13
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %617

612:                                              ; preds = %609
  %613 = load i32, ptr %78, align 4
  %614 = and i32 %613, -458753
  %615 = or i32 %614, 65536
  store i32 %615, ptr %78, align 4
  %616 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %615) #13
  br label %617

617:                                              ; preds = %612, %609
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %78) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %77) #13
  store i32 0, ptr %77, align 4, !annotation !8
  %618 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %77) #13
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %625

620:                                              ; preds = %617
  %621 = load i32, ptr %77, align 4
  %622 = and i32 %621, -7340033
  %623 = or i32 %622, 1048576
  store i32 %623, ptr %77, align 4
  %624 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %623) #13
  br label %625

625:                                              ; preds = %620, %617
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %77) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %76) #13
  store i32 0, ptr %76, align 4, !annotation !8
  %626 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %76) #13
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %633

628:                                              ; preds = %625
  %629 = load i32, ptr %76, align 4
  %630 = and i32 %629, -117440513
  %631 = or i32 %630, 16777216
  store i32 %631, ptr %76, align 4
  %632 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %631) #13
  br label %633

633:                                              ; preds = %628, %625
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %76) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %75) #13
  store i32 0, ptr %75, align 4, !annotation !8
  %634 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047812, ptr noundef nonnull %75) #13
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %636, label %641

636:                                              ; preds = %633
  %637 = load i32, ptr %75, align 4
  %638 = and i32 %637, -8
  %639 = or i32 %638, 1
  store i32 %639, ptr %75, align 4
  %640 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047812, i32 noundef %639) #13
  br label %641

641:                                              ; preds = %636, %633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %75) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %74) #13
  store i32 0, ptr %74, align 4, !annotation !8
  %642 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047812, ptr noundef nonnull %74) #13
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %649

644:                                              ; preds = %641
  %645 = load i32, ptr %74, align 4
  %646 = and i32 %645, -113
  %647 = or i32 %646, 16
  store i32 %647, ptr %74, align 4
  %648 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047812, i32 noundef %647) #13
  br label %649

649:                                              ; preds = %644, %641
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %74) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %73) #13
  store i32 0, ptr %73, align 4, !annotation !8
  %650 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %73) #13
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %652, label %656

652:                                              ; preds = %649
  %653 = load i32, ptr %73, align 4
  %654 = and i32 %653, -113
  store i32 %654, ptr %73, align 4
  %655 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %654) #13
  br label %656

656:                                              ; preds = %652, %649
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %73) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %72) #13
  store i32 0, ptr %72, align 4, !annotation !8
  %657 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %72) #13
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %659, label %663

659:                                              ; preds = %656
  %660 = load i32, ptr %72, align 4
  %661 = and i32 %660, -1793
  store i32 %661, ptr %72, align 4
  %662 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %661) #13
  br label %663

663:                                              ; preds = %659, %656
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %72) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %71) #13
  store i32 0, ptr %71, align 4, !annotation !8
  %664 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %71) #13
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %670

666:                                              ; preds = %663
  %667 = load i32, ptr %71, align 4
  %668 = and i32 %667, -28673
  store i32 %668, ptr %71, align 4
  %669 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %668) #13
  br label %670

670:                                              ; preds = %666, %663
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %71) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %70) #13
  store i32 0, ptr %70, align 4, !annotation !8
  %671 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %70) #13
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %677

673:                                              ; preds = %670
  %674 = load i32, ptr %70, align 4
  %675 = and i32 %674, -458753
  store i32 %675, ptr %70, align 4
  %676 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %675) #13
  br label %677

677:                                              ; preds = %673, %670
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %70) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %69) #13
  store i32 0, ptr %69, align 4, !annotation !8
  %678 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %69) #13
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %680, label %685

680:                                              ; preds = %677
  %681 = load i32, ptr %69, align 4
  %682 = and i32 %681, -7340033
  %683 = or i32 %682, 1048576
  store i32 %683, ptr %69, align 4
  %684 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %683) #13
  br label %685

685:                                              ; preds = %680, %677
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %69) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %68) #13
  store i32 0, ptr %68, align 4, !annotation !8
  %686 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %68) #13
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %693

688:                                              ; preds = %685
  %689 = load i32, ptr %68, align 4
  %690 = and i32 %689, -117440513
  %691 = or i32 %690, 16777216
  store i32 %691, ptr %68, align 4
  %692 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %691) #13
  br label %693

693:                                              ; preds = %688, %685
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %68) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %67) #13
  store i32 0, ptr %67, align 4, !annotation !8
  %694 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %67) #13
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %701

696:                                              ; preds = %693
  %697 = load i32, ptr %67, align 4
  %698 = and i32 %697, -1879048193
  %699 = or i32 %698, 536870912
  store i32 %699, ptr %67, align 4
  %700 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %699) #13
  br label %701

701:                                              ; preds = %696, %693
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %67) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %66) #13
  store i32 0, ptr %66, align 4, !annotation !8
  %702 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %66) #13
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %709

704:                                              ; preds = %701
  %705 = load i32, ptr %66, align 4
  %706 = and i32 %705, -8
  %707 = or i32 %706, 2
  store i32 %707, ptr %66, align 4
  %708 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %707) #13
  br label %709

709:                                              ; preds = %704, %701
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %66) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %65) #13
  store i32 0, ptr %65, align 4, !annotation !8
  %710 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %65) #13
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %717

712:                                              ; preds = %709
  %713 = load i32, ptr %65, align 4
  %714 = and i32 %713, -113
  %715 = or i32 %714, 32
  store i32 %715, ptr %65, align 4
  %716 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %715) #13
  br label %717

717:                                              ; preds = %712, %709
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %65) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %64) #13
  store i32 0, ptr %64, align 4, !annotation !8
  %718 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %64) #13
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %725

720:                                              ; preds = %717
  %721 = load i32, ptr %64, align 4
  %722 = and i32 %721, -1793
  %723 = or i32 %722, 512
  store i32 %723, ptr %64, align 4
  %724 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %723) #13
  br label %725

725:                                              ; preds = %720, %717
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %64) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %63) #13
  store i32 0, ptr %63, align 4, !annotation !8
  %726 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %63) #13
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %733

728:                                              ; preds = %725
  %729 = load i32, ptr %63, align 4
  %730 = and i32 %729, -28673
  %731 = or i32 %730, 8192
  store i32 %731, ptr %63, align 4
  %732 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %731) #13
  br label %733

733:                                              ; preds = %728, %725
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %63) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %62) #13
  store i32 0, ptr %62, align 4, !annotation !8
  %734 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %62) #13
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %741

736:                                              ; preds = %733
  %737 = load i32, ptr %62, align 4
  %738 = and i32 %737, -458753
  %739 = or i32 %738, 131072
  store i32 %739, ptr %62, align 4
  %740 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %739) #13
  br label %741

741:                                              ; preds = %736, %733
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %62) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %61) #13
  store i32 0, ptr %61, align 4, !annotation !8
  %742 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %61) #13
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %749

744:                                              ; preds = %741
  %745 = load i32, ptr %61, align 4
  %746 = and i32 %745, -7340033
  %747 = or i32 %746, 2097152
  store i32 %747, ptr %61, align 4
  %748 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %747) #13
  br label %749

749:                                              ; preds = %744, %741
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %61) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %60) #13
  store i32 0, ptr %60, align 4, !annotation !8
  %750 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %60) #13
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %757

752:                                              ; preds = %749
  %753 = load i32, ptr %60, align 4
  %754 = and i32 %753, -117440513
  %755 = or i32 %754, 33554432
  store i32 %755, ptr %60, align 4
  %756 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %755) #13
  br label %757

757:                                              ; preds = %752, %749
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %60) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %59) #13
  store i32 0, ptr %59, align 4, !annotation !8
  %758 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %59) #13
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %765

760:                                              ; preds = %757
  %761 = load i32, ptr %59, align 4
  %762 = and i32 %761, -1879048193
  %763 = or i32 %762, 536870912
  store i32 %763, ptr %59, align 4
  %764 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %763) #13
  br label %765

765:                                              ; preds = %760, %757
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %59) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %58) #13
  store i32 0, ptr %58, align 4, !annotation !8
  %766 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %58) #13
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %773

768:                                              ; preds = %765
  %769 = load i32, ptr %58, align 4
  %770 = and i32 %769, -8
  %771 = or i32 %770, 2
  store i32 %771, ptr %58, align 4
  %772 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %771) #13
  br label %773

773:                                              ; preds = %768, %765
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %58) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %57) #13
  store i32 0, ptr %57, align 4, !annotation !8
  %774 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %57) #13
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %781

776:                                              ; preds = %773
  %777 = load i32, ptr %57, align 4
  %778 = and i32 %777, -113
  %779 = or i32 %778, 32
  store i32 %779, ptr %57, align 4
  %780 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %779) #13
  br label %781

781:                                              ; preds = %776, %773
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %57) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %56) #13
  store i32 0, ptr %56, align 4, !annotation !8
  %782 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047816, ptr noundef nonnull %56) #13
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %789

784:                                              ; preds = %781
  %785 = load i32, ptr %56, align 4
  %786 = and i32 %785, -1793
  %787 = or i32 %786, 512
  store i32 %787, ptr %56, align 4
  %788 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047816, i32 noundef %787) #13
  br label %789

789:                                              ; preds = %784, %781
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %56) #13
  br label %988

790:                                              ; preds = %435
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %55) #13
  store i32 0, ptr %55, align 4, !annotation !8
  %791 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %55) #13
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %799

793:                                              ; preds = %790
  %794 = load i32, ptr %55, align 4
  %795 = and i32 %794, -113
  %796 = shl nuw nsw i32 %448, 4
  %797 = or i32 %795, %796
  store i32 %797, ptr %55, align 4
  %798 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %797) #13
  br label %799

799:                                              ; preds = %793, %790
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %55) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %54) #13
  store i32 0, ptr %54, align 4, !annotation !8
  %800 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %54) #13
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %808

802:                                              ; preds = %799
  %803 = load i32, ptr %54, align 4
  %804 = and i32 %803, -1793
  %805 = shl nuw nsw i32 %448, 8
  %806 = or i32 %804, %805
  store i32 %806, ptr %54, align 4
  %807 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %806) #13
  br label %808

808:                                              ; preds = %802, %799
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %54) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %53) #13
  store i32 0, ptr %53, align 4, !annotation !8
  %809 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %53) #13
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %817

811:                                              ; preds = %808
  %812 = load i32, ptr %53, align 4
  %813 = and i32 %812, -28673
  %814 = shl nuw nsw i32 %448, 12
  %815 = or i32 %813, %814
  store i32 %815, ptr %53, align 4
  %816 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %815) #13
  br label %817

817:                                              ; preds = %811, %808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %53) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %52) #13
  store i32 0, ptr %52, align 4, !annotation !8
  %818 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %52) #13
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %826

820:                                              ; preds = %817
  %821 = load i32, ptr %52, align 4
  %822 = and i32 %821, -458753
  %823 = shl nuw nsw i32 %448, 16
  %824 = or i32 %822, %823
  store i32 %824, ptr %52, align 4
  %825 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %824) #13
  br label %826

826:                                              ; preds = %820, %817
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %52) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #13
  store i32 0, ptr %51, align 4, !annotation !8
  %827 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %51) #13
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %835

829:                                              ; preds = %826
  %830 = load i32, ptr %51, align 4
  %831 = and i32 %830, -7340033
  %832 = shl nuw nsw i32 %448, 20
  %833 = or i32 %831, %832
  store i32 %833, ptr %51, align 4
  %834 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %833) #13
  br label %835

835:                                              ; preds = %829, %826
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #13
  store i32 0, ptr %50, align 4, !annotation !8
  %836 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %50) #13
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %838, label %844

838:                                              ; preds = %835
  %839 = load i32, ptr %50, align 4
  %840 = and i32 %839, -117440513
  %841 = shl nuw nsw i32 %448, 24
  %842 = or i32 %840, %841
  store i32 %842, ptr %50, align 4
  %843 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %842) #13
  br label %844

844:                                              ; preds = %838, %835
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49) #13
  store i32 0, ptr %49, align 4, !annotation !8
  %845 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %49) #13
  %846 = icmp eq i32 %845, 0
  br i1 %846, label %847, label %853

847:                                              ; preds = %844
  %848 = load i32, ptr %49, align 4
  %849 = and i32 %848, -1879048193
  %850 = shl nuw nsw i32 %448, 28
  %851 = or i32 %849, %850
  store i32 %851, ptr %49, align 4
  %852 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %851) #13
  br label %853

853:                                              ; preds = %847, %844
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %48) #13
  store i32 0, ptr %48, align 4, !annotation !8
  %854 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %48) #13
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %861

856:                                              ; preds = %853
  %857 = load i32, ptr %48, align 4
  %858 = and i32 %857, -8
  %859 = or i32 %858, %448
  store i32 %859, ptr %48, align 4
  %860 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %859) #13
  br label %861

861:                                              ; preds = %856, %853
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %47) #13
  store i32 0, ptr %47, align 4, !annotation !8
  %862 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %47) #13
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %870

864:                                              ; preds = %861
  %865 = load i32, ptr %47, align 4
  %866 = and i32 %865, -113
  %867 = shl nuw nsw i32 %448, 4
  %868 = or i32 %866, %867
  store i32 %868, ptr %47, align 4
  %869 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %868) #13
  br label %870

870:                                              ; preds = %864, %861
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46) #13
  store i32 0, ptr %46, align 4, !annotation !8
  %871 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %46) #13
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %879

873:                                              ; preds = %870
  %874 = load i32, ptr %46, align 4
  %875 = and i32 %874, -1793
  %876 = shl nuw nsw i32 %448, 8
  %877 = or i32 %875, %876
  store i32 %877, ptr %46, align 4
  %878 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %877) #13
  br label %879

879:                                              ; preds = %873, %870
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45) #13
  store i32 0, ptr %45, align 4, !annotation !8
  %880 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %45) #13
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %882, label %888

882:                                              ; preds = %879
  %883 = load i32, ptr %45, align 4
  %884 = and i32 %883, -28673
  %885 = shl nuw nsw i32 %448, 12
  %886 = or i32 %884, %885
  store i32 %886, ptr %45, align 4
  %887 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %886) #13
  br label %888

888:                                              ; preds = %882, %879
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45) #13
  br label %988

889:                                              ; preds = %435
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #13
  store i32 0, ptr %44, align 4, !annotation !8
  %890 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %44) #13
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %898

892:                                              ; preds = %889
  %893 = load i32, ptr %44, align 4
  %894 = and i32 %893, -113
  %895 = shl nuw nsw i32 %448, 4
  %896 = or i32 %894, %895
  store i32 %896, ptr %44, align 4
  %897 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %896) #13
  br label %898

898:                                              ; preds = %892, %889
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #13
  store i32 0, ptr %43, align 4, !annotation !8
  %899 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %43) #13
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %901, label %907

901:                                              ; preds = %898
  %902 = load i32, ptr %43, align 4
  %903 = and i32 %902, -1793
  %904 = shl nuw nsw i32 %448, 8
  %905 = or i32 %903, %904
  store i32 %905, ptr %43, align 4
  %906 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %905) #13
  br label %907

907:                                              ; preds = %901, %898
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #13
  store i32 0, ptr %42, align 4, !annotation !8
  %908 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %42) #13
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %910, label %916

910:                                              ; preds = %907
  %911 = load i32, ptr %42, align 4
  %912 = and i32 %911, -28673
  %913 = shl nuw nsw i32 %448, 12
  %914 = or i32 %912, %913
  store i32 %914, ptr %42, align 4
  %915 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %914) #13
  br label %916

916:                                              ; preds = %910, %907
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #13
  store i32 0, ptr %41, align 4, !annotation !8
  %917 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %41) #13
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %919, label %925

919:                                              ; preds = %916
  %920 = load i32, ptr %41, align 4
  %921 = and i32 %920, -458753
  %922 = shl nuw nsw i32 %448, 16
  %923 = or i32 %921, %922
  store i32 %923, ptr %41, align 4
  %924 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %923) #13
  br label %925

925:                                              ; preds = %919, %916
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #13
  store i32 0, ptr %40, align 4, !annotation !8
  %926 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %40) #13
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %928, label %934

928:                                              ; preds = %925
  %929 = load i32, ptr %40, align 4
  %930 = and i32 %929, -7340033
  %931 = shl nuw nsw i32 %448, 20
  %932 = or i32 %930, %931
  store i32 %932, ptr %40, align 4
  %933 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %932) #13
  br label %934

934:                                              ; preds = %928, %925
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #13
  store i32 0, ptr %39, align 4, !annotation !8
  %935 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %39) #13
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %943

937:                                              ; preds = %934
  %938 = load i32, ptr %39, align 4
  %939 = and i32 %938, -117440513
  %940 = shl nuw nsw i32 %448, 24
  %941 = or i32 %939, %940
  store i32 %941, ptr %39, align 4
  %942 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %941) #13
  br label %943

943:                                              ; preds = %937, %934
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #13
  store i32 0, ptr %38, align 4, !annotation !8
  %944 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047824, ptr noundef nonnull %38) #13
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %946, label %952

946:                                              ; preds = %943
  %947 = load i32, ptr %38, align 4
  %948 = and i32 %947, -1879048193
  %949 = shl nuw nsw i32 %448, 28
  %950 = or i32 %948, %949
  store i32 %950, ptr %38, align 4
  %951 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047824, i32 noundef %950) #13
  br label %952

952:                                              ; preds = %946, %943
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #13
  store i32 0, ptr %37, align 4, !annotation !8
  %953 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %37) #13
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %960

955:                                              ; preds = %952
  %956 = load i32, ptr %37, align 4
  %957 = and i32 %956, -8
  %958 = or i32 %957, %448
  store i32 %958, ptr %37, align 4
  %959 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %958) #13
  br label %960

960:                                              ; preds = %955, %952
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #13
  store i32 0, ptr %36, align 4, !annotation !8
  %961 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %36) #13
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %969

963:                                              ; preds = %960
  %964 = load i32, ptr %36, align 4
  %965 = and i32 %964, -113
  %966 = shl nuw nsw i32 %448, 4
  %967 = or i32 %965, %966
  store i32 %967, ptr %36, align 4
  %968 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %967) #13
  br label %969

969:                                              ; preds = %963, %960
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #13
  store i32 0, ptr %35, align 4, !annotation !8
  %970 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %35) #13
  %971 = icmp eq i32 %970, 0
  br i1 %971, label %972, label %978

972:                                              ; preds = %969
  %973 = load i32, ptr %35, align 4
  %974 = and i32 %973, -1793
  %975 = shl nuw nsw i32 %448, 8
  %976 = or i32 %974, %975
  store i32 %976, ptr %35, align 4
  %977 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %976) #13
  br label %978

978:                                              ; preds = %972, %969
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #13
  store i32 0, ptr %34, align 4, !annotation !8
  %979 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047820, ptr noundef nonnull %34) #13
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %981, label %987

981:                                              ; preds = %978
  %982 = load i32, ptr %34, align 4
  %983 = and i32 %982, -28673
  %984 = shl nuw nsw i32 %448, 12
  %985 = or i32 %983, %984
  store i32 %985, ptr %34, align 4
  %986 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047820, i32 noundef %985) #13
  br label %987

987:                                              ; preds = %981, %978
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #13
  br label %988

988:                                              ; preds = %987, %888, %789, %564
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #13
  store i32 0, ptr %33, align 4, !annotation !8
  %989 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708144, ptr noundef nonnull %33) #13
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %991, label %995

991:                                              ; preds = %988
  %992 = load i32, ptr %33, align 4
  %993 = and i32 %992, -134217729
  store i32 %993, ptr %33, align 4
  %994 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708144, i32 noundef %993) #13
  br label %995

995:                                              ; preds = %991, %988
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #13
  %996 = load ptr, ptr %120, align 4
  %997 = udiv i16 418, %427
  %998 = zext i16 %997 to i32
  %999 = getelementptr inbounds %struct.mxl_base, ptr %996, i32 0, i32 7
  %1000 = load i32, ptr %999, align 4
  %1001 = icmp ugt i32 %1000, 1
  br i1 %1001, label %1002, label %1026

1002:                                             ; preds = %995
  %1003 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_nco_clock_rate, i32 0, i32 %442
  %1004 = load i32, ptr %1003, align 4
  %1005 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_nco_clock_rate, i32 0, i32 %442, i32 1
  %1006 = load i8, ptr %1005, align 4
  %1007 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_nco_clock_rate, i32 0, i32 %442, i32 2
  %1008 = load i8, ptr %1007, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #13
  store i32 0, ptr %32, align 4, !annotation !8
  %1009 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1004, ptr noundef nonnull %32) #13
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1011, label %1024

1011:                                             ; preds = %1002
  %1012 = zext i8 %1008 to i32
  %1013 = sub nsw i32 32, %1012
  %1014 = lshr i32 -1, %1013
  %1015 = zext i8 %1006 to i32
  %1016 = shl i32 %1014, %1015
  %1017 = load i32, ptr %32, align 4
  %1018 = xor i32 %1016, -1
  %1019 = and i32 %1017, %1018
  %1020 = shl i32 %998, %1015
  %1021 = and i32 %1016, %1020
  %1022 = or i32 %1019, %1021
  store i32 %1022, ptr %32, align 4
  %1023 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1004, i32 noundef %1022) #13
  br label %1024

1024:                                             ; preds = %1011, %1002
  %1025 = phi i32 [ %1023, %1011 ], [ -1, %1002 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #13
  br label %1037

1026:                                             ; preds = %995
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #13
  store i32 0, ptr %31, align 4, !annotation !8
  %1027 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1871708092, ptr noundef nonnull %31) #13
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1036

1029:                                             ; preds = %1026
  %1030 = load i32, ptr %31, align 4
  %1031 = and i32 %1030, -16711681
  %1032 = shl nuw nsw i32 %998, 16
  %1033 = and i32 %1032, 16711680
  %1034 = or i32 %1031, %1033
  store i32 %1034, ptr %31, align 4
  %1035 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871708092, i32 noundef %1034) #13
  br label %1036

1036:                                             ; preds = %1029, %1026
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #13
  br label %1037

1037:                                             ; preds = %1036, %1024
  %1038 = phi i32 [ %1025, %1024 ], [ 0, %1036 ]
  %1039 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_continuous_clock, i32 0, i32 %442
  %1040 = load i32, ptr %1039, align 4
  %1041 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_continuous_clock, i32 0, i32 %442, i32 1
  %1042 = load i8, ptr %1041, align 4
  %1043 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_continuous_clock, i32 0, i32 %442, i32 2
  %1044 = load i8, ptr %1043, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #13
  store i32 0, ptr %30, align 4, !annotation !8
  %1045 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1040, ptr noundef nonnull %30) #13
  %1046 = icmp eq i32 %1045, 0
  br i1 %1046, label %1047, label %1060

1047:                                             ; preds = %1037
  %1048 = zext i8 %1044 to i32
  %1049 = sub nsw i32 32, %1048
  %1050 = lshr i32 -1, %1049
  %1051 = zext i8 %1042 to i32
  %1052 = shl i32 %1050, %1051
  %1053 = load i32, ptr %30, align 4
  %1054 = xor i32 %1052, -1
  %1055 = and i32 %1053, %1054
  %1056 = shl nuw i32 1, %1051
  %1057 = and i32 %1052, %1056
  %1058 = or i32 %1055, %1057
  store i32 %1058, ptr %30, align 4
  %1059 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1040, i32 noundef %1058) #13
  br label %1060

1060:                                             ; preds = %1047, %1037
  %1061 = phi i32 [ %1059, %1047 ], [ -1, %1037 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #13
  %1062 = or i32 %1061, %1038
  %1063 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_polarity, i32 0, i32 %442
  %1064 = load i32, ptr %1063, align 4
  %1065 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_polarity, i32 0, i32 %442, i32 1
  %1066 = load i8, ptr %1065, align 4
  %1067 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_polarity, i32 0, i32 %442, i32 2
  %1068 = load i8, ptr %1067, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #13
  store i32 0, ptr %29, align 4, !annotation !8
  %1069 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1064, ptr noundef nonnull %29) #13
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1071, label %1084

1071:                                             ; preds = %1060
  %1072 = zext i8 %1068 to i32
  %1073 = sub nsw i32 32, %1072
  %1074 = lshr i32 -1, %1073
  %1075 = zext i8 %1066 to i32
  %1076 = shl i32 %1074, %1075
  %1077 = load i32, ptr %29, align 4
  %1078 = xor i32 %1076, -1
  %1079 = and i32 %1077, %1078
  %1080 = shl nuw i32 1, %1075
  %1081 = and i32 %1076, %1080
  %1082 = or i32 %1079, %1081
  store i32 %1082, ptr %29, align 4
  %1083 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1064, i32 noundef %1082) #13
  br label %1084

1084:                                             ; preds = %1071, %1060
  %1085 = phi i32 [ %1083, %1071 ], [ -1, %1060 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #13
  %1086 = or i32 %1062, %1085
  %1087 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_valid_polarity, i32 0, i32 %442
  %1088 = load i32, ptr %1087, align 4
  %1089 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_valid_polarity, i32 0, i32 %442, i32 1
  %1090 = load i8, ptr %1089, align 4
  %1091 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_valid_polarity, i32 0, i32 %442, i32 2
  %1092 = load i8, ptr %1091, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #13
  store i32 0, ptr %28, align 4, !annotation !8
  %1093 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1088, ptr noundef nonnull %28) #13
  %1094 = icmp eq i32 %1093, 0
  br i1 %1094, label %1095, label %1108

1095:                                             ; preds = %1084
  %1096 = zext i8 %1092 to i32
  %1097 = sub nsw i32 32, %1096
  %1098 = lshr i32 -1, %1097
  %1099 = zext i8 %1090 to i32
  %1100 = shl i32 %1098, %1099
  %1101 = load i32, ptr %28, align 4
  %1102 = xor i32 %1100, -1
  %1103 = and i32 %1101, %1102
  %1104 = shl nuw i32 1, %1099
  %1105 = and i32 %1100, %1104
  %1106 = or i32 %1103, %1105
  store i32 %1106, ptr %28, align 4
  %1107 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1088, i32 noundef %1106) #13
  br label %1108

1108:                                             ; preds = %1095, %1084
  %1109 = phi i32 [ %1107, %1095 ], [ -1, %1084 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #13
  %1110 = or i32 %1086, %1109
  %1111 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_clock_polarity, i32 0, i32 %442
  %1112 = load i32, ptr %1111, align 4
  %1113 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_clock_polarity, i32 0, i32 %442, i32 1
  %1114 = load i8, ptr %1113, align 4
  %1115 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_clock_polarity, i32 0, i32 %442, i32 2
  %1116 = load i8, ptr %1115, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #13
  store i32 0, ptr %27, align 4, !annotation !8
  %1117 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1112, ptr noundef nonnull %27) #13
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1119, label %1129

1119:                                             ; preds = %1108
  %1120 = zext i8 %1116 to i32
  %1121 = sub nsw i32 32, %1120
  %1122 = lshr i32 -1, %1121
  %1123 = zext i8 %1114 to i32
  %1124 = shl i32 %1122, %1123
  %1125 = load i32, ptr %27, align 4
  %1126 = xor i32 %1124, -1
  %1127 = and i32 %1125, %1126
  store i32 %1127, ptr %27, align 4
  %1128 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1112, i32 noundef %1127) #13
  br label %1129

1129:                                             ; preds = %1119, %1108
  %1130 = phi i32 [ %1128, %1119 ], [ -1, %1108 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #13
  %1131 = or i32 %1110, %1130
  %1132 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_byte, i32 0, i32 %442
  %1133 = load i32, ptr %1132, align 4
  %1134 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_byte, i32 0, i32 %442, i32 1
  %1135 = load i8, ptr %1134, align 4
  %1136 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_sync_byte, i32 0, i32 %442, i32 2
  %1137 = load i8, ptr %1136, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #13
  store i32 0, ptr %26, align 4, !annotation !8
  %1138 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1133, ptr noundef nonnull %26) #13
  %1139 = icmp eq i32 %1138, 0
  br i1 %1139, label %1140, label %1150

1140:                                             ; preds = %1129
  %1141 = zext i8 %1137 to i32
  %1142 = sub nsw i32 32, %1141
  %1143 = lshr i32 -1, %1142
  %1144 = zext i8 %1135 to i32
  %1145 = shl i32 %1143, %1144
  %1146 = load i32, ptr %26, align 4
  %1147 = xor i32 %1145, -1
  %1148 = and i32 %1146, %1147
  store i32 %1148, ptr %26, align 4
  %1149 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1133, i32 noundef %1148) #13
  br label %1150

1150:                                             ; preds = %1140, %1129
  %1151 = phi i32 [ %1149, %1140 ], [ -1, %1129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #13
  %1152 = or i32 %1131, %1151
  %1153 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_ts_clock_phase, i32 0, i32 %442
  %1154 = load i32, ptr %1153, align 4
  %1155 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_ts_clock_phase, i32 0, i32 %442, i32 1
  %1156 = load i8, ptr %1155, align 4
  %1157 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_ts_clock_phase, i32 0, i32 %442, i32 2
  %1158 = load i8, ptr %1157, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #13
  store i32 0, ptr %25, align 4, !annotation !8
  %1159 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1154, ptr noundef nonnull %25) #13
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1161, label %1171

1161:                                             ; preds = %1150
  %1162 = zext i8 %1158 to i32
  %1163 = sub nsw i32 32, %1162
  %1164 = lshr i32 -1, %1163
  %1165 = zext i8 %1156 to i32
  %1166 = shl i32 %1164, %1165
  %1167 = load i32, ptr %25, align 4
  %1168 = xor i32 %1166, -1
  %1169 = and i32 %1167, %1168
  store i32 %1169, ptr %25, align 4
  %1170 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1154, i32 noundef %1169) #13
  br label %1171

1171:                                             ; preds = %1161, %1150
  %1172 = phi i32 [ %1170, %1161 ], [ -1, %1150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #13
  %1173 = or i32 %1152, %1172
  %1174 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_lsb_first, i32 0, i32 %442
  %1175 = load i32, ptr %1174, align 4
  %1176 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_lsb_first, i32 0, i32 %442, i32 1
  %1177 = load i8, ptr %1176, align 4
  %1178 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_lsb_first, i32 0, i32 %442, i32 2
  %1179 = load i8, ptr %1178, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #13
  store i32 0, ptr %24, align 4, !annotation !8
  %1180 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1175, ptr noundef nonnull %24) #13
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1182, label %1192

1182:                                             ; preds = %1171
  %1183 = zext i8 %1179 to i32
  %1184 = sub nsw i32 32, %1183
  %1185 = lshr i32 -1, %1184
  %1186 = zext i8 %1177 to i32
  %1187 = shl i32 %1185, %1186
  %1188 = load i32, ptr %24, align 4
  %1189 = xor i32 %1187, -1
  %1190 = and i32 %1188, %1189
  store i32 %1190, ptr %24, align 4
  %1191 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1175, i32 noundef %1190) #13
  br label %1192

1192:                                             ; preds = %1182, %1171
  %1193 = phi i32 [ %1191, %1182 ], [ -1, %1171 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #13
  %1194 = or i32 %1173, %1193
  %1195 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_sync, i32 0, i32 %442
  %1196 = load i32, ptr %1195, align 4
  %1197 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_sync, i32 0, i32 %442, i32 1
  %1198 = load i8, ptr %1197, align 4
  %1199 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_sync, i32 0, i32 %442, i32 2
  %1200 = load i8, ptr %1199, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #13
  store i32 0, ptr %23, align 4, !annotation !8
  %1201 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1196, ptr noundef nonnull %23) #13
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1203, label %1213

1203:                                             ; preds = %1192
  %1204 = zext i8 %1200 to i32
  %1205 = sub nsw i32 32, %1204
  %1206 = lshr i32 -1, %1205
  %1207 = zext i8 %1198 to i32
  %1208 = shl i32 %1206, %1207
  %1209 = load i32, ptr %23, align 4
  %1210 = xor i32 %1208, -1
  %1211 = and i32 %1209, %1210
  store i32 %1211, ptr %23, align 4
  %1212 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1196, i32 noundef %1211) #13
  br label %1213

1213:                                             ; preds = %1203, %1192
  %1214 = phi i32 [ %1212, %1203 ], [ -1, %1192 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #13
  %1215 = or i32 %1194, %1214
  %1216 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_valid, i32 0, i32 %442
  %1217 = load i32, ptr %1216, align 4
  %1218 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_valid, i32 0, i32 %442, i32 1
  %1219 = load i8, ptr %1218, align 4
  %1220 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_err_replace_valid, i32 0, i32 %442, i32 2
  %1221 = load i8, ptr %1220, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #13
  store i32 0, ptr %22, align 4, !annotation !8
  %1222 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1217, ptr noundef nonnull %22) #13
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1224, label %1234

1224:                                             ; preds = %1213
  %1225 = zext i8 %1221 to i32
  %1226 = sub nsw i32 32, %1225
  %1227 = lshr i32 -1, %1226
  %1228 = zext i8 %1219 to i32
  %1229 = shl i32 %1227, %1228
  %1230 = load i32, ptr %22, align 4
  %1231 = xor i32 %1229, -1
  %1232 = and i32 %1230, %1231
  store i32 %1232, ptr %22, align 4
  %1233 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1217, i32 noundef %1232) #13
  br label %1234

1234:                                             ; preds = %1224, %1213
  %1235 = phi i32 [ %1233, %1224 ], [ -1, %1213 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #13
  %1236 = or i32 %1215, %1235
  %1237 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_enable_output, i32 0, i32 %442
  %1238 = load i32, ptr %1237, align 4
  %1239 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_enable_output, i32 0, i32 %442, i32 1
  %1240 = load i8, ptr %1239, align 4
  %1241 = getelementptr [8 x %struct.MXL_REG_FIELD_T], ptr @__const.config_ts.xpt_enable_output, i32 0, i32 %442, i32 2
  %1242 = load i8, ptr %1241, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #13
  store i32 0, ptr %21, align 4, !annotation !8
  %1243 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1238, ptr noundef nonnull %21) #13
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1245, label %1258

1245:                                             ; preds = %1234
  %1246 = zext i8 %1242 to i32
  %1247 = sub nsw i32 32, %1246
  %1248 = lshr i32 -1, %1247
  %1249 = zext i8 %1240 to i32
  %1250 = shl i32 %1248, %1249
  %1251 = load i32, ptr %21, align 4
  %1252 = xor i32 %1250, -1
  %1253 = and i32 %1251, %1252
  %1254 = shl nuw i32 1, %1249
  %1255 = and i32 %1250, %1254
  %1256 = or i32 %1253, %1255
  store i32 %1256, ptr %21, align 4
  %1257 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1238, i32 noundef %1256) #13
  br label %1258

1258:                                             ; preds = %1245, %1234
  %1259 = phi i32 [ %1257, %1245 ], [ -1, %1234 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #13
  %1260 = or i32 %1236, %1259
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %428, label %1403

1262:                                             ; preds = %428, %416
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #13
  store i32 0, ptr %20, align 4, !annotation !8
  %1263 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047788, ptr noundef nonnull %20) #13
  %1264 = load ptr, ptr %229, align 4
  %1265 = load i32, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1264, ptr noundef nonnull @.str.20, i32 noundef %1265) #14
  %1266 = load ptr, ptr %229, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1266, ptr noundef nonnull @.str.21, i32 noundef 1) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #13
  store i32 0, ptr %19, align 4, !annotation !8
  %1267 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047788, ptr noundef nonnull %19) #13
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1269, label %1274

1269:                                             ; preds = %1262
  %1270 = load i32, ptr %19, align 4
  %1271 = and i32 %1270, -8
  %1272 = or i32 %1271, 1
  store i32 %1272, ptr %19, align 4
  %1273 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047788, i32 noundef %1272) #13
  br label %1274

1274:                                             ; preds = %1269, %1262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #13
  store i32 0, ptr %18, align 4, !annotation !8
  %1275 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047788, ptr noundef nonnull %18) #13
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1277, label %1282

1277:                                             ; preds = %1274
  %1278 = load i32, ptr %18, align 4
  %1279 = and i32 %1278, -7340033
  %1280 = or i32 %1279, 1048576
  store i32 %1280, ptr %18, align 4
  %1281 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047788, i32 noundef %1280) #13
  br label %1282

1282:                                             ; preds = %1277, %1274
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #13
  store i32 0, ptr %17, align 4, !annotation !8
  %1283 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047788, ptr noundef nonnull %17) #13
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1285, label %1290

1285:                                             ; preds = %1282
  %1286 = load i32, ptr %17, align 4
  %1287 = and i32 %1286, -117440513
  %1288 = or i32 %1287, 16777216
  store i32 %1288, ptr %17, align 4
  %1289 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047788, i32 noundef %1288) #13
  br label %1290

1290:                                             ; preds = %1285, %1282
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #13
  store i32 0, ptr %16, align 4, !annotation !8
  %1291 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047784, ptr noundef nonnull %16) #13
  %1292 = icmp eq i32 %1291, 0
  br i1 %1292, label %1293, label %1298

1293:                                             ; preds = %1290
  %1294 = load i32, ptr %16, align 4
  %1295 = and i32 %1294, -28673
  %1296 = or i32 %1295, 4096
  store i32 %1296, ptr %16, align 4
  %1297 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047784, i32 noundef %1296) #13
  br label %1298

1298:                                             ; preds = %1293, %1290
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #13
  store i32 0, ptr %15, align 4, !annotation !8
  %1299 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047784, ptr noundef nonnull %15) #13
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1301, label %1306

1301:                                             ; preds = %1298
  %1302 = load i32, ptr %15, align 4
  %1303 = and i32 %1302, -458753
  %1304 = or i32 %1303, 65536
  store i32 %1304, ptr %15, align 4
  %1305 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047784, i32 noundef %1304) #13
  br label %1306

1306:                                             ; preds = %1301, %1298
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #13
  store i32 0, ptr %14, align 4, !annotation !8
  %1307 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047784, ptr noundef nonnull %14) #13
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1309, label %1314

1309:                                             ; preds = %1306
  %1310 = load i32, ptr %14, align 4
  %1311 = and i32 %1310, -7340033
  %1312 = or i32 %1311, 1048576
  store i32 %1312, ptr %14, align 4
  %1313 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047784, i32 noundef %1312) #13
  br label %1314

1314:                                             ; preds = %1309, %1306
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  store i32 0, ptr %13, align 4, !annotation !8
  %1315 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047784, ptr noundef nonnull %13) #13
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1317, label %1322

1317:                                             ; preds = %1314
  %1318 = load i32, ptr %13, align 4
  %1319 = and i32 %1318, -117440513
  %1320 = or i32 %1319, 16777216
  store i32 %1320, ptr %13, align 4
  %1321 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047784, i32 noundef %1320) #13
  br label %1322

1322:                                             ; preds = %1317, %1314
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #13
  store i32 0, ptr %12, align 4, !annotation !8
  %1323 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047780, ptr noundef nonnull %12) #13
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1325, label %1330

1325:                                             ; preds = %1322
  %1326 = load i32, ptr %12, align 4
  %1327 = and i32 %1326, -8
  %1328 = or i32 %1327, 1
  store i32 %1328, ptr %12, align 4
  %1329 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047780, i32 noundef %1328) #13
  br label %1330

1330:                                             ; preds = %1325, %1322
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !annotation !8
  %1331 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047780, ptr noundef nonnull %11) #13
  %1332 = icmp eq i32 %1331, 0
  br i1 %1332, label %1333, label %1338

1333:                                             ; preds = %1330
  %1334 = load i32, ptr %11, align 4
  %1335 = and i32 %1334, -113
  %1336 = or i32 %1335, 16
  store i32 %1336, ptr %11, align 4
  %1337 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047780, i32 noundef %1336) #13
  br label %1338

1338:                                             ; preds = %1333, %1330
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #13
  store i32 0, ptr %10, align 4, !annotation !8
  %1339 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047780, ptr noundef nonnull %10) #13
  %1340 = icmp eq i32 %1339, 0
  br i1 %1340, label %1341, label %1346

1341:                                             ; preds = %1338
  %1342 = load i32, ptr %10, align 4
  %1343 = and i32 %1342, -1793
  %1344 = or i32 %1343, 256
  store i32 %1344, ptr %10, align 4
  %1345 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047780, i32 noundef %1344) #13
  br label %1346

1346:                                             ; preds = %1341, %1338
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  store i32 0, ptr %9, align 4, !annotation !8
  %1347 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047780, ptr noundef nonnull %9) #13
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1349, label %1354

1349:                                             ; preds = %1346
  %1350 = load i32, ptr %9, align 4
  %1351 = and i32 %1350, -117440513
  %1352 = or i32 %1351, 16777216
  store i32 %1352, ptr %9, align 4
  %1353 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047780, i32 noundef %1352) #13
  br label %1354

1354:                                             ; preds = %1349, %1346
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !annotation !8
  %1355 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047780, ptr noundef nonnull %8) #13
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1357, label %1362

1357:                                             ; preds = %1354
  %1358 = load i32, ptr %8, align 4
  %1359 = and i32 %1358, -1879048193
  %1360 = or i32 %1359, 268435456
  store i32 %1360, ptr %8, align 4
  %1361 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047780, i32 noundef %1360) #13
  br label %1362

1362:                                             ; preds = %1357, %1354
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  store i32 0, ptr %7, align 4, !annotation !8
  %1363 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047776, ptr noundef nonnull %7) #13
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1365, label %1370

1365:                                             ; preds = %1362
  %1366 = load i32, ptr %7, align 4
  %1367 = and i32 %1366, -8
  %1368 = or i32 %1367, 1
  store i32 %1368, ptr %7, align 4
  %1369 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047776, i32 noundef %1368) #13
  br label %1370

1370:                                             ; preds = %1365, %1362
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %1371 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047776, ptr noundef nonnull %6) #13
  %1372 = icmp eq i32 %1371, 0
  br i1 %1372, label %1373, label %1378

1373:                                             ; preds = %1370
  %1374 = load i32, ptr %6, align 4
  %1375 = and i32 %1374, -113
  %1376 = or i32 %1375, 16
  store i32 %1376, ptr %6, align 4
  %1377 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047776, i32 noundef %1376) #13
  br label %1378

1378:                                             ; preds = %1373, %1370
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %1379 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047776, ptr noundef nonnull %5) #13
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1381, label %1386

1381:                                             ; preds = %1378
  %1382 = load i32, ptr %5, align 4
  %1383 = and i32 %1382, -7340033
  %1384 = or i32 %1383, 1048576
  store i32 %1384, ptr %5, align 4
  %1385 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047776, i32 noundef %1384) #13
  br label %1386

1386:                                             ; preds = %1381, %1378
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %1387 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047776, ptr noundef nonnull %4) #13
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1389, label %1394

1389:                                             ; preds = %1386
  %1390 = load i32, ptr %4, align 4
  %1391 = and i32 %1390, -117440513
  %1392 = or i32 %1391, 16777216
  store i32 %1392, ptr %4, align 4
  %1393 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047776, i32 noundef %1392) #13
  br label %1394

1394:                                             ; preds = %1389, %1386
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %1395 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -1879047776, ptr noundef nonnull %3) #13
  %1396 = icmp eq i32 %1395, 0
  br i1 %1396, label %1397, label %1402

1397:                                             ; preds = %1394
  %1398 = load i32, ptr %3, align 4
  %1399 = and i32 %1398, -1879048193
  %1400 = or i32 %1399, 268435456
  store i32 %1400, ptr %3, align 4
  %1401 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1879047776, i32 noundef %1400) #13
  br label %1402

1402:                                             ; preds = %1397, %1394
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #13
  br label %1403

1403:                                             ; preds = %1402, %1258, %317, %308, %304, %241, %239, %237, %233, %232, %222, %206
  %1404 = phi i32 [ 0, %1402 ], [ -1, %241 ], [ %318, %317 ], [ -1, %206 ], [ -1, %232 ], [ -1, %239 ], [ -1, %237 ], [ -1, %233 ], [ -1, %222 ], [ -12, %308 ], [ -1, %304 ], [ %1260, %1258 ]
  ret i32 %1404
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @set_input(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mxl, ptr %4, i32 0, i32 5
  store i32 %1, ptr %5, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @update_by_mnemonic(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = zext i8 %3 to i32
  %11 = sub nsw i32 32, %10
  %12 = lshr i32 -1, %11
  %13 = zext i8 %2 to i32
  %14 = shl i32 %12, %13
  %15 = load i32, ptr %6, align 4
  %16 = xor i32 %14, -1
  %17 = and i32 %15, %16
  %18 = shl i32 %4, %13
  %19 = and i32 %14, %18
  %20 = or i32 %17, %19
  store i32 %20, ptr %6, align 4
  %21 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef %1, i32 noundef %20)
  br label %22

22:                                               ; preds = %9, %5
  %23 = phi i32 [ %21, %9 ], [ -1, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @firmware_is_alive(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef 1073737180, ptr noundef nonnull %2)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  call void @msleep(i32 noundef 20) #13
  %7 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef 1073737180, ptr noundef nonnull %3)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, ptr %3, align 4
  %11 = load i32, ptr %2, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %6, %1
  %15 = phi i32 [ 0, %1 ], [ 0, %6 ], [ %13, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_register(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %6) #13
  store i8 -5, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 4, ptr %7, align 1
  %8 = getelementptr inbounds i8, ptr %6, i32 2
  %9 = trunc i32 %1 to i8
  store i8 %9, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %6, i32 3
  %11 = lshr i32 %1, 8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %10, align 1
  %13 = getelementptr inbounds i8, ptr %6, i32 4
  %14 = lshr i32 %1, 16
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr %13, align 1
  %16 = getelementptr inbounds i8, ptr %6, i32 5
  %17 = lshr i32 %1, 24
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %16, align 1
  %19 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mxl_base, ptr %20, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %21) #13
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.mxl_base, ptr %22, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mxl_base, ptr %22, i32 0, i32 2
  %26 = load i8, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %27 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 6, ptr %27, align 4, !annotation !8
  %28 = zext i8 %26 to i16
  store i16 %28, ptr %5, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %6, ptr %30, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %5, i32 noundef 1) #13
  %32 = icmp eq i32 %31, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.7) #14
  br label %49

36:                                               ; preds = %3
  %37 = load ptr, ptr %19, align 4
  %38 = getelementptr inbounds %struct.mxl_base, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mxl_base, ptr %37, i32 0, i32 2
  %41 = load i8, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %42 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 4, ptr %42, align 4, !annotation !8
  %43 = zext i8 %41 to i16
  store i16 %43, ptr %4, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %45, align 4
  %46 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 1) #13
  %47 = icmp ne i32 %46, 1
  %48 = sext i1 %47 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %49

49:                                               ; preds = %36, %33
  %50 = phi i32 [ %48, %36 ], [ -1, %33 ]
  %51 = load ptr, ptr %19, align 4
  %52 = getelementptr inbounds %struct.mxl_base, ptr %51, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %52) #13
  %53 = icmp eq i32 %50, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.8) #14
  br label %57

57:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %6) #13
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_register(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #13
  store i8 -4, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 8, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %5, i32 2
  %8 = trunc i32 %1 to i8
  store i8 %8, ptr %7, align 1
  %9 = getelementptr inbounds i8, ptr %5, i32 3
  %10 = lshr i32 %1, 8
  %11 = trunc i32 %10 to i8
  store i8 %11, ptr %9, align 1
  %12 = getelementptr inbounds i8, ptr %5, i32 4
  %13 = lshr i32 %1, 16
  %14 = trunc i32 %13 to i8
  store i8 %14, ptr %12, align 1
  %15 = getelementptr inbounds i8, ptr %5, i32 5
  %16 = lshr i32 %1, 24
  %17 = trunc i32 %16 to i8
  store i8 %17, ptr %15, align 1
  %18 = getelementptr inbounds i8, ptr %5, i32 6
  %19 = trunc i32 %2 to i8
  store i8 %19, ptr %18, align 1
  %20 = getelementptr inbounds i8, ptr %5, i32 7
  %21 = lshr i32 %2, 8
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %20, align 1
  %23 = getelementptr inbounds i8, ptr %5, i32 8
  %24 = lshr i32 %2, 16
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %23, align 1
  %26 = getelementptr inbounds i8, ptr %5, i32 9
  %27 = lshr i32 %2, 24
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %26, align 1
  %29 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mxl_base, ptr %30, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %31) #13
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.mxl_base, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.mxl_base, ptr %32, i32 0, i32 2
  %36 = load i8, ptr %35, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %37 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 10, ptr %37, align 4, !annotation !8
  %38 = zext i8 %36 to i16
  store i16 %38, ptr %4, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %39, align 2
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %40, align 4
  %41 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %4, i32 noundef 1) #13
  %42 = icmp ne i32 %41, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %43 = load ptr, ptr %29, align 4
  %44 = getelementptr inbounds %struct.mxl_base, ptr %43, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %44) #13
  br i1 %42, label %45, label %48

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.9) #14
  br label %48

48:                                               ; preds = %45, %3
  %49 = sext i1 %42 to i32
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #13
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @firmware_download(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(10) %5, i8 0, i32 10, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %1, i32 0, i32 5
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = getelementptr %struct.MBIN_FILE_HEADER_T, ptr %1, i32 0, i32 5, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or i32 %13, %9
  %15 = getelementptr %struct.MBIN_FILE_HEADER_T, ptr %1, i32 0, i32 5, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %14, %17
  %19 = load i8, ptr %1, align 1
  %20 = icmp eq i8 %19, 77
  br i1 %20, label %21, label %46

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %1, i32 0, i32 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp ne i8 %23, 49
  %25 = icmp ugt i32 %18, 262128
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %46, label %27

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %1, i32 16
  %29 = icmp eq i32 %18, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %37, %30 ], [ 0, %27 ]
  %32 = phi i32 [ %38, %30 ], [ 0, %27 ]
  %33 = getelementptr i8, ptr %28, i32 %31
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %32, %35
  %37 = add nuw nsw i32 %31, 1
  %38 = and i32 %36, 255
  %39 = icmp eq i32 %37, %18
  br i1 %39, label %40, label %30

40:                                               ; preds = %30, %27
  %41 = phi i32 [ 0, %27 ], [ %38, %30 ]
  %42 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %1, i32 0, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %40, %21, %2
  %47 = phi ptr [ @.str.11, %2 ], [ @.str.11, %21 ], [ @.str.12, %40 ]
  %48 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull %47) #14
  br label %112

50:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %51 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147286980, ptr noundef nonnull %3) #13
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %112

54:                                               ; preds = %50
  %55 = load i32, ptr %3, align 4
  %56 = and i32 %55, -2
  store i32 %56, ptr %3, align 4
  %57 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147286980, i32 noundef %56) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %112

59:                                               ; preds = %54
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  %60 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147287000, i32 noundef 0)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %59
  %63 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147287004, i32 noundef 0)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %112

65:                                               ; preds = %62
  %66 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147287008, i32 noundef 0)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %112

68:                                               ; preds = %65
  %69 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147287012, i32 noundef 11)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %68
  %72 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147287016, ptr noundef nonnull %4)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %71
  %75 = call fastcc i32 @do_firmware_download(ptr noundef %0, ptr noundef %1)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.mxl_base, ptr %79, i32 0, i32 5
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 8
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #13
  %84 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871577088, i32 noundef 1)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %83
  call void @msleep(i32 noundef 500) #13
  %87 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871268592, i32 noundef 1)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %112

89:                                               ; preds = %77
  %90 = call fastcc i32 @update_by_mnemonic(ptr noundef %0, i32 noundef -2147286980, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 1)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %89
  call void @msleep(i32 noundef 150) #13
  br label %93

93:                                               ; preds = %92, %86
  %94 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871707572, i32 noundef 1985229328)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = call fastcc i32 @firmware_is_alive(ptr noundef %0)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.10) #14
  call void @msleep(i32 noundef 50) #13
  %102 = load ptr, ptr %78, align 4
  %103 = getelementptr inbounds %struct.mxl_base, ptr %102, i32 0, i32 6
  %104 = load i32, ptr %103, align 4
  store i8 -2, ptr %5, align 1
  %105 = getelementptr inbounds [10 x i8], ptr %5, i32 0, i32 1
  store i8 8, ptr %105, align 1
  %106 = getelementptr inbounds [10 x i8], ptr %5, i32 0, i32 2
  store i8 4, ptr %106, align 1
  %107 = getelementptr inbounds [10 x i8], ptr %5, i32 0, i32 3
  store i8 58, ptr %107, align 1
  %108 = getelementptr inbounds [10 x i8], ptr %5, i32 0, i32 4
  store i8 0, ptr %108, align 1
  %109 = getelementptr inbounds [10 x i8], ptr %5, i32 0, i32 5
  store i8 0, ptr %109, align 1
  %110 = getelementptr inbounds [10 x i8], ptr %5, i32 0, i32 6
  store i32 %104, ptr %110, align 1
  %111 = call fastcc i32 @send_command(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %5)
  br label %112

112:                                              ; preds = %99, %96, %93, %89, %86, %83, %74, %71, %68, %65, %62, %59, %54, %53, %46
  %113 = phi i32 [ %111, %99 ], [ -1, %46 ], [ -1, %54 ], [ -1, %59 ], [ -1, %62 ], [ -1, %65 ], [ -1, %68 ], [ -1, %71 ], [ %75, %74 ], [ -1, %83 ], [ -1, %86 ], [ -1, %89 ], [ -1, %93 ], [ -1, %96 ], [ -1, %53 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_firmware_download(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load i8, ptr %1, align 1
  %5 = icmp eq i8 %4, 77
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = zext i8 %4 to i32
  %8 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.do_firmware_download, i32 noundef %7) #14
  br label %105

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @write_register(ptr noundef %0, i32 noundef 1073736416, i32 noundef 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %105

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.MBIN_FILE_HEADER_T, ptr %1, i32 0, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %105, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.MBIN_FILE_T, ptr %1, i32 0, i32 1
  %19 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  br label %20

20:                                               ; preds = %96, %17
  %21 = phi i8 [ %15, %17 ], [ %97, %96 ]
  %22 = phi i32 [ 0, %17 ], [ %98, %96 ]
  %23 = phi ptr [ %18, %17 ], [ %101, %96 ]
  %24 = phi i32 [ 0, %17 ], [ %102, %96 ]
  %25 = load i8, ptr %23, align 1
  %26 = icmp eq i8 %25, 83
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = zext i8 %25 to i32
  %29 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.do_firmware_download, i32 noundef %28) #14
  br label %105

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.MBIN_SEGMENT_HEADER_T, ptr %23, i32 0, i32 1
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %23, i32 0, i32 1, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 8
  %40 = or i32 %39, %35
  %41 = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %23, i32 0, i32 1, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = getelementptr inbounds %struct.MBIN_SEGMENT_HEADER_T, ptr %23, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw i32 %47, 24
  %49 = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %23, i32 0, i32 2, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = or i32 %52, %48
  %54 = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %23, i32 0, i32 2, i32 2
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = or i32 %53, %57
  %59 = getelementptr %struct.MBIN_SEGMENT_HEADER_T, ptr %23, i32 0, i32 2, i32 3
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %58, %61
  %63 = load ptr, ptr %19, align 4
  %64 = getelementptr inbounds %struct.mxl_base, ptr %63, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %86

67:                                               ; preds = %31
  %68 = and i32 %53, -1871314944
  %69 = icmp eq i32 %68, -1871314944
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = and i32 %53, -1871446016
  %72 = icmp eq i32 %71, -1871446016
  %73 = icmp eq i32 %22, 0
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %77, label %89

75:                                               ; preds = %67
  %76 = icmp eq i32 %22, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %75, %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  %78 = call fastcc i32 @read_register(ptr noundef %0, i32 noundef -2147286980, ptr noundef nonnull %3) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, ptr %3, align 4
  %82 = or i32 %81, 1
  store i32 %82, ptr %3, align 4
  %83 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -2147286980, i32 noundef %82) #13
  br label %84

84:                                               ; preds = %80, %77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @msleep(i32 noundef 200) #13
  %85 = call fastcc i32 @write_register(ptr noundef %0, i32 noundef -1871577088, i32 noundef 0)
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #13
  br label %89

86:                                               ; preds = %31
  %87 = and i32 %53, -1871446016
  %88 = icmp eq i32 %87, -1871446016
  br i1 %88, label %96, label %89

89:                                               ; preds = %86, %84, %75, %70
  %90 = phi i32 [ 1, %84 ], [ 1, %75 ], [ %22, %70 ], [ %22, %86 ]
  %91 = getelementptr inbounds %struct.MBIN_SEGMENT_T, ptr %23, i32 0, i32 1
  %92 = call fastcc i32 @write_fw_segment(ptr noundef %0, i32 noundef %62, i32 noundef %44, ptr noundef %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load i8, ptr %14, align 1
  br label %96

96:                                               ; preds = %94, %86
  %97 = phi i8 [ %95, %94 ], [ %21, %86 ]
  %98 = phi i32 [ %90, %94 ], [ %22, %86 ]
  %99 = add nuw nsw i32 %44, 3
  %100 = and i32 %99, 33554428
  %101 = getelementptr %struct.MBIN_SEGMENT_T, ptr %23, i32 0, i32 1, i32 %100
  %102 = add nuw nsw i32 %24, 1
  %103 = zext i8 %97 to i32
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %20, label %105

105:                                              ; preds = %96, %89, %27, %13, %10, %6
  %106 = phi i32 [ -22, %6 ], [ -22, %27 ], [ -1, %10 ], [ 0, %13 ], [ -1, %89 ], [ 0, %96 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @send_command(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mxl_base, ptr %7, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.mxl_base, ptr %9, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 33620233
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  call fastcc void @read_register_unlocked(ptr noundef %0, ptr noundef nonnull %5)
  %14 = load i32, ptr %5, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.send_command) #14
  %20 = load i32, ptr %5, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %27, %17
  %24 = phi i32 [ %25, %27 ], [ 10, %17 ]
  %25 = add nsw i32 %24, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 4
  %29 = getelementptr inbounds %struct.mxl_base, ptr %28, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %29) #13
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #13
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.mxl_base, ptr %30, i32 0, i32 16
  call void @mutex_lock(ptr noundef %31) #13
  call fastcc void @read_register_unlocked(ptr noundef %0, ptr noundef nonnull %5)
  %32 = load i32, ptr %5, align 4
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %23

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.send_command) #14
  br label %52

38:                                               ; preds = %27, %17, %13, %3
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.mxl_base, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mxl_base, ptr %39, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %44 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %44, align 4, !annotation !8
  %45 = zext i8 %43 to i16
  store i16 %45, ptr %4, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = trunc i32 %1 to i16
  store i16 %47, ptr %44, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %48, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %4, i32 noundef 1) #13
  %50 = icmp ne i32 %49, 1
  %51 = sext i1 %50 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %52

52:                                               ; preds = %38, %35
  %53 = phi i32 [ %51, %38 ], [ -16, %35 ]
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr inbounds %struct.mxl_base, ptr %54, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %55) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_fw_segment(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [242 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 242, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(242) %6, i8 0, i32 242, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  br label %11

11:                                               ; preds = %73, %4
  %12 = phi i32 [ %1, %4 ], [ %75, %73 ]
  %13 = phi ptr [ %3, %4 ], [ %76, %73 ]
  %14 = phi i32 [ 0, %4 ], [ %74, %73 ]
  %15 = add i32 %14, 240
  %16 = icmp ugt i32 %15, %2
  %17 = sub i32 %2, %14
  %18 = select i1 %16, i32 %17, i32 240
  %19 = add i32 %18, 3
  %20 = and i32 %19, -4
  %21 = call i32 @llvm.usub.sat.i32(i32 %20, i32 %18)
  %22 = getelementptr i8, ptr %6, i32 %18
  call void @llvm.memset.p0.i32(ptr align 1 %22, i8 0, i32 %21, i1 false)
  call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %13, i32 %18, i1 false)
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %24, %11
  %25 = phi i32 [ %37, %24 ], [ 0, %11 ]
  %26 = or i32 %25, 3
  %27 = getelementptr i8, ptr %6, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr i8, ptr %6, i32 %25
  %30 = load i8, ptr %29, align 1
  store i8 %30, ptr %27, align 1
  store i8 %28, ptr %29, align 1
  %31 = or i32 %25, 2
  %32 = getelementptr i8, ptr %6, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = or i32 %25, 1
  %35 = getelementptr i8, ptr %6, i32 %34
  %36 = load i8, ptr %35, align 1
  store i8 %36, ptr %32, align 1
  store i8 %33, ptr %35, align 1
  %37 = add nuw i32 %25, 4
  %38 = icmp ult i32 %37, %20
  br i1 %38, label %24, label %39

39:                                               ; preds = %24, %11
  %40 = load ptr, ptr %7, align 4
  %41 = getelementptr inbounds %struct.mxl_base, ptr %40, i32 0, i32 19
  %42 = getelementptr inbounds %struct.mxl_base, ptr %40, i32 0, i32 16
  call void @mutex_lock(ptr noundef %42) #13
  store i8 -4, ptr %41, align 1
  %43 = trunc i32 %20 to i8
  %44 = add i8 %43, 4
  %45 = getelementptr %struct.mxl_base, ptr %40, i32 0, i32 19, i32 1
  store i8 %44, ptr %45, align 1
  %46 = trunc i32 %12 to i8
  %47 = getelementptr %struct.mxl_base, ptr %40, i32 0, i32 19, i32 2
  store i8 %46, ptr %47, align 1
  %48 = lshr i32 %12, 8
  %49 = trunc i32 %48 to i8
  %50 = getelementptr %struct.mxl_base, ptr %40, i32 0, i32 19, i32 3
  store i8 %49, ptr %50, align 1
  %51 = lshr i32 %12, 16
  %52 = trunc i32 %51 to i8
  %53 = getelementptr %struct.mxl_base, ptr %40, i32 0, i32 19, i32 4
  store i8 %52, ptr %53, align 1
  %54 = lshr i32 %12, 24
  %55 = trunc i32 %54 to i8
  %56 = getelementptr %struct.mxl_base, ptr %40, i32 0, i32 19, i32 5
  store i8 %55, ptr %56, align 1
  %57 = getelementptr %struct.mxl_base, ptr %40, i32 0, i32 19, i32 6
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %57, ptr nonnull align 1 %6, i32 %20, i1 false) #13
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.mxl_base, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.mxl_base, ptr %58, i32 0, i32 2
  %62 = load i8, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  store i32 0, ptr %8, align 4, !annotation !8
  %63 = zext i8 %62 to i16
  store i16 %63, ptr %5, align 4
  store i16 0, ptr %9, align 2
  %64 = trunc i32 %20 to i16
  %65 = add i16 %64, 6
  store i16 %65, ptr %8, align 4
  store ptr %41, ptr %10, align 4
  %66 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %5, i32 noundef 1) #13
  %67 = icmp eq i32 %66, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  %68 = load ptr, ptr %7, align 4
  %69 = getelementptr inbounds %struct.mxl_base, ptr %68, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %69) #13
  br i1 %67, label %73, label %70

70:                                               ; preds = %39
  %71 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.15) #14
  br label %78

73:                                               ; preds = %39
  %74 = add i32 %20, %14
  %75 = add i32 %20, %12
  %76 = getelementptr i8, ptr %13, i32 %20
  %77 = icmp ult i32 %74, %2
  br i1 %77, label %11, label %78

78:                                               ; preds = %73, %70
  %79 = phi i32 [ -1, %70 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 242, ptr nonnull %6) #13
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_register_unlocked(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #13
  store i8 -5, ptr %5, align 1
  %6 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 4, ptr %6, align 1
  %7 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 28, ptr %7, align 1
  %8 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 1, ptr %8, align 1
  %9 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 -128, ptr %10, align 1
  %11 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.mxl_base, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.mxl_base, ptr %12, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %17 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 6, ptr %17, align 4, !annotation !8
  %18 = zext i8 %16 to i16
  store i16 %18, ptr %4, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %20, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %4, i32 noundef 1) #13
  %22 = icmp eq i32 %21, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7) #14
  br label %38

26:                                               ; preds = %2
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr inbounds %struct.mxl_base, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mxl_base, ptr %27, i32 0, i32 2
  %31 = load i8, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %32 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %32, align 4, !annotation !8
  %33 = zext i8 %31 to i16
  store i16 %33, ptr %3, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %1, ptr %35, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #13
  %37 = icmp eq i32 %36, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  br i1 %37, label %41, label %38

38:                                               ; preds = %26, %23
  %39 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.8) #14
  br label %41

41:                                               ; preds = %38, %26
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = getelementptr inbounds %struct.mxl, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mxl_base, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1
  store i32 %12, ptr %10, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.mxl_base, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %13, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %22) #13
  br label %23

23:                                               ; preds = %17, %1
  tail call void @kfree(ptr noundef %3) #13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @init(ptr nocapture noundef writeonly %0) #9 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %2, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %4, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  store i8 1, ptr %6, align 2
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 1, ptr %8, align 1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 1, ptr %12, align 1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %13, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [248 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca [248 x i8], align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %4) #13
  %7 = getelementptr inbounds i8, ptr %4, i32 10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %7, i8 0, i32 238, i1 false) #13, !annotation !8
  %8 = getelementptr inbounds %struct.mxl, ptr %6, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  store i8 -2, ptr %4, align 1
  %10 = getelementptr inbounds [248 x i8], ptr %4, i32 0, i32 1
  store i8 8, ptr %10, align 1
  %11 = getelementptr inbounds [248 x i8], ptr %4, i32 0, i32 2
  store i8 4, ptr %11, align 1
  %12 = getelementptr inbounds [248 x i8], ptr %4, i32 0, i32 3
  store i8 16, ptr %12, align 1
  %13 = getelementptr inbounds [248 x i8], ptr %4, i32 0, i32 4
  store i8 0, ptr %13, align 1
  %14 = getelementptr inbounds [248 x i8], ptr %4, i32 0, i32 5
  store i8 0, ptr %14, align 1
  %15 = getelementptr inbounds [248 x i8], ptr %4, i32 0, i32 6
  store i32 %9, ptr %15, align 1
  %16 = call fastcc i32 @send_command(ptr noundef %6, i32 noundef 10, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %4) #13
  %17 = getelementptr inbounds %struct.mxl, ptr %6, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %103, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.mxl, ptr %6, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mxl_base, ptr %22, i32 0, i32 18
  call void @mutex_lock(ptr noundef %23) #13
  store i32 -1, ptr %17, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.mxl_base, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.mxl, ptr %6, i32 0, i32 5
  br label %27

27:                                               ; preds = %31, %20
  %28 = phi ptr [ %25, %20 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %25
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.mxl, ptr %29, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %26, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %100, label %27

36:                                               ; preds = %27
  %37 = load i32, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %2) #13
  %38 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %38, i8 0, i32 240, i1 false) #13, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 0, ptr %3, align 4, !annotation !8
  store i8 -2, ptr %2, align 1
  %39 = getelementptr inbounds [248 x i8], ptr %2, i32 0, i32 1
  store i8 6, ptr %39, align 1
  %40 = getelementptr inbounds [248 x i8], ptr %2, i32 0, i32 2
  store i8 2, ptr %40, align 1
  %41 = getelementptr inbounds [248 x i8], ptr %2, i32 0, i32 3
  store i8 55, ptr %41, align 1
  %42 = getelementptr inbounds [248 x i8], ptr %2, i32 0, i32 4
  store i8 0, ptr %42, align 1
  %43 = getelementptr inbounds [248 x i8], ptr %2, i32 0, i32 5
  store i8 0, ptr %43, align 1
  %44 = getelementptr inbounds [248 x i8], ptr %2, i32 0, i32 6
  %45 = trunc i32 %37 to i16
  %46 = and i16 %45, 255
  store i16 %46, ptr %44, align 1
  %47 = call fastcc i32 @send_command(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %2) #13
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %98

49:                                               ; preds = %36
  %50 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %51 = shl nuw i32 1, %37
  %52 = load i32, ptr %3, align 4
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %49
  call void @msleep(i32 noundef 20) #13
  %56 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %57 = load i32, ptr %3, align 4
  %58 = and i32 %57, %51
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %96, label %60

60:                                               ; preds = %55
  call void @msleep(i32 noundef 20) #13
  %61 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %62 = load i32, ptr %3, align 4
  %63 = and i32 %62, %51
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %96, label %65

65:                                               ; preds = %60
  call void @msleep(i32 noundef 20) #13
  %66 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %67 = load i32, ptr %3, align 4
  %68 = and i32 %67, %51
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %65
  call void @msleep(i32 noundef 20) #13
  %71 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %72 = load i32, ptr %3, align 4
  %73 = and i32 %72, %51
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %70
  call void @msleep(i32 noundef 20) #13
  %76 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %77 = load i32, ptr %3, align 4
  %78 = and i32 %77, %51
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  call void @msleep(i32 noundef 20) #13
  %81 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %82 = load i32, ptr %3, align 4
  %83 = and i32 %82, %51
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  call void @msleep(i32 noundef 20) #13
  %86 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %87 = load i32, ptr %3, align 4
  %88 = and i32 %87, %51
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  call void @msleep(i32 noundef 20) #13
  %91 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  %92 = load i32, ptr %3, align 4
  %93 = and i32 %92, %51
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  call void @msleep(i32 noundef 20) #13
  br label %96

96:                                               ; preds = %95, %90, %85, %80, %75, %70, %65, %60, %55, %49
  %97 = call fastcc i32 @read_register(ptr noundef %6, i32 noundef 1073736568, ptr noundef nonnull %3) #13
  br label %98

98:                                               ; preds = %96, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %2) #13
  %99 = load ptr, ptr %21, align 4
  br label %100

100:                                              ; preds = %98, %31
  %101 = phi ptr [ %99, %98 ], [ %24, %31 ]
  %102 = getelementptr inbounds %struct.mxl_base, ptr %101, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %102) #13
  br label %103

103:                                              ; preds = %100, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #0 {
  %6 = alloca [26 x i8], align 1
  %7 = alloca [248 x i8], align 1
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  store i32 50, ptr %3, align 4
  br i1 %1, label %10, label %131

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(248) %7, i8 0, i32 248, i1 false) #13, !annotation !8
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -2150001
  %15 = icmp ult i32 %14, -1200001
  br i1 %15, label %100, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -45000001
  %20 = icmp ult i32 %19, -44000001
  br i1 %20, label %100, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %100 [
    i32 4, label %66
    i32 5, label %24
    i32 6, label %27
  ]

24:                                               ; preds = %21
  %25 = udiv i32 %18, 1000000
  %26 = tail call i32 @llvm.umin.i32(i32 %25, i32 10) #13
  br label %66

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 25
  %29 = load i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %6) #13
  %30 = getelementptr inbounds i8, ptr %6, i32 2
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(20) %30, i8 0, i64 20, i1 false) #13
  store i8 -2, ptr %6, align 1
  %31 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 24, ptr %31, align 1
  %32 = getelementptr inbounds i8, ptr %6, i32 3
  store i8 24, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %6, i32 6
  %34 = getelementptr inbounds %struct.mxl, ptr %11, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %33, align 1
  %37 = add i32 %29, -262143
  %38 = icmp ult i32 %37, -262142
  br i1 %38, label %50, label %39

39:                                               ; preds = %39, %27
  %40 = phi i32 [ %48, %39 ], [ 0, %27 ]
  %41 = phi i32 [ %47, %39 ], [ 1, %27 ]
  %42 = lshr i32 %41, 7
  %43 = xor i32 %42, %41
  %44 = shl i32 %43, 17
  %45 = and i32 %44, 131072
  %46 = lshr i32 %41, 1
  %47 = or i32 %45, %46
  %48 = add nuw nsw i32 %40, 1
  %49 = icmp eq i32 %48, %29
  br i1 %49, label %50, label %39

50:                                               ; preds = %39, %27
  %51 = phi i32 [ 1, %27 ], [ %47, %39 ]
  %52 = getelementptr inbounds i8, ptr %6, i32 22
  %53 = lshr i32 %51, 24
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [26 x i8], ptr %6, i32 0, i32 25
  store i8 %54, ptr %55, align 1
  %56 = lshr i32 %51, 16
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [26 x i8], ptr %6, i32 0, i32 24
  store i8 %57, ptr %58, align 1
  %59 = lshr i32 %51, 8
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [26 x i8], ptr %6, i32 0, i32 23
  store i8 %60, ptr %61, align 1
  %62 = trunc i32 %51 to i8
  store i8 %62, ptr %52, align 1
  %63 = call fastcc i32 @send_command(ptr noundef %11, i32 noundef 26, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %6) #13
  %64 = load i32, ptr %12, align 4
  %65 = load i32, ptr %17, align 4
  br label %66

66:                                               ; preds = %50, %24, %21
  %67 = phi i32 [ %65, %50 ], [ %18, %24 ], [ %18, %21 ]
  %68 = phi i32 [ %64, %50 ], [ %13, %24 ], [ %13, %21 ]
  %69 = phi i32 [ 2, %50 ], [ 1, %24 ], [ 0, %21 ]
  %70 = phi i32 [ 0, %50 ], [ 3, %24 ], [ 0, %21 ]
  %71 = phi i32 [ 2, %50 ], [ 0, %24 ], [ 0, %21 ]
  %72 = phi i32 [ 0, %50 ], [ 1, %24 ], [ 0, %21 ]
  %73 = phi i32 [ 10, %50 ], [ %26, %24 ], [ 10, %21 ]
  %74 = getelementptr inbounds %struct.mxl, ptr %11, i32 0, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.mxl, ptr %11, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = mul i32 %68, 1000
  %79 = getelementptr inbounds %struct.mxl, ptr %11, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.mxl_base, ptr %80, i32 0, i32 18
  call void @mutex_lock(ptr noundef %81) #13
  %82 = load ptr, ptr %79, align 4
  %83 = getelementptr inbounds %struct.mxl_base, ptr %82, i32 0, i32 15
  %84 = load i32, ptr %83, align 4
  %85 = load volatile i32, ptr @jiffies, align 64
  %86 = add i32 %84, -20
  %87 = sub i32 %86, %85
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %66
  %90 = load volatile i32, ptr @jiffies, align 64
  %91 = sub i32 %90, %84
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %93, %89
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #13
  %94 = load volatile i32, ptr @jiffies, align 64
  %95 = load ptr, ptr %79, align 4
  %96 = getelementptr inbounds %struct.mxl_base, ptr %95, i32 0, i32 15
  %97 = load i32, ptr %96, align 4
  %98 = sub i32 %94, %97
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %93, label %101

100:                                              ; preds = %21, %16, %10
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %7) #13
  br label %133

101:                                              ; preds = %93, %89, %66
  %102 = phi ptr [ %82, %89 ], [ %82, %66 ], [ %95, %93 ]
  %103 = load volatile i32, ptr @jiffies, align 64
  %104 = add i32 %103, 10
  %105 = getelementptr inbounds %struct.mxl_base, ptr %102, i32 0, i32 15
  store i32 %104, ptr %105, align 4
  %106 = load i32, ptr %74, align 4
  %107 = getelementptr inbounds %struct.mxl, ptr %11, i32 0, i32 6
  store i32 %106, ptr %107, align 4
  store i8 -2, ptr %7, align 1
  %108 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 1
  store i8 48, ptr %108, align 1
  %109 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 2
  store i8 44, ptr %109, align 1
  %110 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 3
  store i8 8, ptr %110, align 1
  %111 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 4
  store i8 0, ptr %111, align 1
  %112 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 5
  store i8 0, ptr %112, align 1
  %113 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 6
  store i32 %75, ptr %113, align 1
  %114 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 10
  store i32 %77, ptr %114, align 1
  %115 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 14
  store i32 %78, ptr %115, align 1
  %116 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 18
  store i32 %69, ptr %116, align 1
  %117 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 22
  store i32 0, ptr %117, align 1
  %118 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 26
  store i32 %70, ptr %118, align 1
  %119 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 30
  store i32 %67, ptr %119, align 1
  %120 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 34
  store i32 %71, ptr %120, align 1
  %121 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 38
  store i32 %72, ptr %121, align 1
  %122 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 42
  store i32 0, ptr %122, align 1
  %123 = getelementptr inbounds [248 x i8], ptr %7, i32 0, i32 46
  store i32 %73, ptr %123, align 1
  %124 = call fastcc i32 @send_command(ptr noundef %11, i32 noundef 50, ptr noundef nonnull %7) #13
  %125 = load ptr, ptr %79, align 4
  %126 = getelementptr inbounds %struct.mxl_base, ptr %125, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %126) #13
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %7) #13
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %101
  %129 = load volatile i32, ptr @jiffies, align 64
  %130 = getelementptr inbounds %struct.mxl, ptr %9, i32 0, i32 8
  store i32 %129, ptr %130, align 4
  br label %131

131:                                              ; preds = %128, %5
  %132 = call i32 @read_status(ptr noundef %0, ptr noundef %4)
  br label %133

133:                                              ; preds = %131, %101, %100
  %134 = phi i32 [ 0, %131 ], [ %124, %101 ], [ -22, %100 ]
  ret i32 %134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @get_algo(ptr nocapture noundef readnone %0) #10 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [24 x i32], align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.mxl, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mxl_base, ptr %8, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %9) #13
  %10 = getelementptr inbounds %struct.mxl, ptr %6, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %11, 8
  %13 = add i32 %12, 1073727160
  %14 = tail call fastcc i32 @write_register(ptr noundef %6, i32 noundef %13, i32 noundef 1)
  %15 = load i32, ptr %10, align 4
  %16 = shl i32 %15, 8
  %17 = add i32 %16, 1073727064
  call fastcc void @read_register_block(ptr noundef %6, i32 noundef %17, i32 noundef 96, ptr noundef nonnull %3)
  %18 = load i32, ptr %10, align 4
  %19 = shl i32 %18, 8
  %20 = add i32 %19, 1073727236
  call fastcc void @read_register_block(ptr noundef %6, i32 noundef %20, i32 noundef 4, ptr noundef nonnull %4)
  %21 = load i32, ptr %10, align 4
  %22 = shl i32 %21, 8
  %23 = add i32 %22, 1073727160
  %24 = call fastcc i32 @write_register(ptr noundef %6, i32 noundef %23, i32 noundef 0)
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %26) #13
  %27 = getelementptr inbounds [24 x i32], ptr %3, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr %4, align 4
  store i32 %30, ptr %1, align 4
  %31 = getelementptr inbounds [24 x i32], ptr %3, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 10
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = getelementptr [11 x i32], ptr @__const.conv_fec.fec2fec, i32 0, i32 %32
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %2
  %38 = phi i32 [ %36, %34 ], [ 0, %2 ]
  %39 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 15
  %41 = load i32, ptr %40, align 4
  switch i32 %41, label %66 [
    i32 4, label %65
    i32 6, label %42
    i32 5, label %49
  ]

42:                                               ; preds = %37
  %43 = getelementptr inbounds [24 x i32], ptr %3, i32 0, i32 22
  %44 = load i32, ptr %43, align 4
  switch i32 %44, label %49 [
    i32 0, label %46
    i32 1, label %45
  ]

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ 0, %45 ], [ 1, %42 ]
  %48 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 13
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %42, %37
  %50 = getelementptr inbounds [24 x i32], ptr %3, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  switch i32 %51, label %56 [
    i32 1, label %53
    i32 2, label %52
  ]

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ 9, %52 ], [ 0, %49 ]
  %55 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %54, ptr %55, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = getelementptr inbounds [24 x i32], ptr %3, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, -1
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = getelementptr inbounds [3 x i32], ptr @switch.table.get_frontend, i32 0, i32 %59
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 14
  store i32 %63, ptr %64, align 4
  br label %65

65:                                               ; preds = %61, %56, %37
  br label %66

66:                                               ; preds = %65, %37
  %67 = phi i32 [ 0, %65 ], [ -22, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #13
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [8 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  store i32 0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.mxl, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mxl_base, ptr %10, i32 0, i32 17
  tail call void @mutex_lock(ptr noundef %11) #13
  %12 = getelementptr inbounds %struct.mxl, ptr %8, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 8
  %15 = add i32 %14, 1073727160
  %16 = tail call fastcc i32 @write_register(ptr noundef %8, i32 noundef %15, i32 noundef 1)
  %17 = load i32, ptr %12, align 4
  %18 = shl i32 %17, 8
  %19 = add i32 %18, 1073727056
  %20 = call fastcc i32 @read_register(ptr noundef %8, i32 noundef %19, ptr noundef nonnull %6)
  %21 = load i32, ptr %12, align 4
  %22 = shl i32 %21, 8
  %23 = add i32 %22, 1073727160
  %24 = call fastcc i32 @write_register(ptr noundef %8, i32 noundef %23, i32 noundef 0)
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %26) #13
  %27 = load i32, ptr %6, align 4
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %28, i32 31, i32 0
  store i32 %29, ptr %1, align 4
  %30 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4
  %31 = getelementptr inbounds %struct.mxl, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mxl_base, ptr %32, i32 0, i32 17
  call void @mutex_lock(ptr noundef %33) #13
  %34 = getelementptr inbounds %struct.mxl, ptr %30, i32 0, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 8
  %37 = add i32 %36, 1073727160
  %38 = call fastcc i32 @write_register(ptr noundef %30, i32 noundef %37, i32 noundef 1) #13
  %39 = load i32, ptr %34, align 4
  %40 = shl i32 %39, 8
  %41 = add i32 %40, 1073727240
  %42 = call fastcc i32 @read_register(ptr noundef %30, i32 noundef %41, ptr noundef nonnull %5) #13
  %43 = load i32, ptr %34, align 4
  %44 = shl i32 %43, 8
  %45 = add i32 %44, 1073727160
  %46 = call fastcc i32 @write_register(ptr noundef %30, i32 noundef %45, i32 noundef 0) #13
  %47 = load ptr, ptr %31, align 4
  %48 = getelementptr inbounds %struct.mxl_base, ptr %47, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %48) #13
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 1, ptr %49, align 1
  %50 = load i32, ptr %5, align 4
  %51 = shl i32 %50, 16
  %52 = ashr exact i32 %51, 16
  %53 = mul nsw i32 %52, 10
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %54, ptr %55, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  %56 = load i32, ptr %1, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %2
  %60 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4
  %61 = getelementptr inbounds %struct.mxl, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.mxl_base, ptr %62, i32 0, i32 17
  call void @mutex_lock(ptr noundef %63) #13
  %64 = getelementptr inbounds %struct.mxl, ptr %60, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = shl i32 %65, 8
  %67 = add i32 %66, 1073727160
  %68 = call fastcc i32 @write_register(ptr noundef %60, i32 noundef %67, i32 noundef 1) #13
  %69 = load i32, ptr %64, align 4
  %70 = shl i32 %69, 8
  %71 = add i32 %70, 1073727088
  %72 = call fastcc i32 @read_register(ptr noundef %60, i32 noundef %71, ptr noundef nonnull %4) #13
  %73 = load i32, ptr %64, align 4
  %74 = shl i32 %73, 8
  %75 = add i32 %74, 1073727160
  %76 = call fastcc i32 @write_register(ptr noundef %60, i32 noundef %75, i32 noundef 0) #13
  %77 = load ptr, ptr %61, align 4
  %78 = getelementptr inbounds %struct.mxl_base, ptr %77, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %78) #13
  %79 = load i32, ptr %4, align 4
  %80 = shl i32 %79, 16
  %81 = ashr exact i32 %80, 16
  %82 = mul nsw i32 %81, 10
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %83, ptr %84, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %85

85:                                               ; preds = %59, %2
  %86 = phi i8 [ 1, %59 ], [ 0, %2 ]
  %87 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 %86, ptr %87, align 1
  %88 = load i32, ptr %1, align 4
  %89 = and i32 %88, 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %148, label %91

91:                                               ; preds = %85
  %92 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #13, !annotation !8
  %93 = getelementptr inbounds %struct.mxl, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.mxl_base, ptr %94, i32 0, i32 17
  call void @mutex_lock(ptr noundef %95) #13
  %96 = getelementptr inbounds %struct.mxl, ptr %92, i32 0, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = shl i32 %97, 8
  %99 = add i32 %98, 1073727160
  %100 = call fastcc i32 @write_register(ptr noundef %92, i32 noundef %99, i32 noundef 1) #13
  %101 = load i32, ptr %96, align 4
  %102 = shl i32 %101, 8
  %103 = add i32 %102, 1073727176
  call fastcc void @read_register_block(ptr noundef %92, i32 noundef %103, i32 noundef 16, ptr noundef nonnull %3) #13
  %104 = load i32, ptr %96, align 4
  %105 = shl i32 %104, 8
  %106 = add i32 %105, 1073727160
  %107 = call fastcc i32 @write_register(ptr noundef %92, i32 noundef %106, i32 noundef 0) #13
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %109 = load i32, ptr %108, align 4
  %110 = and i32 %109, -2
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %123

112:                                              ; preds = %91
  %113 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 3, ptr %113, align 1
  %114 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  store i64 %116, ptr %117, align 1
  %118 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 3, ptr %118, align 1
  %119 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  store i64 %121, ptr %122, align 1
  br label %123

123:                                              ; preds = %112, %91
  %124 = load i32, ptr %96, align 4
  %125 = shl i32 %124, 8
  %126 = add i32 %125, 1073727120
  call fastcc void @read_register_block(ptr noundef %92, i32 noundef %126, i32 noundef 28, ptr noundef nonnull %3) #13
  %127 = load i32, ptr %108, align 4
  %128 = add i32 %127, -4
  %129 = icmp ult i32 %128, 3
  br i1 %129, label %130, label %145

130:                                              ; preds = %123
  %131 = getelementptr inbounds [3 x i32], ptr @switch.table.read_status, i32 0, i32 %128
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds [3 x i32], ptr @switch.table.read_status.22, i32 0, i32 %128
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 3, ptr %135, align 1
  %136 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 %132
  %137 = load i32, ptr %136, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %138, ptr %139, align 1
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %140, align 1
  %141 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 %134
  %142 = load i32, ptr %141, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 %143, ptr %144, align 1
  br label %145

145:                                              ; preds = %130, %123
  %146 = load ptr, ptr %93, align 4
  %147 = getelementptr inbounds %struct.mxl_base, ptr %146, i32 0, i32 17
  call void @mutex_unlock(ptr noundef %147) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %153

148:                                              ; preds = %85
  %149 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %149, align 1
  %150 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %150, align 1
  %151 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 0, ptr %151, align 1
  %152 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 0, ptr %152, align 1
  br label %153

153:                                              ; preds = %148, %145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @send_master_cmd(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #10 {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @read_register_block(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.mxl, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mxl_base, ptr %8, i32 0, i32 19
  %10 = getelementptr inbounds %struct.mxl_base, ptr %8, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %10) #13
  store i8 -5, ptr %9, align 1
  %11 = trunc i32 %2 to i8
  %12 = add i8 %11, 4
  %13 = getelementptr %struct.mxl_base, ptr %8, i32 0, i32 19, i32 1
  store i8 %12, ptr %13, align 1
  %14 = trunc i32 %1 to i8
  %15 = getelementptr %struct.mxl_base, ptr %8, i32 0, i32 19, i32 2
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %1, 8
  %17 = trunc i32 %16 to i8
  %18 = getelementptr %struct.mxl_base, ptr %8, i32 0, i32 19, i32 3
  store i8 %17, ptr %18, align 1
  %19 = lshr i32 %1, 16
  %20 = trunc i32 %19 to i8
  %21 = getelementptr %struct.mxl_base, ptr %8, i32 0, i32 19, i32 4
  store i8 %20, ptr %21, align 1
  %22 = lshr i32 %1, 24
  %23 = trunc i32 %22 to i8
  %24 = getelementptr %struct.mxl_base, ptr %8, i32 0, i32 19, i32 5
  store i8 %23, ptr %24, align 1
  %25 = load ptr, ptr %7, align 4
  %26 = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mxl_base, ptr %25, i32 0, i32 2
  %29 = load i8, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %30 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 6, ptr %30, align 4, !annotation !8
  %31 = zext i8 %29 to i16
  store i16 %31, ptr %6, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %9, ptr %33, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %6, i32 noundef 1) #13
  %35 = icmp eq i32 %34, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  br i1 %35, label %36, label %48

36:                                               ; preds = %4
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr inbounds %struct.mxl_base, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.mxl_base, ptr %37, i32 0, i32 2
  %41 = load i8, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %42 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %42, align 4, !annotation !8
  %43 = zext i8 %41 to i16
  store i16 %43, ptr %5, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 1, ptr %44, align 2
  %45 = trunc i32 %2 to i16
  store i16 %45, ptr %42, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %46, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %5, i32 noundef 1) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  br label %48

48:                                               ; preds = %36, %4
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.mxl_base, ptr %49, i32 0, i32 16
  call void @mutex_unlock(ptr noundef %50) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }

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
