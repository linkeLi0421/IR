; ModuleID = '/llk/IR/drivers/media/dvb-frontends/mb86a20s.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mb86a20s.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb86a20s_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mb86a20s_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mb86a20s_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regdata = type { i8, i8 }
%struct.linear_segments = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.mb86a20s_state = type { ptr, ptr, i32, %struct.dvb_frontend, i32, i32, i8, i32, [3 x i32], i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mb86a20s_config = type { i32, i8, i8 }
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
%struct.list_head = type { ptr, ptr }

@mb86a20s_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Fujitsu mb86A20s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 864000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr null, ptr @mb86a20s_release, ptr null, ptr @mb86a20s_initfe, ptr null, ptr null, ptr null, ptr null, ptr @mb86a20s_tune, ptr @mb86a20s_get_frontend_algo, ptr @mb86a20s_set_frontend, ptr null, ptr null, ptr @mb86a20s_read_status_and_stats, ptr null, ptr @mb86a20s_read_signal_strength_from_cache, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str = private unnamed_addr constant [38 x i8] c"Detected a Fujitsu mb86a20s frontend\0A\00", align 1
@__kstrtab_mb86a20s_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb86a20s_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mb86a20s_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb86a20s_attach to i32), ptr @__kstrtab_mb86a20s_attach, ptr @__kstrtabns_mb86a20s_attach }, section "___ksymtab+mb86a20s_attach", align 4
@__UNIQUE_ID_description249 = internal constant [62 x i8] c"description=DVB Frontend module for Fujitsu mb86A20s hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [29 x i8] c"author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: reg=0x%x (error=%d)\0A\00", align 1
@__func__.mb86a20s_i2c_readreg = private unnamed_addr constant [21 x i8] c"mb86a20s_i2c_readreg\00", align 1
@mb86a20s_init2 = internal global [231 x %struct.regdata] [%struct.regdata { i8 80, i8 -47 }, %struct.regdata { i8 81, i8 34 }, %struct.regdata { i8 57, i8 1 }, %struct.regdata { i8 113, i8 0 }, %struct.regdata { i8 59, i8 33 }, %struct.regdata { i8 60, i8 58 }, %struct.regdata { i8 1, i8 13 }, %struct.regdata { i8 4, i8 8 }, %struct.regdata { i8 5, i8 5 }, %struct.regdata { i8 4, i8 14 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 15 }, %struct.regdata { i8 5, i8 20 }, %struct.regdata { i8 4, i8 11 }, %struct.regdata { i8 5, i8 -116 }, %struct.regdata { i8 4, i8 0 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 1 }, %struct.regdata { i8 5, i8 7 }, %struct.regdata { i8 4, i8 2 }, %struct.regdata { i8 5, i8 15 }, %struct.regdata { i8 4, i8 3 }, %struct.regdata { i8 5, i8 -96 }, %struct.regdata { i8 4, i8 9 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 10 }, %struct.regdata { i8 5, i8 -1 }, %struct.regdata { i8 4, i8 39 }, %struct.regdata { i8 5, i8 100 }, %struct.regdata { i8 4, i8 40 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 30 }, %struct.regdata { i8 5, i8 -1 }, %struct.regdata { i8 4, i8 41 }, %struct.regdata { i8 5, i8 10 }, %struct.regdata { i8 4, i8 50 }, %struct.regdata { i8 5, i8 10 }, %struct.regdata { i8 4, i8 20 }, %struct.regdata { i8 5, i8 2 }, %struct.regdata { i8 4, i8 4 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 5 }, %struct.regdata { i8 5, i8 34 }, %struct.regdata { i8 4, i8 6 }, %struct.regdata { i8 5, i8 14 }, %struct.regdata { i8 4, i8 7 }, %struct.regdata { i8 5, i8 -40 }, %struct.regdata { i8 4, i8 18 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 19 }, %struct.regdata { i8 5, i8 -1 }, %struct.regdata { i8 82, i8 1 }, %struct.regdata { i8 80, i8 -89 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -88 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -87 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -86 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -85 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -84 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -83 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -82 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -81 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 94, i8 7 }, %struct.regdata { i8 80, i8 -36 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -35 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -34 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -33 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -32 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -31 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -80 }, %struct.regdata { i8 81, i8 7 }, %struct.regdata { i8 80, i8 -78 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -77 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -76 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -75 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -74 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -73 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 80 }, %struct.regdata { i8 81, i8 2 }, %struct.regdata { i8 80, i8 81 }, %struct.regdata { i8 81, i8 4 }, %struct.regdata { i8 69, i8 4 }, %struct.regdata { i8 72, i8 4 }, %struct.regdata { i8 80, i8 -43 }, %struct.regdata { i8 81, i8 1 }, %struct.regdata { i8 80, i8 -42 }, %struct.regdata { i8 81, i8 31 }, %struct.regdata { i8 80, i8 -46 }, %struct.regdata { i8 81, i8 3 }, %struct.regdata { i8 80, i8 -41 }, %struct.regdata { i8 81, i8 63 }, %struct.regdata { i8 28, i8 1 }, %struct.regdata { i8 40, i8 6 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 3 }, %struct.regdata { i8 40, i8 7 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 13 }, %struct.regdata { i8 40, i8 8 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 2 }, %struct.regdata { i8 40, i8 9 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 1 }, %struct.regdata { i8 40, i8 10 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 33 }, %struct.regdata { i8 40, i8 11 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 41 }, %struct.regdata { i8 40, i8 12 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 22 }, %struct.regdata { i8 40, i8 13 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 49 }, %struct.regdata { i8 40, i8 14 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 14 }, %struct.regdata { i8 40, i8 15 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 78 }, %struct.regdata { i8 40, i8 16 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 70 }, %struct.regdata { i8 40, i8 17 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 15 }, %struct.regdata { i8 40, i8 18 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 86 }, %struct.regdata { i8 40, i8 19 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 53 }, %struct.regdata { i8 40, i8 20 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 1 }, %struct.regdata { i8 43, i8 -66 }, %struct.regdata { i8 40, i8 21 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 1 }, %struct.regdata { i8 43, i8 -124 }, %struct.regdata { i8 40, i8 22 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 3 }, %struct.regdata { i8 43, i8 -18 }, %struct.regdata { i8 40, i8 23 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 -104 }, %struct.regdata { i8 40, i8 24 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 -97 }, %struct.regdata { i8 40, i8 25 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 7 }, %struct.regdata { i8 43, i8 -78 }, %struct.regdata { i8 40, i8 26 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 6 }, %struct.regdata { i8 43, i8 -62 }, %struct.regdata { i8 40, i8 27 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 7 }, %struct.regdata { i8 43, i8 74 }, %struct.regdata { i8 40, i8 28 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 1 }, %struct.regdata { i8 43, i8 -68 }, %struct.regdata { i8 40, i8 29 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 4 }, %struct.regdata { i8 43, i8 -70 }, %struct.regdata { i8 40, i8 30 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 6 }, %struct.regdata { i8 43, i8 20 }, %struct.regdata { i8 80, i8 30 }, %struct.regdata { i8 81, i8 93 }, %struct.regdata { i8 80, i8 34 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 35 }, %struct.regdata { i8 81, i8 -56 }, %struct.regdata { i8 80, i8 36 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 37 }, %struct.regdata { i8 81, i8 -16 }, %struct.regdata { i8 80, i8 38 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 39 }, %struct.regdata { i8 81, i8 -61 }, %struct.regdata { i8 80, i8 57 }, %struct.regdata { i8 81, i8 2 }, %struct.regdata { i8 80, i8 -43 }, %struct.regdata { i8 81, i8 1 }, %struct.regdata { i8 -48, i8 0 }], align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"mb86a20s: Init failed. Will try again later\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"%s: writereg error (rc == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.mb86a20s_i2c_writereg = private unnamed_addr constant [22 x i8] c"mb86a20s_i2c_writereg\00", align 1
@mb86a20s_subchannel = internal unnamed_addr constant [8 x i8] c"\B0\C0\D0\E0\F0\00\10 ", align 1
@mb86a20s_per_ber_reset = internal unnamed_addr constant [7 x %struct.regdata] [%struct.regdata { i8 83, i8 0 }, %struct.regdata { i8 83, i8 7 }, %struct.regdata { i8 95, i8 0 }, %struct.regdata { i8 95, i8 7 }, %struct.regdata { i8 80, i8 -79 }, %struct.regdata { i8 81, i8 7 }, %struct.regdata { i8 81, i8 0 }], align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s: Can't reset FE statistics (error %d).\0A\00", align 1
@__func__.mb86a20s_reset_counters = private unnamed_addr constant [24 x i8] c"mb86a20s_reset_counters\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: Can't read frontend lock status\0A\00", align 1
@__func__.mb86a20s_read_status_and_stats = private unnamed_addr constant [31 x i8] c"mb86a20s_read_status_and_stats\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: Can't reset VBER registers.\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"%s: Can't get FE TMCC data.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"%s: Can't get FE statistics.\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@mb86a20s_get_segment_count.reg = internal unnamed_addr constant [3 x i8] c"\89\8D\91", align 1
@mb86a20s_get_modulation.reg = internal unnamed_addr constant [3 x i8] c"\86\8A\8E", align 1
@mb86a20s_get_fec.reg = internal unnamed_addr constant [3 x i8] c"\87\8B\8F", align 1
@mb86a20s_get_interleaving.interleaving = internal unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], align 4
@mb86a20s_get_interleaving.reg = internal unnamed_addr constant [3 x i8] c"\88\8C\90", align 1
@isdbt_rate = internal unnamed_addr constant [3 x [5 x [4 x i32]]] [[5 x [4 x i32]] [[4 x i32] [i32 280850, i32 312060, i32 330420, i32 340430], [4 x i32] [i32 374470, i32 416080, i32 440560, i32 453910], [4 x i32] [i32 421280, i32 468090, i32 495630, i32 510650], [4 x i32] [i32 468090, i32 520100, i32 550700, i32 567390], [4 x i32] [i32 491500, i32 546110, i32 578230, i32 595760]], [5 x [4 x i32]] [[4 x i32] [i32 561710, i32 624130, i32 660840, i32 680870], [4 x i32] [i32 748950, i32 832170, i32 881120, i32 907820], [4 x i32] [i32 842570, i32 936190, i32 991260, i32 1021300], [4 x i32] [i32 936190, i32 1040210, i32 1101400, i32 1134780], [4 x i32] [i32 983000, i32 1092220, i32 1156470, i32 1191520]], [5 x [4 x i32]] [[4 x i32] [i32 842570, i32 936190, i32 991260, i32 1021300], [4 x i32] [i32 1123430, i32 1248260, i32 1321680, i32 1361740], [4 x i32] [i32 1263860, i32 1404290, i32 1486900, i32 1531950], [4 x i32] [i32 1404290, i32 1560320, i32 1652110, i32 1702170], [4 x i32] [i32 1474500, i32 1638340, i32 1734710, i32 1787280]]], align 4
@.str.9 = private unnamed_addr constant [44 x i8] c"%s: Can't get BER for layer %c (error %d).\0A\00", align 1
@__func__.mb86a20s_get_stats = private unnamed_addr constant [19 x i8] c"mb86a20s_get_stats\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"%s: Can't get PER for layer %c (error %d).\0A\00", align 1
@cnr_to_db_table = internal unnamed_addr constant [31 x %struct.linear_segments] [%struct.linear_segments { i32 19648, i32 0 }, %struct.linear_segments { i32 18187, i32 1000 }, %struct.linear_segments { i32 16534, i32 2000 }, %struct.linear_segments { i32 14823, i32 3000 }, %struct.linear_segments { i32 13161, i32 4000 }, %struct.linear_segments { i32 11622, i32 5000 }, %struct.linear_segments { i32 10279, i32 6000 }, %struct.linear_segments { i32 9089, i32 7000 }, %struct.linear_segments { i32 8042, i32 8000 }, %struct.linear_segments { i32 7137, i32 9000 }, %struct.linear_segments { i32 6342, i32 10000 }, %struct.linear_segments { i32 5641, i32 11000 }, %struct.linear_segments { i32 5030, i32 12000 }, %struct.linear_segments { i32 4474, i32 13000 }, %struct.linear_segments { i32 3988, i32 14000 }, %struct.linear_segments { i32 3556, i32 15000 }, %struct.linear_segments { i32 3180, i32 16000 }, %struct.linear_segments { i32 2841, i32 17000 }, %struct.linear_segments { i32 2541, i32 18000 }, %struct.linear_segments { i32 2276, i32 19000 }, %struct.linear_segments { i32 2038, i32 20000 }, %struct.linear_segments { i32 1800, i32 21000 }, %struct.linear_segments { i32 1625, i32 22000 }, %struct.linear_segments { i32 1462, i32 23000 }, %struct.linear_segments { i32 1324, i32 24000 }, %struct.linear_segments { i32 1175, i32 25000 }, %struct.linear_segments { i32 1063, i32 26000 }, %struct.linear_segments { i32 980, i32 27000 }, %struct.linear_segments { i32 907, i32 28000 }, %struct.linear_segments { i32 840, i32 29000 }, %struct.linear_segments { i32 788, i32 30000 }], align 4
@cnr_qpsk_table = internal unnamed_addr constant [31 x %struct.linear_segments] [%struct.linear_segments { i32 2834176, i32 0 }, %struct.linear_segments { i32 2683648, i32 1000 }, %struct.linear_segments { i32 2536960, i32 2000 }, %struct.linear_segments { i32 2391808, i32 3000 }, %struct.linear_segments { i32 2133248, i32 4000 }, %struct.linear_segments { i32 1906176, i32 5000 }, %struct.linear_segments { i32 1666560, i32 6000 }, %struct.linear_segments { i32 1422080, i32 7000 }, %struct.linear_segments { i32 1189632, i32 8000 }, %struct.linear_segments { i32 976384, i32 9000 }, %struct.linear_segments { i32 790272, i32 10000 }, %struct.linear_segments { i32 633344, i32 11000 }, %struct.linear_segments { i32 505600, i32 12000 }, %struct.linear_segments { i32 402944, i32 13000 }, %struct.linear_segments { i32 320768, i32 14000 }, %struct.linear_segments { i32 255488, i32 15000 }, %struct.linear_segments { i32 204032, i32 16000 }, %struct.linear_segments { i32 163072, i32 17000 }, %struct.linear_segments { i32 130304, i32 18000 }, %struct.linear_segments { i32 105216, i32 19000 }, %struct.linear_segments { i32 83456, i32 20000 }, %struct.linear_segments { i32 65024, i32 21000 }, %struct.linear_segments { i32 52480, i32 22000 }, %struct.linear_segments { i32 42752, i32 23000 }, %struct.linear_segments { i32 34560, i32 24000 }, %struct.linear_segments { i32 27136, i32 25000 }, %struct.linear_segments { i32 22016, i32 26000 }, %struct.linear_segments { i32 18432, i32 27000 }, %struct.linear_segments { i32 15616, i32 28000 }, %struct.linear_segments { i32 13312, i32 29000 }, %struct.linear_segments { i32 11520, i32 30000 }], align 4
@cnr_16qam_table = internal unnamed_addr constant [31 x %struct.linear_segments] [%struct.linear_segments { i32 5314816, i32 0 }, %struct.linear_segments { i32 5219072, i32 1000 }, %struct.linear_segments { i32 5118720, i32 2000 }, %struct.linear_segments { i32 4998912, i32 3000 }, %struct.linear_segments { i32 4875520, i32 4000 }, %struct.linear_segments { i32 4736000, i32 5000 }, %struct.linear_segments { i32 4604160, i32 6000 }, %struct.linear_segments { i32 4458752, i32 7000 }, %struct.linear_segments { i32 4300288, i32 8000 }, %struct.linear_segments { i32 4092928, i32 9000 }, %struct.linear_segments { i32 3836160, i32 10000 }, %struct.linear_segments { i32 3521024, i32 11000 }, %struct.linear_segments { i32 3155968, i32 12000 }, %struct.linear_segments { i32 2756864, i32 13000 }, %struct.linear_segments { i32 2347008, i32 14000 }, %struct.linear_segments { i32 1955072, i32 15000 }, %struct.linear_segments { i32 1593600, i32 16000 }, %struct.linear_segments { i32 1297920, i32 17000 }, %struct.linear_segments { i32 1043968, i32 18000 }, %struct.linear_segments { i32 839680, i32 19000 }, %struct.linear_segments { i32 672256, i32 20000 }, %struct.linear_segments { i32 523008, i32 21000 }, %struct.linear_segments { i32 424704, i32 22000 }, %struct.linear_segments { i32 345088, i32 23000 }, %struct.linear_segments { i32 280064, i32 24000 }, %struct.linear_segments { i32 221440, i32 25000 }, %struct.linear_segments { i32 179712, i32 26000 }, %struct.linear_segments { i32 151040, i32 27000 }, %struct.linear_segments { i32 128512, i32 28000 }, %struct.linear_segments { i32 110080, i32 29000 }, %struct.linear_segments { i32 95744, i32 30000 }], align 4
@cnr_64qam_table = internal unnamed_addr constant [31 x %struct.linear_segments] [%struct.linear_segments { i32 3922688, i32 0 }, %struct.linear_segments { i32 3920384, i32 1000 }, %struct.linear_segments { i32 3902720, i32 2000 }, %struct.linear_segments { i32 3894784, i32 3000 }, %struct.linear_segments { i32 3882496, i32 4000 }, %struct.linear_segments { i32 3872768, i32 5000 }, %struct.linear_segments { i32 3858944, i32 6000 }, %struct.linear_segments { i32 3851520, i32 7000 }, %struct.linear_segments { i32 3838976, i32 8000 }, %struct.linear_segments { i32 3829248, i32 9000 }, %struct.linear_segments { i32 3818240, i32 10000 }, %struct.linear_segments { i32 3806976, i32 11000 }, %struct.linear_segments { i32 3791872, i32 12000 }, %struct.linear_segments { i32 3767040, i32 13000 }, %struct.linear_segments { i32 3720960, i32 14000 }, %struct.linear_segments { i32 3637504, i32 15000 }, %struct.linear_segments { i32 3498496, i32 16000 }, %struct.linear_segments { i32 3296000, i32 17000 }, %struct.linear_segments { i32 3031040, i32 18000 }, %struct.linear_segments { i32 2715392, i32 19000 }, %struct.linear_segments { i32 2362624, i32 20000 }, %struct.linear_segments { i32 1963264, i32 21000 }, %struct.linear_segments { i32 1649664, i32 22000 }, %struct.linear_segments { i32 1366784, i32 23000 }, %struct.linear_segments { i32 1120768, i32 24000 }, %struct.linear_segments { i32 890880, i32 25000 }, %struct.linear_segments { i32 723456, i32 26000 }, %struct.linear_segments { i32 612096, i32 27000 }, %struct.linear_segments { i32 518912, i32 28000 }, %struct.linear_segments { i32 448256, i32 29000 }, %struct.linear_segments { i32 388864, i32 30000 }], align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_mb86a20s_attach], section "llvm.metadata"
@switch.table.mb86a20s_read_status_and_stats = private unnamed_addr constant [4 x i32] [i32 12, i32 0, i32 1, i32 3], align 4
@switch.table.mb86a20s_read_status_and_stats.11 = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], align 4
@switch.table.mb86a20s_read_status_and_stats.12 = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 0, i32 3, i32 0, i32 4], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mb86a20s_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1088) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mb86a20s_state, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 4
  store ptr %1, ptr %7, align 8
  %11 = getelementptr inbounds %struct.mb86a20s_state, ptr %7, i32 0, i32 3, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %11, ptr noundef nonnull align 4 dereferenceable(544) @mb86a20s_ops, i32 544, i1 false)
  %12 = getelementptr inbounds %struct.mb86a20s_state, ptr %7, i32 0, i32 3, i32 3
  store ptr %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mb86a20s_config, ptr %0, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %15, i8 0, i32 16, i1 false) #11, !annotation !8
  %16 = zext i8 %14 to i16
  store i16 %16, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %17, align 2
  store i16 1, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %16, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %20, align 2
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %22, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #11
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %32, label %25

25:                                               ; preds = %9
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds %struct.i2c_adapter, ptr %26, i32 0, i32 9
  %28 = load i8, ptr %3, align 1
  %29 = zext i8 %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %29, i32 noundef %23) #12
  %30 = icmp slt i32 %23, 0
  %31 = select i1 %30, i32 %23, i32 -5
  br label %35

32:                                               ; preds = %9
  %33 = load i8, ptr %4, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i32 [ %31, %25 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 19
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void @kfree(ptr noundef nonnull %7) #11
  br label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.mb86a20s_state, ptr %7, i32 0, i32 3
  %42 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str) #12
  br label %43

43:                                               ; preds = %40, %39, %2
  %44 = phi ptr [ null, %39 ], [ %41, %40 ], [ null, %2 ]
  ret ptr %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mb86a20s_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a20s_initfe(ptr noundef %0) #0 {
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
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %1
  %26 = tail call i32 %23(ptr noundef %0, i32 noundef 0) #11
  br label %27

27:                                               ; preds = %25, %1
  %28 = getelementptr inbounds %struct.mb86a20s_state, ptr %21, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mb86a20s_config, ptr %29, i32 0, i32 1
  %31 = load i8, ptr %30, align 4
  %32 = getelementptr inbounds i8, ptr %18, i32 1
  %33 = getelementptr inbounds i8, ptr %19, i32 4
  %34 = zext i8 %31 to i16
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i8 112, ptr %18, align 2
  store i8 15, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 2, ptr %33, align 4, !annotation !8
  store i16 %34, ptr %19, align 4
  store i16 0, ptr %35, align 2
  store ptr %18, ptr %36, align 4
  %37 = load ptr, ptr %21, align 4
  %38 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %19, i32 noundef 1) #11
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  br label %45

41:                                               ; preds = %27
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %38, i32 noundef 112, i32 noundef 15) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %44 = icmp slt i32 %38, 0
  br i1 %44, label %329, label %45

45:                                               ; preds = %41, %40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i8 112, ptr %18, align 2
  store i8 -1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 2, ptr %33, align 4, !annotation !8
  store i16 %34, ptr %19, align 4
  store i16 0, ptr %35, align 2
  store ptr %18, ptr %36, align 4
  %46 = load ptr, ptr %21, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %19, i32 noundef 1) #11
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %21, align 4
  %51 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %47, i32 noundef 112, i32 noundef 255) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %52 = icmp slt i32 %47, 0
  br i1 %52, label %329, label %54

53:                                               ; preds = %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  br label %54

54:                                               ; preds = %53, %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i8 8, ptr %18, align 2
  store i8 1, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 2, ptr %33, align 4, !annotation !8
  store i16 %34, ptr %19, align 4
  store i16 0, ptr %35, align 2
  store ptr %18, ptr %36, align 4
  %55 = load ptr, ptr %21, align 4
  %56 = call i32 @i2c_transfer(ptr noundef %55, ptr noundef nonnull %19, i32 noundef 1) #11
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %21, align 4
  %60 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %56, i32 noundef 8, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %61 = icmp slt i32 %56, 0
  br i1 %61, label %329, label %63

62:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  br label %63

63:                                               ; preds = %62, %58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i8 80, ptr %18, align 2
  store i8 -47, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 2, ptr %33, align 4, !annotation !8
  store i16 %34, ptr %19, align 4
  store i16 0, ptr %35, align 2
  store ptr %18, ptr %36, align 4
  %64 = load ptr, ptr %21, align 4
  %65 = call i32 @i2c_transfer(ptr noundef %64, ptr noundef nonnull %19, i32 noundef 1) #11
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %21, align 4
  %69 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %65, i32 noundef 80, i32 noundef 209) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %70 = icmp slt i32 %65, 0
  br i1 %70, label %329, label %72

71:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  br label %72

72:                                               ; preds = %71, %67
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i8 81, ptr %18, align 2
  store i8 32, ptr %32, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 2, ptr %33, align 4, !annotation !8
  store i16 %34, ptr %19, align 4
  store i16 0, ptr %35, align 2
  store ptr %18, ptr %36, align 4
  %73 = load ptr, ptr %21, align 4
  %74 = call i32 @i2c_transfer(ptr noundef %73, ptr noundef nonnull %19, i32 noundef 1) #11
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %21, align 4
  %78 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %74, i32 noundef 81, i32 noundef 32) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %79 = icmp slt i32 %74, 0
  br i1 %79, label %329, label %81

80:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  br label %81

81:                                               ; preds = %80, %76
  %82 = getelementptr inbounds %struct.mb86a20s_state, ptr %21, i32 0, i32 6
  %83 = load i8, ptr %82, align 4, !range !9
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %84, i8 62, i8 58
  %86 = load ptr, ptr %28, align 4
  %87 = getelementptr inbounds %struct.mb86a20s_config, ptr %86, i32 0, i32 1
  %88 = load i8, ptr %87, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #11
  store i8 9, ptr %16, align 2
  %89 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 %85, ptr %89, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  %90 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %90, align 4, !annotation !8
  %91 = zext i8 %88 to i16
  store i16 %91, ptr %17, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %93, align 4
  %94 = load ptr, ptr %21, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %94, ptr noundef nonnull %17, i32 noundef 1) #11
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  br label %103

98:                                               ; preds = %81
  %99 = load ptr, ptr %21, align 4
  %100 = getelementptr inbounds %struct.i2c_adapter, ptr %99, i32 0, i32 9
  %101 = zext i8 %85 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %95, i32 noundef 9, i32 noundef %101) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  %102 = icmp slt i32 %95, 0
  br i1 %102, label %329, label %103

103:                                              ; preds = %98, %97
  %104 = getelementptr inbounds %struct.mb86a20s_state, ptr %21, i32 0, i32 5
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i8
  %108 = load ptr, ptr %28, align 4
  %109 = getelementptr inbounds %struct.mb86a20s_config, ptr %108, i32 0, i32 1
  %110 = load i8, ptr %109, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #11
  store i8 57, ptr %14, align 2
  %111 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 %107, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #11
  %112 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %112, align 4, !annotation !8
  %113 = zext i8 %110 to i16
  store i16 %113, ptr %15, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %114, align 2
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %115, align 4
  %116 = load ptr, ptr %21, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %15, i32 noundef 1) #11
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  br label %125

120:                                              ; preds = %103
  %121 = load ptr, ptr %21, align 4
  %122 = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 9
  %123 = zext i1 %106 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %117, i32 noundef 57, i32 noundef %123) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #11
  %124 = icmp slt i32 %117, 0
  br i1 %124, label %329, label %125

125:                                              ; preds = %120, %119
  %126 = load ptr, ptr %28, align 4
  %127 = getelementptr inbounds %struct.mb86a20s_config, ptr %126, i32 0, i32 1
  %128 = load i8, ptr %127, align 4
  %129 = load i32, ptr %104, align 4
  %130 = trunc i32 %129 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #11
  store i8 113, ptr %12, align 2
  %131 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %130, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #11
  %132 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 2, ptr %132, align 4, !annotation !8
  %133 = zext i8 %128 to i16
  store i16 %133, ptr %13, align 4
  %134 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %134, align 2
  %135 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %135, align 4
  %136 = load ptr, ptr %21, align 4
  %137 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %13, i32 noundef 1) #11
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  br label %145

140:                                              ; preds = %125
  %141 = load ptr, ptr %21, align 4
  %142 = getelementptr inbounds %struct.i2c_adapter, ptr %141, i32 0, i32 9
  %143 = and i32 %129, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %137, i32 noundef 113, i32 noundef %143) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #11
  %144 = icmp slt i32 %137, 0
  br i1 %144, label %329, label %145

145:                                              ; preds = %140, %139
  %146 = getelementptr inbounds %struct.mb86a20s_state, ptr %21, i32 0, i32 7
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %168, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %28, align 4
  %151 = getelementptr inbounds %struct.mb86a20s_config, ptr %150, i32 0, i32 1
  %152 = load i8, ptr %151, align 4
  %153 = trunc i32 %147 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #11
  store i8 68, ptr %10, align 2
  %154 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %153, ptr %154, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #11
  %155 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %155, align 4, !annotation !8
  %156 = zext i8 %152 to i16
  store i16 %156, ptr %11, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %157, align 2
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %158, align 4
  %159 = load ptr, ptr %21, align 4
  %160 = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %11, i32 noundef 1) #11
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #11
  br label %168

163:                                              ; preds = %149
  %164 = load ptr, ptr %21, align 4
  %165 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 9
  %166 = and i32 %147, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %160, i32 noundef 68, i32 noundef %166) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #11
  %167 = icmp slt i32 %160, 0
  br i1 %167, label %329, label %168

168:                                              ; preds = %163, %162, %145
  %169 = load ptr, ptr %28, align 4
  %170 = load i32, ptr %169, align 4
  %171 = icmp eq i32 %170, 0
  %172 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.mb86a20s_state, ptr %21, i32 0, i32 4
  %177 = call i32 %173(ptr noundef %0, ptr noundef %176) #11
  br label %178

178:                                              ; preds = %175, %168
  %179 = getelementptr inbounds %struct.mb86a20s_state, ptr %21, i32 0, i32 4
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 3300000, ptr %179, align 4
  br label %183

183:                                              ; preds = %182, %178
  %184 = phi i32 [ 3300000, %182 ], [ %180, %178 ]
  %185 = zext i32 %184 to i64
  %186 = shl i64 %185, 34
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %194, label %188, !prof !10

188:                                              ; preds = %183
  %189 = mul i32 %170, 63
  %190 = select i1 %171, i32 2051999964, i32 %189
  %191 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %190, i64 %186) #13, !srcloc !11
  %192 = extractvalue { i64, i64 } %191, 1
  %193 = sub i64 33554432, %192
  br label %194

194:                                              ; preds = %188, %183
  %195 = phi i64 [ %193, %188 ], [ 33554432, %183 ]
  %196 = load ptr, ptr %28, align 4
  %197 = getelementptr inbounds %struct.mb86a20s_config, ptr %196, i32 0, i32 1
  %198 = load i8, ptr %197, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i8 40, ptr %8, align 2
  %199 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 42, ptr %199, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  %200 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %200, align 4, !annotation !8
  %201 = zext i8 %198 to i16
  store i16 %201, ptr %9, align 4
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %202, align 2
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %203, align 4
  %204 = load ptr, ptr %21, align 4
  %205 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %9, i32 noundef 1) #11
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %208

207:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  br label %212

208:                                              ; preds = %194
  %209 = load ptr, ptr %21, align 4
  %210 = getelementptr inbounds %struct.i2c_adapter, ptr %209, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %210, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %205, i32 noundef 40, i32 noundef 42) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  %211 = icmp slt i32 %205, 0
  br i1 %211, label %329, label %212

212:                                              ; preds = %208, %207
  %213 = load ptr, ptr %28, align 4
  %214 = getelementptr inbounds %struct.mb86a20s_config, ptr %213, i32 0, i32 1
  %215 = load i8, ptr %214, align 4
  %216 = lshr i64 %195, 16
  %217 = trunc i64 %216 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i8 41, ptr %6, align 2
  %218 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %217, ptr %218, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %219 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %219, align 4, !annotation !8
  %220 = zext i8 %215 to i16
  store i16 %220, ptr %7, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %221, align 2
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %222, align 4
  %223 = load ptr, ptr %21, align 4
  %224 = call i32 @i2c_transfer(ptr noundef %223, ptr noundef nonnull %7, i32 noundef 1) #11
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %227

226:                                              ; preds = %212
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %233

227:                                              ; preds = %212
  %228 = load ptr, ptr %21, align 4
  %229 = getelementptr inbounds %struct.i2c_adapter, ptr %228, i32 0, i32 9
  %230 = trunc i64 %216 to i32
  %231 = and i32 %230, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %229, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %224, i32 noundef 41, i32 noundef %231) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  %232 = icmp slt i32 %224, 0
  br i1 %232, label %329, label %233

233:                                              ; preds = %227, %226
  %234 = load ptr, ptr %28, align 4
  %235 = getelementptr inbounds %struct.mb86a20s_config, ptr %234, i32 0, i32 1
  %236 = load i8, ptr %235, align 4
  %237 = lshr i64 %195, 8
  %238 = trunc i64 %237 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 42, ptr %4, align 2
  %239 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %238, ptr %239, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %240 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %240, align 4, !annotation !8
  %241 = zext i8 %236 to i16
  store i16 %241, ptr %5, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %242, align 2
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %243, align 4
  %244 = load ptr, ptr %21, align 4
  %245 = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %5, i32 noundef 1) #11
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %248

247:                                              ; preds = %233
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %254

248:                                              ; preds = %233
  %249 = load ptr, ptr %21, align 4
  %250 = getelementptr inbounds %struct.i2c_adapter, ptr %249, i32 0, i32 9
  %251 = trunc i64 %237 to i32
  %252 = and i32 %251, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %250, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %245, i32 noundef 42, i32 noundef %252) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  %253 = icmp slt i32 %245, 0
  br i1 %253, label %329, label %254

254:                                              ; preds = %248, %247
  %255 = load ptr, ptr %28, align 4
  %256 = getelementptr inbounds %struct.mb86a20s_config, ptr %255, i32 0, i32 1
  %257 = load i8, ptr %256, align 4
  %258 = trunc i64 %195 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i8 43, ptr %2, align 2
  %259 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %258, ptr %259, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %260 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %260, align 4, !annotation !8
  %261 = zext i8 %257 to i16
  store i16 %261, ptr %3, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %262, align 2
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %263, align 4
  %264 = load ptr, ptr %21, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %3, i32 noundef 1) #11
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %268

267:                                              ; preds = %254
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %274

268:                                              ; preds = %254
  %269 = load ptr, ptr %21, align 4
  %270 = getelementptr inbounds %struct.i2c_adapter, ptr %269, i32 0, i32 9
  %271 = trunc i64 %195 to i32
  %272 = and i32 %271, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %270, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %265, i32 noundef 43, i32 noundef %272) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %273 = icmp slt i32 %265, 0
  br i1 %273, label %329, label %274

274:                                              ; preds = %268, %267
  %275 = load i32, ptr %179, align 4
  %276 = mul i32 %275, 1677721600
  %277 = zext i32 %276 to i64
  %278 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6284526147088855387, i64 %277) #13, !srcloc !12
  %279 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6284526147088855387, i64 %277, i64 %278, i32 0) #13, !srcloc !13
  %280 = extractvalue { i64, i32 } %279, 0
  %281 = lshr i64 %280, 30
  %282 = load ptr, ptr %28, align 4
  %283 = getelementptr inbounds %struct.mb86a20s_config, ptr %282, i32 0, i32 1
  %284 = load i8, ptr %283, align 4
  %285 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %21, i8 noundef zeroext %284, i8 noundef zeroext 40, i8 noundef zeroext 32)
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %329, label %287

287:                                              ; preds = %274
  %288 = load ptr, ptr %28, align 4
  %289 = getelementptr inbounds %struct.mb86a20s_config, ptr %288, i32 0, i32 1
  %290 = load i8, ptr %289, align 4
  %291 = lshr i64 %280, 46
  %292 = trunc i64 %291 to i8
  %293 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %21, i8 noundef zeroext %290, i8 noundef zeroext 41, i8 noundef zeroext %292)
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %329, label %295

295:                                              ; preds = %287
  %296 = load ptr, ptr %28, align 4
  %297 = getelementptr inbounds %struct.mb86a20s_config, ptr %296, i32 0, i32 1
  %298 = load i8, ptr %297, align 4
  %299 = lshr i64 %280, 38
  %300 = trunc i64 %299 to i8
  %301 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %21, i8 noundef zeroext %298, i8 noundef zeroext 42, i8 noundef zeroext %300)
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %329, label %303

303:                                              ; preds = %295
  %304 = load ptr, ptr %28, align 4
  %305 = getelementptr inbounds %struct.mb86a20s_config, ptr %304, i32 0, i32 1
  %306 = load i8, ptr %305, align 4
  %307 = trunc i64 %281 to i8
  %308 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %21, i8 noundef zeroext %306, i8 noundef zeroext 43, i8 noundef zeroext %307)
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %329, label %310

310:                                              ; preds = %303
  %311 = load ptr, ptr %28, align 4
  %312 = getelementptr inbounds %struct.mb86a20s_config, ptr %311, i32 0, i32 2
  %313 = load i8, ptr %312, align 1, !range !9
  %314 = getelementptr inbounds %struct.mb86a20s_config, ptr %311, i32 0, i32 1
  %315 = load i8, ptr %314, align 4
  %316 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %21, i8 noundef zeroext %315, i8 noundef zeroext 80, i8 noundef zeroext -43)
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %329, label %318

318:                                              ; preds = %310
  %319 = load ptr, ptr %28, align 4
  %320 = getelementptr inbounds %struct.mb86a20s_config, ptr %319, i32 0, i32 1
  %321 = load i8, ptr %320, align 4
  %322 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %21, i8 noundef zeroext %321, i8 noundef zeroext 81, i8 noundef zeroext %313)
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %318
  %325 = load ptr, ptr %28, align 4
  %326 = getelementptr inbounds %struct.mb86a20s_config, ptr %325, i32 0, i32 1
  %327 = load i8, ptr %326, align 4
  %328 = call fastcc i32 @mb86a20s_i2c_writeregdata(ptr noundef %21, i8 noundef zeroext %327, ptr noundef nonnull @mb86a20s_init2, i32 noundef 231)
  br label %329

329:                                              ; preds = %324, %318, %310, %303, %295, %287, %274, %268, %248, %227, %208, %163, %140, %120, %98, %76, %67, %58, %49, %41
  %330 = phi i32 [ %95, %98 ], [ %117, %120 ], [ %137, %140 ], [ %160, %163 ], [ %205, %208 ], [ %224, %227 ], [ %245, %248 ], [ %265, %268 ], [ %285, %274 ], [ %293, %287 ], [ %301, %295 ], [ %308, %303 ], [ %316, %310 ], [ %322, %318 ], [ %328, %324 ], [ %38, %41 ], [ %47, %49 ], [ %56, %58 ], [ %65, %67 ], [ %74, %76 ]
  %331 = load ptr, ptr %22, align 4
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %329
  %334 = call i32 %331(ptr noundef %0, i32 noundef 1) #11
  br label %335

335:                                              ; preds = %333, %329
  %336 = icmp slt i32 %330, 0
  %337 = getelementptr inbounds %struct.mb86a20s_state, ptr %21, i32 0, i32 10
  br i1 %336, label %338, label %341

338:                                              ; preds = %335
  store i8 1, ptr %337, align 4
  %339 = load ptr, ptr %21, align 4
  %340 = getelementptr inbounds %struct.i2c_adapter, ptr %339, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %340, ptr noundef nonnull @.str.2) #12
  br label %342

341:                                              ; preds = %335
  store i8 0, ptr %337, align 4
  br label %342

342:                                              ; preds = %341, %338
  ret i32 %330
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a20s_tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef readnone %3, ptr nocapture noundef %4) #0 {
  br i1 %1, label %6, label %8

6:                                                ; preds = %5
  %7 = tail call i32 @mb86a20s_set_frontend(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i32 [ %7, %6 ], [ 0, %5 ]
  %10 = and i32 %2, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 @mb86a20s_read_status_and_stats(ptr noundef %0, ptr noundef %4)
  br label %14

14:                                               ; preds = %12, %8
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mb86a20s_get_frontend_algo(ptr nocapture noundef readnone %0) #7 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a20s_set_frontend(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca %struct.i2c_msg, align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #11
  store i32 0, ptr %22, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  %26 = load i8, ptr %25, align 4
  switch i8 %26, label %30 [
    i8 0, label %27
    i8 1, label %28
  ]

27:                                               ; preds = %1
  store i8 7, ptr %25, align 4
  br label %30

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.mb86a20s_state, ptr %24, i32 0, i32 5
  store i32 2, ptr %29, align 4
  br label %37

30:                                               ; preds = %27, %1
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 17
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.mb86a20s_state, ptr %24, i32 0, i32 5
  br i1 %33, label %36, label %35

35:                                               ; preds = %30
  store i32 1, ptr %34, align 4
  br label %37

36:                                               ; preds = %30
  store i32 0, ptr %34, align 4
  br label %37

37:                                               ; preds = %36, %35, %28
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.mb86a20s_state, ptr %24, i32 0, i32 6
  store i8 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 18
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 19
  %48 = load i8, ptr %47, align 2
  %49 = icmp ugt i8 %48, 7
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i8 0, ptr %47, align 2
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8 [ 0, %50 ], [ %48, %46 ]
  %53 = zext i8 %52 to i32
  %54 = getelementptr [8 x i8], ptr @mb86a20s_subchannel, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  br label %57

57:                                               ; preds = %51, %37
  %58 = phi i32 [ %56, %51 ], [ 0, %37 ]
  %59 = getelementptr inbounds %struct.mb86a20s_state, ptr %24, i32 0, i32 7
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = tail call i32 %61(ptr noundef %0, i32 noundef 1) #11
  br label %65

65:                                               ; preds = %63, %57
  %66 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = tail call i32 %67(ptr noundef %0) #11
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 11
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = call i32 %70(ptr noundef %0, ptr noundef nonnull %22) #11
  br label %74

74:                                               ; preds = %72, %65
  %75 = call i32 @mb86a20s_initfe(ptr noundef %0)
  %76 = load ptr, ptr %60, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = call i32 %76(ptr noundef %0, i32 noundef 0) #11
  br label %80

80:                                               ; preds = %78, %74
  %81 = getelementptr inbounds %struct.mb86a20s_state, ptr %24, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.mb86a20s_config, ptr %82, i32 0, i32 1
  %84 = load i8, ptr %83, align 4
  %85 = getelementptr inbounds i8, ptr %20, i32 1
  %86 = getelementptr inbounds i8, ptr %21, i32 4
  %87 = zext i8 %84 to i16
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #11
  store i8 112, ptr %20, align 2
  store i8 -16, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store i32 2, ptr %86, align 4, !annotation !8
  store i16 %87, ptr %21, align 4
  store i16 0, ptr %88, align 2
  store ptr %20, ptr %89, align 4
  %90 = load ptr, ptr %24, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %21, i32 noundef 1) #11
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  br label %98

94:                                               ; preds = %80
  %95 = load ptr, ptr %24, align 4
  %96 = getelementptr inbounds %struct.i2c_adapter, ptr %95, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %91, i32 noundef 112, i32 noundef 240) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  %97 = icmp slt i32 %91, 0
  br i1 %97, label %126, label %98

98:                                               ; preds = %94, %93
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #11
  store i8 112, ptr %20, align 2
  store i8 -1, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store i32 2, ptr %86, align 4, !annotation !8
  store i16 %87, ptr %21, align 4
  store i16 0, ptr %88, align 2
  store ptr %20, ptr %89, align 4
  %99 = load ptr, ptr %24, align 4
  %100 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %21, i32 noundef 1) #11
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %24, align 4
  %104 = getelementptr inbounds %struct.i2c_adapter, ptr %103, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %100, i32 noundef 112, i32 noundef 255) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  %105 = icmp slt i32 %100, 0
  br i1 %105, label %126, label %107

106:                                              ; preds = %98
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  br label %107

107:                                              ; preds = %106, %102
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #11
  store i8 8, ptr %20, align 2
  store i8 1, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store i32 2, ptr %86, align 4, !annotation !8
  store i16 %87, ptr %21, align 4
  store i16 0, ptr %88, align 2
  store ptr %20, ptr %89, align 4
  %108 = load ptr, ptr %24, align 4
  %109 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %21, i32 noundef 1) #11
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %24, align 4
  %113 = getelementptr inbounds %struct.i2c_adapter, ptr %112, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %109, i32 noundef 8, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  %114 = icmp slt i32 %109, 0
  br i1 %114, label %126, label %116

115:                                              ; preds = %107
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  br label %116

116:                                              ; preds = %115, %111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #11
  store i8 8, ptr %20, align 2
  store i8 0, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #11
  store i32 2, ptr %86, align 4, !annotation !8
  store i16 %87, ptr %21, align 4
  store i16 0, ptr %88, align 2
  store ptr %20, ptr %89, align 4
  %117 = load ptr, ptr %24, align 4
  %118 = call i32 @i2c_transfer(ptr noundef %117, ptr noundef nonnull %21, i32 noundef 1) #11
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %24, align 4
  %122 = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %118, i32 noundef 8, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  %123 = icmp slt i32 %118, 0
  br i1 %123, label %126, label %125

124:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #11
  br label %125

125:                                              ; preds = %124, %120
  br label %126

126:                                              ; preds = %125, %120, %111, %102, %94
  %127 = phi i32 [ %91, %94 ], [ %100, %102 ], [ %109, %111 ], [ %118, %120 ], [ 0, %125 ]
  %128 = load ptr, ptr %23, align 4
  %129 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %130 = getelementptr inbounds %struct.mb86a20s_state, ptr %128, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = load i32, ptr %129, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(259) %135, i8 0, i64 259, i1 false) #11
  store i32 %132, ptr %130, align 4
  br label %136

136:                                              ; preds = %134, %126
  %137 = getelementptr inbounds %struct.mb86a20s_state, ptr %128, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.mb86a20s_config, ptr %138, i32 0, i32 1
  %140 = load i8, ptr %139, align 4
  %141 = getelementptr inbounds i8, ptr %18, i32 1
  %142 = getelementptr inbounds i8, ptr %19, i32 4
  %143 = zext i8 %140 to i16
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  br label %146

146:                                              ; preds = %162, %136
  %147 = phi i32 [ 0, %136 ], [ %163, %162 ]
  %148 = getelementptr %struct.regdata, ptr @mb86a20s_per_ber_reset, i32 %147
  %149 = load i8, ptr %148, align 1
  %150 = getelementptr %struct.regdata, ptr @mb86a20s_per_ber_reset, i32 %147, i32 1
  %151 = load i8, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #11
  store i8 %149, ptr %18, align 2
  store i8 %151, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #11
  store i32 2, ptr %142, align 4, !annotation !8
  store i16 %143, ptr %19, align 4
  store i16 0, ptr %144, align 2
  store ptr %18, ptr %145, align 4
  %152 = load ptr, ptr %128, align 4
  %153 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %19, i32 noundef 1) #11
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  br label %162

156:                                              ; preds = %146
  %157 = load ptr, ptr %128, align 4
  %158 = getelementptr inbounds %struct.i2c_adapter, ptr %157, i32 0, i32 9
  %159 = zext i8 %149 to i32
  %160 = zext i8 %151 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %153, i32 noundef %159, i32 noundef %160) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #11
  %161 = icmp slt i32 %153, 0
  br i1 %161, label %304, label %162

162:                                              ; preds = %156, %155
  %163 = add nuw nsw i32 %147, 1
  %164 = icmp eq i32 %163, 7
  br i1 %164, label %165, label %146

165:                                              ; preds = %162
  %166 = load ptr, ptr %137, align 4
  %167 = getelementptr inbounds %struct.mb86a20s_config, ptr %166, i32 0, i32 1
  %168 = load i8, ptr %167, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #11
  store i8 69, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #11
  store i8 0, ptr %16, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  %169 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %169, i8 0, i32 16, i1 false) #11, !annotation !8
  %170 = zext i8 %168 to i16
  store i16 %170, ptr %17, align 4
  %171 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %171, align 2
  store i16 1, ptr %169, align 4
  %172 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %15, ptr %172, align 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  store i16 %170, ptr %173, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %174, align 2
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %175, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %16, ptr %176, align 4
  %177 = load ptr, ptr %128, align 4
  %178 = call i32 @i2c_transfer(ptr noundef %177, ptr noundef nonnull %17, i32 noundef 2) #11
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %187, label %180

180:                                              ; preds = %165
  %181 = load ptr, ptr %128, align 4
  %182 = getelementptr inbounds %struct.i2c_adapter, ptr %181, i32 0, i32 9
  %183 = load i8, ptr %15, align 1
  %184 = zext i8 %183 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %184, i32 noundef %178) #12
  %185 = icmp slt i32 %178, 0
  %186 = select i1 %185, i32 %178, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  br label %304

187:                                              ; preds = %165
  %188 = load i8, ptr %16, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  %189 = load ptr, ptr %137, align 4
  %190 = getelementptr inbounds %struct.mb86a20s_config, ptr %189, i32 0, i32 1
  %191 = load i8, ptr %190, align 4
  %192 = or i8 %188, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 69, ptr %13, align 2
  %193 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 %192, ptr %193, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  %194 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %194, align 4, !annotation !8
  %195 = zext i8 %191 to i16
  store i16 %195, ptr %14, align 4
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %196, align 2
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %197, align 4
  %198 = load ptr, ptr %128, align 4
  %199 = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %14, i32 noundef 1) #11
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %187
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br label %207

202:                                              ; preds = %187
  %203 = load ptr, ptr %128, align 4
  %204 = getelementptr inbounds %struct.i2c_adapter, ptr %203, i32 0, i32 9
  %205 = zext i8 %192 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %204, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %199, i32 noundef 69, i32 noundef %205) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  %206 = icmp slt i32 %199, 0
  br i1 %206, label %304, label %207

207:                                              ; preds = %202, %201
  %208 = load ptr, ptr %137, align 4
  %209 = getelementptr inbounds %struct.mb86a20s_config, ptr %208, i32 0, i32 1
  %210 = load i8, ptr %209, align 4
  %211 = and i8 %188, 111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 69, ptr %11, align 2
  %212 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %211, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  %213 = getelementptr inbounds i8, ptr %12, i32 4
  store i32 2, ptr %213, align 4, !annotation !8
  %214 = zext i8 %210 to i16
  store i16 %214, ptr %12, align 4
  %215 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %215, align 2
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %216, align 4
  %217 = load ptr, ptr %128, align 4
  %218 = call i32 @i2c_transfer(ptr noundef %217, ptr noundef nonnull %12, i32 noundef 1) #11
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  br label %226

221:                                              ; preds = %207
  %222 = load ptr, ptr %128, align 4
  %223 = getelementptr inbounds %struct.i2c_adapter, ptr %222, i32 0, i32 9
  %224 = zext i8 %211 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %223, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %218, i32 noundef 69, i32 noundef %224) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  %225 = icmp slt i32 %218, 0
  br i1 %225, label %304, label %226

226:                                              ; preds = %221, %220
  %227 = load ptr, ptr %137, align 4
  %228 = getelementptr inbounds %struct.mb86a20s_config, ptr %227, i32 0, i32 1
  %229 = load i8, ptr %228, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #11
  store i8 80, ptr %9, align 2
  %230 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 80, ptr %230, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #11
  %231 = getelementptr inbounds i8, ptr %10, i32 4
  store i32 2, ptr %231, align 4, !annotation !8
  %232 = zext i8 %229 to i16
  store i16 %232, ptr %10, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %233, align 2
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %234, align 4
  %235 = load ptr, ptr %128, align 4
  %236 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %10, i32 noundef 1) #11
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %239

238:                                              ; preds = %226
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  br label %243

239:                                              ; preds = %226
  %240 = load ptr, ptr %128, align 4
  %241 = getelementptr inbounds %struct.i2c_adapter, ptr %240, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %236, i32 noundef 80, i32 noundef 80) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #11
  %242 = icmp slt i32 %236, 0
  br i1 %242, label %304, label %243

243:                                              ; preds = %239, %238
  %244 = load ptr, ptr %137, align 4
  %245 = getelementptr inbounds %struct.mb86a20s_config, ptr %244, i32 0, i32 1
  %246 = load i8, ptr %245, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 81, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %247 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %247, i8 0, i32 16, i1 false) #11, !annotation !8
  %248 = zext i8 %246 to i16
  store i16 %248, ptr %8, align 4
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %249, align 2
  store i16 1, ptr %247, align 4
  %250 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %6, ptr %250, align 4
  %251 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %248, ptr %251, align 4
  %252 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %252, align 2
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %253, align 4
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %7, ptr %254, align 4
  %255 = load ptr, ptr %128, align 4
  %256 = call i32 @i2c_transfer(ptr noundef %255, ptr noundef nonnull %8, i32 noundef 2) #11
  %257 = icmp eq i32 %256, 2
  br i1 %257, label %265, label %258

258:                                              ; preds = %243
  %259 = load ptr, ptr %128, align 4
  %260 = getelementptr inbounds %struct.i2c_adapter, ptr %259, i32 0, i32 9
  %261 = load i8, ptr %6, align 1
  %262 = zext i8 %261 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %262, i32 noundef %256) #12
  %263 = icmp slt i32 %256, 0
  %264 = select i1 %263, i32 %256, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  br label %304

265:                                              ; preds = %243
  %266 = load i8, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  %267 = load ptr, ptr %137, align 4
  %268 = getelementptr inbounds %struct.mb86a20s_config, ptr %267, i32 0, i32 1
  %269 = load i8, ptr %268, align 4
  %270 = or i8 %266, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #11
  store i8 81, ptr %4, align 2
  %271 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %270, ptr %271, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #11
  %272 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %272, align 4, !annotation !8
  %273 = zext i8 %269 to i16
  store i16 %273, ptr %5, align 4
  %274 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %274, align 2
  %275 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %275, align 4
  %276 = load ptr, ptr %128, align 4
  %277 = call i32 @i2c_transfer(ptr noundef %276, ptr noundef nonnull %5, i32 noundef 1) #11
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %280

279:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  br label %285

280:                                              ; preds = %265
  %281 = load ptr, ptr %128, align 4
  %282 = getelementptr inbounds %struct.i2c_adapter, ptr %281, i32 0, i32 9
  %283 = zext i8 %270 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %282, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %277, i32 noundef 81, i32 noundef %283) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #11
  %284 = icmp slt i32 %277, 0
  br i1 %284, label %304, label %285

285:                                              ; preds = %280, %279
  %286 = load ptr, ptr %137, align 4
  %287 = getelementptr inbounds %struct.mb86a20s_config, ptr %286, i32 0, i32 1
  %288 = load i8, ptr %287, align 4
  %289 = and i8 %266, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i8 81, ptr %2, align 2
  %290 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %289, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #11
  %291 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %291, align 4, !annotation !8
  %292 = zext i8 %288 to i16
  store i16 %292, ptr %3, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %293, align 2
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %294, align 4
  %295 = load ptr, ptr %128, align 4
  %296 = call i32 @i2c_transfer(ptr noundef %295, ptr noundef nonnull %3, i32 noundef 1) #11
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %299

298:                                              ; preds = %285
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %308

299:                                              ; preds = %285
  %300 = load ptr, ptr %128, align 4
  %301 = getelementptr inbounds %struct.i2c_adapter, ptr %300, i32 0, i32 9
  %302 = zext i8 %289 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %301, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %296, i32 noundef 81, i32 noundef %302) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  %303 = icmp slt i32 %296, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %299, %280, %258, %239, %221, %202, %180, %156
  %305 = phi i32 [ %199, %202 ], [ %218, %221 ], [ %236, %239 ], [ %277, %280 ], [ %296, %299 ], [ %186, %180 ], [ %264, %258 ], [ %153, %156 ]
  %306 = load ptr, ptr %128, align 4
  %307 = getelementptr inbounds %struct.i2c_adapter, ptr %306, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mb86a20s_reset_counters, i32 noundef %305) #12
  br label %308

308:                                              ; preds = %304, %299, %298
  %309 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %309, align 4
  %310 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 4, ptr %310, align 1
  %311 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  store i8 4, ptr %311, align 2
  %312 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 4, ptr %312, align 1
  %313 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 4, ptr %313, align 4
  %314 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 4, ptr %314, align 1
  %315 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 4, ptr %315, align 2
  %316 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 4, ptr %316, align 1
  %317 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %317, align 1
  %318 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %318, align 1
  %319 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0
  store i8 0, ptr %319, align 1
  %320 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0
  store i8 0, ptr %320, align 1
  %321 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0
  store i8 0, ptr %321, align 1
  %322 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0
  store i8 0, ptr %322, align 1
  %323 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0
  store i8 0, ptr %323, align 1
  %324 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0
  store i8 0, ptr %324, align 1
  %325 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0
  store i8 0, ptr %325, align 1
  %326 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 1
  store i8 0, ptr %326, align 1
  %327 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 1
  store i8 0, ptr %327, align 1
  %328 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 1
  store i8 0, ptr %328, align 1
  %329 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 1
  store i8 0, ptr %329, align 1
  %330 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 1
  store i8 0, ptr %330, align 1
  %331 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 1
  store i8 0, ptr %331, align 1
  %332 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 1
  store i8 0, ptr %332, align 1
  %333 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 2
  store i8 0, ptr %333, align 1
  %334 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 2
  store i8 0, ptr %334, align 1
  %335 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 2
  store i8 0, ptr %335, align 1
  %336 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 2
  store i8 0, ptr %336, align 1
  %337 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 2
  store i8 0, ptr %337, align 1
  %338 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 2
  store i8 0, ptr %338, align 1
  %339 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 2
  store i8 0, ptr %339, align 1
  %340 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 3
  store i8 0, ptr %340, align 1
  %341 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 3
  store i8 0, ptr %341, align 1
  %342 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 3
  store i8 0, ptr %342, align 1
  %343 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 3
  store i8 0, ptr %343, align 1
  %344 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 3
  store i8 0, ptr %344, align 1
  %345 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 3
  store i8 0, ptr %345, align 1
  %346 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 3
  store i8 0, ptr %346, align 1
  %347 = load ptr, ptr %60, align 4
  %348 = icmp eq ptr %347, null
  br i1 %348, label %351, label %349

349:                                              ; preds = %308
  %350 = call i32 %347(ptr noundef %0, i32 noundef 1) #11
  br label %351

351:                                              ; preds = %349, %308
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #11
  ret i32 %127
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mb86a20s_read_status_and_stats(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca [2 x %struct.i2c_msg], align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca [2 x %struct.i2c_msg], align 4
  %36 = alloca [2 x i8], align 2
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [2 x i8], align 2
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca i8, align 1
  %45 = alloca i8, align 1
  %46 = alloca [2 x %struct.i2c_msg], align 4
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %2
  %53 = tail call i32 %50(ptr noundef %0, i32 noundef 0) #11
  %54 = load ptr, ptr %47, align 4
  br label %55

55:                                               ; preds = %52, %2
  %56 = phi ptr [ %54, %52 ], [ %48, %2 ]
  store i32 0, ptr %1, align 4
  %57 = getelementptr inbounds %struct.mb86a20s_state, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.mb86a20s_config, ptr %58, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %44) #11
  store i8 10, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %45) #11
  store i8 0, ptr %45, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %46) #11
  %61 = getelementptr inbounds i8, ptr %46, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %61, i8 0, i32 16, i1 false) #11, !annotation !8
  %62 = zext i8 %60 to i16
  store i16 %62, ptr %46, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 1
  store i16 0, ptr %63, align 2
  store i16 1, ptr %61, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 0, i32 3
  store ptr %44, ptr %64, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1
  store i16 %62, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1, i32 1
  store i16 1, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1, i32 2
  store i16 1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %46, i32 1, i32 3
  store ptr %45, ptr %68, align 4
  %69 = load ptr, ptr %56, align 4
  %70 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %46, i32 noundef 2) #11
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %79, label %72

72:                                               ; preds = %55
  %73 = load ptr, ptr %56, align 4
  %74 = getelementptr inbounds %struct.i2c_adapter, ptr %73, i32 0, i32 9
  %75 = load i8, ptr %44, align 1
  %76 = zext i8 %75 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %76, i32 noundef %70) #12
  %77 = icmp slt i32 %70, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %45) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %44) #11
  %78 = select i1 %77, i32 %70, i32 -5
  br label %99

79:                                               ; preds = %55
  %80 = load i8, ptr %45, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %46) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %45) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %44) #11
  %81 = and i8 %80, 15
  %82 = zext i8 %81 to i32
  %83 = icmp ugt i8 %81, 1
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load i32, ptr %1, align 4
  %86 = or i32 %85, 1
  store i32 %86, ptr %1, align 4
  %87 = icmp ugt i8 %81, 3
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = or i32 %85, 3
  store i32 %89, ptr %1, align 4
  %90 = icmp eq i8 %81, 4
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = or i32 %85, 7
  store i32 %92, ptr %1, align 4
  %93 = icmp ugt i8 %81, 6
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = or i32 %85, 15
  store i32 %95, ptr %1, align 4
  %96 = icmp ugt i8 %81, 8
  br i1 %96, label %97, label %150

97:                                               ; preds = %94
  %98 = or i32 %85, 31
  store i32 %98, ptr %1, align 4
  br label %150

99:                                               ; preds = %91, %88, %84, %79, %72
  %100 = phi i32 [ 4, %88 ], [ %82, %79 ], [ %82, %84 ], [ %82, %91 ], [ %78, %72 ]
  %101 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %101, align 4
  %102 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 4, ptr %102, align 1
  %103 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  store i8 4, ptr %103, align 2
  %104 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 4, ptr %104, align 1
  %105 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 4, ptr %105, align 4
  %106 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 4, ptr %106, align 1
  %107 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 4, ptr %107, align 2
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 4, ptr %108, align 1
  %109 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %109, align 1
  %110 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %110, align 1
  %111 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0
  store i8 0, ptr %111, align 1
  %112 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0
  store i8 0, ptr %112, align 1
  %113 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0
  store i8 0, ptr %113, align 1
  %114 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0
  store i8 0, ptr %114, align 1
  %115 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0
  store i8 0, ptr %115, align 1
  %116 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0
  store i8 0, ptr %116, align 1
  %117 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0
  store i8 0, ptr %117, align 1
  %118 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 1
  store i8 0, ptr %118, align 1
  %119 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 1
  store i8 0, ptr %119, align 1
  %120 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 1
  store i8 0, ptr %120, align 1
  %121 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 1
  store i8 0, ptr %121, align 1
  %122 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 1
  store i8 0, ptr %122, align 1
  %123 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 1
  store i8 0, ptr %123, align 1
  %124 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 1
  store i8 0, ptr %124, align 1
  %125 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 2
  store i8 0, ptr %125, align 1
  %126 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 2
  store i8 0, ptr %126, align 1
  %127 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 2
  store i8 0, ptr %127, align 1
  %128 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 2
  store i8 0, ptr %128, align 1
  %129 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 2
  store i8 0, ptr %129, align 1
  %130 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 2
  store i8 0, ptr %130, align 1
  %131 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 2
  store i8 0, ptr %131, align 1
  %132 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 3
  store i8 0, ptr %132, align 1
  %133 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 3
  store i8 0, ptr %133, align 1
  %134 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 3
  store i8 0, ptr %134, align 1
  %135 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 3
  store i8 0, ptr %135, align 1
  %136 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 3
  store i8 0, ptr %136, align 1
  %137 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 3
  store i8 0, ptr %137, align 1
  %138 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 3
  store i8 0, ptr %138, align 1
  %139 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  store i32 8, ptr %139, align 4
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  store i32 6000000, ptr %140, align 4
  %141 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  store i8 0, ptr %141, align 4
  %142 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  store i32 2, ptr %142, align 4
  %143 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  store i32 4, ptr %143, align 4
  %144 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 18
  store i8 0, ptr %144, align 1
  %145 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 21
  store i32 0, ptr %145, align 4
  %146 = icmp slt i32 %100, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %99
  %148 = load ptr, ptr %48, align 4
  %149 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.mb86a20s_read_status_and_stats) #12
  br label %689

150:                                              ; preds = %99, %97, %94
  %151 = phi i32 [ %100, %99 ], [ %82, %94 ], [ %82, %97 ]
  %152 = load ptr, ptr %47, align 4
  %153 = getelementptr inbounds %struct.mb86a20s_state, ptr %152, i32 0, i32 9
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %150
  %157 = load volatile i32, ptr @jiffies, align 64
  %158 = sub i32 %154, %157
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %277

160:                                              ; preds = %156, %150
  %161 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %161, align 1
  %162 = getelementptr inbounds %struct.mb86a20s_state, ptr %152, i32 0, i32 1
  %163 = getelementptr inbounds i8, ptr %42, i32 1
  %164 = getelementptr inbounds i8, ptr %43, i32 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  %167 = getelementptr inbounds i8, ptr %40, i32 1
  %168 = getelementptr inbounds i8, ptr %41, i32 4
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  %170 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  %171 = getelementptr inbounds i8, ptr %38, i32 1
  %172 = getelementptr inbounds i8, ptr %39, i32 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  %175 = getelementptr inbounds i8, ptr %36, i32 1
  %176 = getelementptr inbounds i8, ptr %37, i32 4
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  %179 = getelementptr inbounds i8, ptr %35, i32 4
  %180 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 1
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 2
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 1, i32 3
  br label %186

186:                                              ; preds = %260, %160
  %187 = phi i32 [ 4095, %160 ], [ %264, %260 ]
  %188 = phi i32 [ 0, %160 ], [ %265, %260 ]
  %189 = add i32 %188, %187
  %190 = lshr i32 %189, 1
  %191 = load ptr, ptr %162, align 4
  %192 = getelementptr inbounds %struct.mb86a20s_config, ptr %191, i32 0, i32 1
  %193 = load i8, ptr %192, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #11
  store i8 4, ptr %42, align 2
  store i8 31, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #11
  store i32 2, ptr %164, align 4, !annotation !8
  %194 = zext i8 %193 to i16
  store i16 %194, ptr %43, align 4
  store i16 0, ptr %165, align 2
  store ptr %42, ptr %166, align 4
  %195 = load ptr, ptr %152, align 4
  %196 = call i32 @i2c_transfer(ptr noundef %195, ptr noundef nonnull %43, i32 noundef 1) #11
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %186
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #11
  br label %203

199:                                              ; preds = %186
  %200 = load ptr, ptr %152, align 4
  %201 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %196, i32 noundef 4, i32 noundef 31) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #11
  %202 = icmp slt i32 %196, 0
  br i1 %202, label %282, label %203

203:                                              ; preds = %199, %198
  %204 = load ptr, ptr %162, align 4
  %205 = getelementptr inbounds %struct.mb86a20s_config, ptr %204, i32 0, i32 1
  %206 = load i8, ptr %205, align 4
  %207 = lshr i32 %189, 9
  %208 = trunc i32 %207 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #11
  store i8 5, ptr %40, align 2
  store i8 %208, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #11
  store i32 2, ptr %168, align 4, !annotation !8
  %209 = zext i8 %206 to i16
  store i16 %209, ptr %41, align 4
  store i16 0, ptr %169, align 2
  store ptr %40, ptr %170, align 4
  %210 = load ptr, ptr %152, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %210, ptr noundef nonnull %41, i32 noundef 1) #11
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #11
  br label %219

214:                                              ; preds = %203
  %215 = load ptr, ptr %152, align 4
  %216 = getelementptr inbounds %struct.i2c_adapter, ptr %215, i32 0, i32 9
  %217 = and i32 %207, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %211, i32 noundef 5, i32 noundef %217) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #11
  %218 = icmp slt i32 %211, 0
  br i1 %218, label %282, label %219

219:                                              ; preds = %214, %213
  %220 = load ptr, ptr %162, align 4
  %221 = getelementptr inbounds %struct.mb86a20s_config, ptr %220, i32 0, i32 1
  %222 = load i8, ptr %221, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %38) #11
  store i8 4, ptr %38, align 2
  store i8 32, ptr %171, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #11
  store i32 2, ptr %172, align 4, !annotation !8
  %223 = zext i8 %222 to i16
  store i16 %223, ptr %39, align 4
  store i16 0, ptr %173, align 2
  store ptr %38, ptr %174, align 4
  %224 = load ptr, ptr %152, align 4
  %225 = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %39, i32 noundef 1) #11
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %228

227:                                              ; preds = %219
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #11
  br label %232

228:                                              ; preds = %219
  %229 = load ptr, ptr %152, align 4
  %230 = getelementptr inbounds %struct.i2c_adapter, ptr %229, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %225, i32 noundef 4, i32 noundef 32) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %38) #11
  %231 = icmp slt i32 %225, 0
  br i1 %231, label %282, label %232

232:                                              ; preds = %228, %227
  %233 = load ptr, ptr %162, align 4
  %234 = getelementptr inbounds %struct.mb86a20s_config, ptr %233, i32 0, i32 1
  %235 = load i8, ptr %234, align 4
  %236 = trunc i32 %190 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %36) #11
  store i8 5, ptr %36, align 2
  store i8 %236, ptr %175, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #11
  store i32 2, ptr %176, align 4, !annotation !8
  %237 = zext i8 %235 to i16
  store i16 %237, ptr %37, align 4
  store i16 0, ptr %177, align 2
  store ptr %36, ptr %178, align 4
  %238 = load ptr, ptr %152, align 4
  %239 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %37, i32 noundef 1) #11
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #11
  br label %247

242:                                              ; preds = %232
  %243 = load ptr, ptr %152, align 4
  %244 = getelementptr inbounds %struct.i2c_adapter, ptr %243, i32 0, i32 9
  %245 = and i32 %190, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %244, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %239, i32 noundef 5, i32 noundef %245) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %36) #11
  %246 = icmp slt i32 %239, 0
  br i1 %246, label %282, label %247

247:                                              ; preds = %242, %241
  %248 = load ptr, ptr %162, align 4
  %249 = getelementptr inbounds %struct.mb86a20s_config, ptr %248, i32 0, i32 1
  %250 = load i8, ptr %249, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %33) #11
  store i8 2, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %34) #11
  store i8 0, ptr %34, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %35) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %179, i8 0, i32 16, i1 false) #11, !annotation !8
  %251 = zext i8 %250 to i16
  store i16 %251, ptr %35, align 4
  store i16 0, ptr %180, align 2
  store i16 1, ptr %179, align 4
  store ptr %33, ptr %181, align 4
  store i16 %251, ptr %182, align 4
  store i16 1, ptr %183, align 2
  store i16 1, ptr %184, align 4
  store ptr %34, ptr %185, align 4
  %252 = load ptr, ptr %152, align 4
  %253 = call i32 @i2c_transfer(ptr noundef %252, ptr noundef nonnull %35, i32 noundef 2) #11
  %254 = icmp eq i32 %253, 2
  br i1 %254, label %260, label %255

255:                                              ; preds = %247
  %256 = load ptr, ptr %152, align 4
  %257 = getelementptr inbounds %struct.i2c_adapter, ptr %256, i32 0, i32 9
  %258 = load i8, ptr %33, align 1
  %259 = zext i8 %258 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %259, i32 noundef %253) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #11
  br label %282

260:                                              ; preds = %247
  %261 = load i8, ptr %34, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %35) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %33) #11
  %262 = and i8 %261, 8
  %263 = icmp eq i8 %262, 0
  %264 = select i1 %263, i32 %190, i32 %187
  %265 = select i1 %263, i32 %188, i32 %190
  %266 = sub i32 %264, %265
  %267 = icmp ult i32 %266, 4
  br i1 %267, label %268, label %186

268:                                              ; preds = %260
  %269 = add i32 %264, %265
  %270 = shl i32 %269, 3
  %271 = icmp ult i32 %270, 16
  %272 = or i32 %270, 4095
  %273 = select i1 %271, i32 0, i32 %272
  %274 = zext i32 %273 to i64
  store i64 %274, ptr %161, align 1
  %275 = load volatile i32, ptr @jiffies, align 64
  %276 = add i32 %275, 100
  store i32 %276, ptr %153, align 4
  br label %330

277:                                              ; preds = %156
  %278 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %279 = load i64, ptr %278, align 1
  %280 = trunc i64 %279 to i32
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %282, label %330

282:                                              ; preds = %277, %255, %242, %228, %214, %199
  %283 = load ptr, ptr %48, align 4
  %284 = getelementptr inbounds %struct.i2c_adapter, ptr %283, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %284, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.mb86a20s_read_status_and_stats) #12
  %285 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %285, align 4
  %286 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 4, ptr %286, align 1
  %287 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  store i8 4, ptr %287, align 2
  %288 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 4, ptr %288, align 1
  %289 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 4, ptr %289, align 4
  %290 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 4, ptr %290, align 1
  %291 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 4, ptr %291, align 2
  %292 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 4, ptr %292, align 1
  %293 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %293, align 1
  %294 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %294, align 1
  %295 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0
  store i8 0, ptr %295, align 1
  %296 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0
  store i8 0, ptr %296, align 1
  %297 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0
  store i8 0, ptr %297, align 1
  %298 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0
  store i8 0, ptr %298, align 1
  %299 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0
  store i8 0, ptr %299, align 1
  %300 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0
  store i8 0, ptr %300, align 1
  %301 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0
  store i8 0, ptr %301, align 1
  %302 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 1
  store i8 0, ptr %302, align 1
  %303 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 1
  store i8 0, ptr %303, align 1
  %304 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 1
  store i8 0, ptr %304, align 1
  %305 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 1
  store i8 0, ptr %305, align 1
  %306 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 1
  store i8 0, ptr %306, align 1
  %307 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 1
  store i8 0, ptr %307, align 1
  %308 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 1
  store i8 0, ptr %308, align 1
  %309 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 2
  store i8 0, ptr %309, align 1
  %310 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 2
  store i8 0, ptr %310, align 1
  %311 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 2
  store i8 0, ptr %311, align 1
  %312 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 2
  store i8 0, ptr %312, align 1
  %313 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 2
  store i8 0, ptr %313, align 1
  %314 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 2
  store i8 0, ptr %314, align 1
  %315 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 2
  store i8 0, ptr %315, align 1
  %316 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 3
  store i8 0, ptr %316, align 1
  %317 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 3
  store i8 0, ptr %317, align 1
  %318 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 3
  store i8 0, ptr %318, align 1
  %319 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 3
  store i8 0, ptr %319, align 1
  %320 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 3
  store i8 0, ptr %320, align 1
  %321 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 3
  store i8 0, ptr %321, align 1
  %322 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 3
  store i8 0, ptr %322, align 1
  %323 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  store i32 8, ptr %323, align 4
  %324 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  store i32 6000000, ptr %324, align 4
  %325 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  store i8 0, ptr %325, align 4
  %326 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  store i32 2, ptr %326, align 4
  %327 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  store i32 4, ptr %327, align 4
  %328 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 18
  store i8 0, ptr %328, align 1
  %329 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 21
  store i32 0, ptr %329, align 4
  br label %689

330:                                              ; preds = %277, %268
  %331 = phi i32 [ 0, %268 ], [ %280, %277 ]
  %332 = icmp sgt i32 %151, 6
  br i1 %332, label %333, label %729

333:                                              ; preds = %330
  %334 = load ptr, ptr %47, align 4
  %335 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  store i32 8, ptr %335, align 4
  %336 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  store i32 6000000, ptr %336, align 4
  %337 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  store i8 0, ptr %337, align 4
  %338 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 6
  store i32 2, ptr %338, align 4
  %339 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 8
  store i32 4, ptr %339, align 4
  %340 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 18
  store i8 0, ptr %340, align 1
  %341 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 21
  store i32 0, ptr %341, align 4
  %342 = getelementptr inbounds %struct.mb86a20s_state, ptr %334, i32 0, i32 1
  %343 = load ptr, ptr %342, align 4
  %344 = getelementptr inbounds %struct.mb86a20s_config, ptr %343, i32 0, i32 1
  %345 = load i8, ptr %344, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #11
  store i8 109, ptr %31, align 2
  %346 = getelementptr inbounds i8, ptr %31, i32 1
  store i8 -123, ptr %346, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #11
  %347 = getelementptr inbounds i8, ptr %32, i32 4
  store i32 2, ptr %347, align 4, !annotation !8
  %348 = zext i8 %345 to i16
  store i16 %348, ptr %32, align 4
  %349 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  store i16 0, ptr %349, align 2
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %350, align 4
  %351 = load ptr, ptr %334, align 4
  %352 = call i32 @i2c_transfer(ptr noundef %351, ptr noundef nonnull %32, i32 noundef 1) #11
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %355

354:                                              ; preds = %333
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  br label %359

355:                                              ; preds = %333
  %356 = load ptr, ptr %334, align 4
  %357 = getelementptr inbounds %struct.i2c_adapter, ptr %356, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %352, i32 noundef 109, i32 noundef 133) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  %358 = icmp slt i32 %352, 0
  br i1 %358, label %676, label %359

359:                                              ; preds = %355, %354
  %360 = load ptr, ptr %342, align 4
  %361 = getelementptr inbounds %struct.mb86a20s_config, ptr %360, i32 0, i32 1
  %362 = load i8, ptr %361, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #11
  store i8 110, ptr %28, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %29) #11
  store i8 0, ptr %29, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #11
  %363 = getelementptr inbounds i8, ptr %30, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %363, i8 0, i32 16, i1 false) #11, !annotation !8
  %364 = zext i8 %362 to i16
  store i16 %364, ptr %30, align 4
  %365 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %365, align 2
  store i16 1, ptr %363, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %28, ptr %366, align 4
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1
  store i16 %364, ptr %367, align 4
  %368 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 1
  store i16 1, ptr %368, align 2
  %369 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 2
  store i16 1, ptr %369, align 4
  %370 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 3
  store ptr %29, ptr %370, align 4
  %371 = load ptr, ptr %334, align 4
  %372 = call i32 @i2c_transfer(ptr noundef %371, ptr noundef nonnull %30, i32 noundef 2) #11
  %373 = icmp eq i32 %372, 2
  br i1 %373, label %379, label %374

374:                                              ; preds = %359
  %375 = load ptr, ptr %334, align 4
  %376 = getelementptr inbounds %struct.i2c_adapter, ptr %375, i32 0, i32 9
  %377 = load i8, ptr %28, align 1
  %378 = zext i8 %377 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %376, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %378, i32 noundef %372) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #11
  br label %676

379:                                              ; preds = %359
  %380 = load i8, ptr %29, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %29) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #11
  %381 = lshr i8 %380, 4
  %382 = and i8 %381, 1
  %383 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 17
  store i8 %382, ptr %383, align 4
  %384 = getelementptr inbounds i8, ptr %26, i32 1
  %385 = getelementptr inbounds i8, ptr %27, i32 4
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  %388 = getelementptr inbounds i8, ptr %25, i32 4
  %389 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  %390 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  %395 = getelementptr inbounds i8, ptr %21, i32 1
  %396 = getelementptr inbounds i8, ptr %22, i32 4
  %397 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  %398 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  %399 = getelementptr inbounds i8, ptr %20, i32 4
  %400 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  %401 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  %402 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  %403 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  %405 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  %406 = getelementptr inbounds i8, ptr %16, i32 1
  %407 = getelementptr inbounds i8, ptr %17, i32 4
  %408 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %410 = getelementptr inbounds i8, ptr %15, i32 4
  %411 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %414 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  %416 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  %417 = getelementptr inbounds i8, ptr %11, i32 1
  %418 = getelementptr inbounds i8, ptr %12, i32 4
  %419 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %420 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %421 = getelementptr inbounds i8, ptr %10, i32 4
  %422 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  %423 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  %424 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  %425 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  %427 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  br label %428

428:                                              ; preds = %609, %379
  %429 = phi i32 [ 0, %379 ], [ %612, %609 ]
  %430 = load ptr, ptr %342, align 4
  %431 = getelementptr inbounds %struct.mb86a20s_config, ptr %430, i32 0, i32 1
  %432 = load i8, ptr %431, align 4
  %433 = getelementptr [3 x i8], ptr @mb86a20s_get_segment_count.reg, i32 0, i32 %429
  %434 = load i8, ptr %433, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #11
  store i8 109, ptr %26, align 2
  store i8 %434, ptr %384, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #11
  store i32 2, ptr %385, align 4, !annotation !8
  %435 = zext i8 %432 to i16
  store i16 %435, ptr %27, align 4
  store i16 0, ptr %386, align 2
  store ptr %26, ptr %387, align 4
  %436 = load ptr, ptr %334, align 4
  %437 = call i32 @i2c_transfer(ptr noundef %436, ptr noundef nonnull %27, i32 noundef 1) #11
  %438 = icmp eq i32 %437, 1
  br i1 %438, label %439, label %440

439:                                              ; preds = %428
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #11
  br label %445

440:                                              ; preds = %428
  %441 = load ptr, ptr %334, align 4
  %442 = getelementptr inbounds %struct.i2c_adapter, ptr %441, i32 0, i32 9
  %443 = zext i8 %434 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %442, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %437, i32 noundef 109, i32 noundef %443) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #11
  %444 = icmp slt i32 %437, 0
  br i1 %444, label %675, label %445

445:                                              ; preds = %440, %439
  %446 = load ptr, ptr %342, align 4
  %447 = getelementptr inbounds %struct.mb86a20s_config, ptr %446, i32 0, i32 1
  %448 = load i8, ptr %447, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #11
  store i8 110, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24) #11
  store i8 0, ptr %24, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %388, i8 0, i32 16, i1 false) #11, !annotation !8
  %449 = zext i8 %448 to i16
  store i16 %449, ptr %25, align 4
  store i16 0, ptr %389, align 2
  store i16 1, ptr %388, align 4
  store ptr %23, ptr %390, align 4
  store i16 %449, ptr %391, align 4
  store i16 1, ptr %392, align 2
  store i16 1, ptr %393, align 4
  store ptr %24, ptr %394, align 4
  %450 = load ptr, ptr %334, align 4
  %451 = call i32 @i2c_transfer(ptr noundef %450, ptr noundef nonnull %25, i32 noundef 2) #11
  %452 = icmp eq i32 %451, 2
  br i1 %452, label %458, label %453

453:                                              ; preds = %445
  %454 = load ptr, ptr %334, align 4
  %455 = getelementptr inbounds %struct.i2c_adapter, ptr %454, i32 0, i32 9
  %456 = load i8, ptr %23, align 1
  %457 = zext i8 %456 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %455, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %457, i32 noundef %451) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #11
  br label %675

458:                                              ; preds = %445
  %459 = load i8, ptr %24, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #11
  %460 = icmp ult i8 %459, -32
  br i1 %460, label %461, label %501

461:                                              ; preds = %458
  %462 = lshr i8 %459, 4
  %463 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 %429
  store i8 %462, ptr %463, align 4
  %464 = shl nuw nsw i32 1, %429
  %465 = load i8, ptr %337, align 4
  %466 = trunc i32 %464 to i8
  %467 = or i8 %465, %466
  store i8 %467, ptr %337, align 4
  %468 = load ptr, ptr %342, align 4
  %469 = getelementptr inbounds %struct.mb86a20s_config, ptr %468, i32 0, i32 1
  %470 = load i8, ptr %469, align 4
  %471 = getelementptr [3 x i8], ptr @mb86a20s_get_modulation.reg, i32 0, i32 %429
  %472 = load i8, ptr %471, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #11
  store i8 109, ptr %21, align 2
  store i8 %472, ptr %395, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  store i32 2, ptr %396, align 4, !annotation !8
  %473 = zext i8 %470 to i16
  store i16 %473, ptr %22, align 4
  store i16 0, ptr %397, align 2
  store ptr %21, ptr %398, align 4
  %474 = load ptr, ptr %334, align 4
  %475 = call i32 @i2c_transfer(ptr noundef %474, ptr noundef nonnull %22, i32 noundef 1) #11
  %476 = icmp eq i32 %475, 1
  br i1 %476, label %477, label %478

477:                                              ; preds = %461
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  br label %483

478:                                              ; preds = %461
  %479 = load ptr, ptr %334, align 4
  %480 = getelementptr inbounds %struct.i2c_adapter, ptr %479, i32 0, i32 9
  %481 = zext i8 %472 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %480, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %475, i32 noundef 109, i32 noundef %481) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  %482 = icmp slt i32 %475, 0
  br i1 %482, label %675, label %483

483:                                              ; preds = %478, %477
  %484 = load ptr, ptr %342, align 4
  %485 = getelementptr inbounds %struct.mb86a20s_config, ptr %484, i32 0, i32 1
  %486 = load i8, ptr %485, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #11
  store i8 110, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #11
  store i8 0, ptr %19, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %399, i8 0, i32 16, i1 false) #11, !annotation !8
  %487 = zext i8 %486 to i16
  store i16 %487, ptr %20, align 4
  store i16 0, ptr %400, align 2
  store i16 1, ptr %399, align 4
  store ptr %18, ptr %401, align 4
  store i16 %487, ptr %402, align 4
  store i16 1, ptr %403, align 2
  store i16 1, ptr %404, align 4
  store ptr %19, ptr %405, align 4
  %488 = load ptr, ptr %334, align 4
  %489 = call i32 @i2c_transfer(ptr noundef %488, ptr noundef nonnull %20, i32 noundef 2) #11
  %490 = icmp eq i32 %489, 2
  br i1 %490, label %496, label %491

491:                                              ; preds = %483
  %492 = load ptr, ptr %334, align 4
  %493 = getelementptr inbounds %struct.i2c_adapter, ptr %492, i32 0, i32 9
  %494 = load i8, ptr %18, align 1
  %495 = zext i8 %494 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %493, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %495, i32 noundef %489) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #11
  br label %675

496:                                              ; preds = %483
  %497 = load i8, ptr %19, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #11
  %498 = lshr i8 %497, 4
  %499 = and i8 %498, 7
  %500 = icmp ult i8 %499, 4
  br i1 %500, label %503, label %507

501:                                              ; preds = %458
  %502 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 %429
  store i8 0, ptr %502, align 4
  br label %609

503:                                              ; preds = %496
  %504 = zext i8 %499 to i32
  %505 = getelementptr inbounds [4 x i32], ptr @switch.table.mb86a20s_read_status_and_stats, i32 0, i32 %504
  %506 = load i32, ptr %505, align 4
  br label %507

507:                                              ; preds = %503, %496
  %508 = phi i32 [ %506, %503 ], [ 6, %496 ]
  %509 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 %429, i32 2
  store i32 %508, ptr %509, align 4
  %510 = load ptr, ptr %342, align 4
  %511 = getelementptr inbounds %struct.mb86a20s_config, ptr %510, i32 0, i32 1
  %512 = load i8, ptr %511, align 4
  %513 = getelementptr [3 x i8], ptr @mb86a20s_get_fec.reg, i32 0, i32 %429
  %514 = load i8, ptr %513, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #11
  store i8 109, ptr %16, align 2
  store i8 %514, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #11
  store i32 2, ptr %407, align 4, !annotation !8
  %515 = zext i8 %512 to i16
  store i16 %515, ptr %17, align 4
  store i16 0, ptr %408, align 2
  store ptr %16, ptr %409, align 4
  %516 = load ptr, ptr %334, align 4
  %517 = call i32 @i2c_transfer(ptr noundef %516, ptr noundef nonnull %17, i32 noundef 1) #11
  %518 = icmp eq i32 %517, 1
  br i1 %518, label %519, label %520

519:                                              ; preds = %507
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  br label %525

520:                                              ; preds = %507
  %521 = load ptr, ptr %334, align 4
  %522 = getelementptr inbounds %struct.i2c_adapter, ptr %521, i32 0, i32 9
  %523 = zext i8 %514 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %522, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %517, i32 noundef 109, i32 noundef %523) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #11
  %524 = icmp slt i32 %517, 0
  br i1 %524, label %675, label %525

525:                                              ; preds = %520, %519
  %526 = load ptr, ptr %342, align 4
  %527 = getelementptr inbounds %struct.mb86a20s_config, ptr %526, i32 0, i32 1
  %528 = load i8, ptr %527, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store i8 110, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 0, ptr %14, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %410, i8 0, i32 16, i1 false) #11, !annotation !8
  %529 = zext i8 %528 to i16
  store i16 %529, ptr %15, align 4
  store i16 0, ptr %411, align 2
  store i16 1, ptr %410, align 4
  store ptr %13, ptr %412, align 4
  store i16 %529, ptr %413, align 4
  store i16 1, ptr %414, align 2
  store i16 1, ptr %415, align 4
  store ptr %14, ptr %416, align 4
  %530 = load ptr, ptr %334, align 4
  %531 = call i32 @i2c_transfer(ptr noundef %530, ptr noundef nonnull %15, i32 noundef 2) #11
  %532 = icmp eq i32 %531, 2
  br i1 %532, label %538, label %533

533:                                              ; preds = %525
  %534 = load ptr, ptr %334, align 4
  %535 = getelementptr inbounds %struct.i2c_adapter, ptr %534, i32 0, i32 9
  %536 = load i8, ptr %13, align 1
  %537 = zext i8 %536 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %535, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %537, i32 noundef %531) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  br label %675

538:                                              ; preds = %525
  %539 = load i8, ptr %14, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  %540 = lshr i8 %539, 4
  %541 = and i8 %540, 7
  %542 = icmp ult i8 %541, 5
  br i1 %542, label %543, label %547

543:                                              ; preds = %538
  %544 = zext i8 %541 to i32
  %545 = getelementptr inbounds [5 x i32], ptr @switch.table.mb86a20s_read_status_and_stats.11, i32 0, i32 %544
  %546 = load i32, ptr %545, align 4
  br label %547

547:                                              ; preds = %543, %538
  %548 = phi i32 [ %546, %543 ], [ 9, %538 ]
  %549 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 %429, i32 1
  store i32 %548, ptr %549, align 4
  %550 = load ptr, ptr %342, align 4
  %551 = getelementptr inbounds %struct.mb86a20s_config, ptr %550, i32 0, i32 1
  %552 = load i8, ptr %551, align 4
  %553 = getelementptr [3 x i8], ptr @mb86a20s_get_interleaving.reg, i32 0, i32 %429
  %554 = load i8, ptr %553, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #11
  store i8 109, ptr %11, align 2
  store i8 %554, ptr %417, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #11
  store i32 2, ptr %418, align 4, !annotation !8
  %555 = zext i8 %552 to i16
  store i16 %555, ptr %12, align 4
  store i16 0, ptr %419, align 2
  store ptr %11, ptr %420, align 4
  %556 = load ptr, ptr %334, align 4
  %557 = call i32 @i2c_transfer(ptr noundef %556, ptr noundef nonnull %12, i32 noundef 1) #11
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %559, label %560

559:                                              ; preds = %547
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  br label %565

560:                                              ; preds = %547
  %561 = load ptr, ptr %334, align 4
  %562 = getelementptr inbounds %struct.i2c_adapter, ptr %561, i32 0, i32 9
  %563 = zext i8 %554 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %562, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %557, i32 noundef 109, i32 noundef %563) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #11
  %564 = icmp slt i32 %557, 0
  br i1 %564, label %675, label %565

565:                                              ; preds = %560, %559
  %566 = load ptr, ptr %342, align 4
  %567 = getelementptr inbounds %struct.mb86a20s_config, ptr %566, i32 0, i32 1
  %568 = load i8, ptr %567, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 110, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 0, ptr %9, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %421, i8 0, i32 16, i1 false) #11, !annotation !8
  %569 = zext i8 %568 to i16
  store i16 %569, ptr %10, align 4
  store i16 0, ptr %422, align 2
  store i16 1, ptr %421, align 4
  store ptr %8, ptr %423, align 4
  store i16 %569, ptr %424, align 4
  store i16 1, ptr %425, align 2
  store i16 1, ptr %426, align 4
  store ptr %9, ptr %427, align 4
  %570 = load ptr, ptr %334, align 4
  %571 = call i32 @i2c_transfer(ptr noundef %570, ptr noundef nonnull %10, i32 noundef 2) #11
  %572 = icmp eq i32 %571, 2
  br i1 %572, label %578, label %573

573:                                              ; preds = %565
  %574 = load ptr, ptr %334, align 4
  %575 = getelementptr inbounds %struct.i2c_adapter, ptr %574, i32 0, i32 9
  %576 = load i8, ptr %8, align 1
  %577 = zext i8 %576 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %575, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %577, i32 noundef %571) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  br label %675

578:                                              ; preds = %565
  %579 = load i8, ptr %9, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  %580 = lshr i8 %579, 4
  %581 = and i8 %580, 7
  %582 = zext i8 %581 to i32
  %583 = getelementptr [5 x i32], ptr @mb86a20s_get_interleaving.interleaving, i32 0, i32 %582
  %584 = load i32, ptr %583, align 4
  %585 = trunc i32 %584 to i8
  %586 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 %429, i32 3
  store i8 %585, ptr %586, align 4
  %587 = load i32, ptr %509, align 4
  %588 = load i32, ptr %549, align 4
  %589 = add i32 %588, -2
  %590 = icmp ult i32 %589, 6
  br i1 %590, label %591, label %594

591:                                              ; preds = %578
  %592 = getelementptr inbounds [6 x i32], ptr @switch.table.mb86a20s_read_status_and_stats.12, i32 0, i32 %589
  %593 = load i32, ptr %592, align 4
  br label %594

594:                                              ; preds = %591, %578
  %595 = phi i32 [ 0, %578 ], [ %593, %591 ]
  %596 = load i32, ptr %339, align 4
  %597 = call i32 @llvm.usub.sat.i32(i32 3, i32 %596)
  %598 = icmp eq i32 %587, 3
  %599 = icmp eq i32 %587, 1
  %600 = zext i1 %599 to i32
  %601 = select i1 %598, i32 2, i32 %600
  %602 = getelementptr [3 x [5 x [4 x i32]]], ptr @isdbt_rate, i32 0, i32 %601, i32 %595, i32 %597
  %603 = load i32, ptr %602, align 4
  %604 = load i8, ptr %463, align 4
  %605 = zext i8 %604 to i32
  %606 = mul i32 %603, %605
  %607 = call i32 @llvm.smin.i32(i32 %606, i32 16777215) #11
  %608 = call i32 @llvm.smax.i32(i32 %607, i32 256) #11
  br label %609

609:                                              ; preds = %594, %501
  %610 = phi i32 [ %608, %594 ], [ 0, %501 ]
  %611 = getelementptr %struct.mb86a20s_state, ptr %334, i32 0, i32 8, i32 %429
  store i32 %610, ptr %611, align 4
  %612 = add nuw nsw i32 %429, 1
  %613 = icmp eq i32 %612, 3
  br i1 %613, label %614, label %428

614:                                              ; preds = %609
  %615 = load ptr, ptr %342, align 4
  %616 = getelementptr inbounds %struct.mb86a20s_config, ptr %615, i32 0, i32 1
  %617 = load i8, ptr %616, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #11
  store i8 109, ptr %6, align 2
  %618 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 -124, ptr %618, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #11
  %619 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %619, align 4, !annotation !8
  %620 = zext i8 %617 to i16
  store i16 %620, ptr %7, align 4
  %621 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %621, align 2
  %622 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %622, align 4
  %623 = load ptr, ptr %334, align 4
  %624 = call i32 @i2c_transfer(ptr noundef %623, ptr noundef nonnull %7, i32 noundef 1) #11
  %625 = icmp eq i32 %624, 1
  br i1 %625, label %626, label %627

626:                                              ; preds = %614
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  br label %638

627:                                              ; preds = %614
  %628 = load ptr, ptr %334, align 4
  %629 = getelementptr inbounds %struct.i2c_adapter, ptr %628, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %629, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %624, i32 noundef 109, i32 noundef 132) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #11
  %630 = icmp slt i32 %624, 0
  br i1 %630, label %676, label %631

631:                                              ; preds = %627
  %632 = and i32 %624, 96
  %633 = icmp eq i32 %632, 32
  br i1 %633, label %634, label %638

634:                                              ; preds = %631
  store i8 1, ptr %340, align 1
  %635 = load i32, ptr %341, align 4
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %637, label %638

637:                                              ; preds = %634
  store i32 1, ptr %341, align 4
  br label %638

638:                                              ; preds = %637, %634, %631, %626
  %639 = load ptr, ptr %342, align 4
  %640 = getelementptr inbounds %struct.mb86a20s_config, ptr %639, i32 0, i32 1
  %641 = load i8, ptr %640, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 7, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %642 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %642, i8 0, i32 16, i1 false) #11, !annotation !8
  %643 = zext i8 %641 to i16
  store i16 %643, ptr %5, align 4
  %644 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %644, align 2
  store i16 1, ptr %642, align 4
  %645 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %3, ptr %645, align 4
  %646 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %643, ptr %646, align 4
  %647 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %647, align 2
  %648 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %648, align 4
  %649 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %4, ptr %649, align 4
  %650 = load ptr, ptr %334, align 4
  %651 = call i32 @i2c_transfer(ptr noundef %650, ptr noundef nonnull %5, i32 noundef 2) #11
  %652 = icmp eq i32 %651, 2
  br i1 %652, label %658, label %653

653:                                              ; preds = %638
  %654 = load ptr, ptr %334, align 4
  %655 = getelementptr inbounds %struct.i2c_adapter, ptr %654, i32 0, i32 9
  %656 = load i8, ptr %3, align 1
  %657 = zext i8 %656 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %655, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %657, i32 noundef %651) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %676

658:                                              ; preds = %638
  %659 = load i8, ptr %4, align 1
  %660 = zext i8 %659 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  store i32 2, ptr %338, align 4
  %661 = and i32 %660, 96
  %662 = icmp eq i32 %661, 32
  br i1 %662, label %663, label %669

663:                                              ; preds = %658
  %664 = lshr i32 %660, 2
  %665 = and i32 %664, 3
  switch i32 %665, label %669 [
    i32 1, label %667
    i32 2, label %666
  ]

666:                                              ; preds = %663
  br label %667

667:                                              ; preds = %666, %663
  %668 = phi i32 [ 1, %666 ], [ 3, %663 ]
  store i32 %668, ptr %338, align 4
  br label %669

669:                                              ; preds = %667, %663, %658
  store i32 4, ptr %339, align 4
  %670 = and i32 %660, 16
  %671 = icmp eq i32 %670, 0
  br i1 %671, label %672, label %681

672:                                              ; preds = %669
  %673 = and i32 %660, 3
  %674 = icmp eq i32 %673, 3
  br i1 %674, label %681, label %679

675:                                              ; preds = %573, %560, %533, %520, %491, %478, %453, %440
  store i8 0, ptr %337, align 4
  br label %676

676:                                              ; preds = %675, %653, %627, %374, %355
  %677 = load ptr, ptr %48, align 4
  %678 = getelementptr inbounds %struct.i2c_adapter, ptr %677, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %678, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.mb86a20s_read_status_and_stats) #12
  br label %689

679:                                              ; preds = %672
  %680 = xor i32 %673, 3
  store i32 %680, ptr %339, align 4
  br label %681

681:                                              ; preds = %679, %672, %669
  %682 = call fastcc i32 @mb86a20s_get_stats(ptr noundef %0, i32 noundef %151)
  %683 = icmp slt i32 %682, 0
  %684 = icmp ne i32 %682, -16
  %685 = and i1 %683, %684
  br i1 %685, label %686, label %729

686:                                              ; preds = %681
  %687 = load ptr, ptr %48, align 4
  %688 = getelementptr inbounds %struct.i2c_adapter, ptr %687, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %688, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.mb86a20s_read_status_and_stats) #12
  br label %689

689:                                              ; preds = %686, %676, %282, %147
  %690 = phi i32 [ %100, %147 ], [ 0, %282 ], [ 0, %676 ], [ 0, %686 ]
  %691 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42
  store i8 1, ptr %691, align 4
  %692 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 4, ptr %692, align 1
  %693 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44
  store i8 4, ptr %693, align 2
  %694 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45
  store i8 4, ptr %694, align 1
  %695 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46
  store i8 4, ptr %695, align 4
  %696 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47
  store i8 4, ptr %696, align 1
  %697 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 4, ptr %697, align 2
  %698 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 4, ptr %698, align 1
  %699 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 2, ptr %699, align 1
  %700 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 0, ptr %700, align 1
  %701 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0
  store i8 0, ptr %701, align 1
  %702 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0
  store i8 0, ptr %702, align 1
  %703 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0
  store i8 0, ptr %703, align 1
  %704 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0
  store i8 0, ptr %704, align 1
  %705 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0
  store i8 0, ptr %705, align 1
  %706 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0
  store i8 0, ptr %706, align 1
  %707 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0
  store i8 0, ptr %707, align 1
  %708 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 1
  store i8 0, ptr %708, align 1
  %709 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 1
  store i8 0, ptr %709, align 1
  %710 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 1
  store i8 0, ptr %710, align 1
  %711 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 1
  store i8 0, ptr %711, align 1
  %712 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 1
  store i8 0, ptr %712, align 1
  %713 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 1
  store i8 0, ptr %713, align 1
  %714 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 1
  store i8 0, ptr %714, align 1
  %715 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 2
  store i8 0, ptr %715, align 1
  %716 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 2
  store i8 0, ptr %716, align 1
  %717 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 2
  store i8 0, ptr %717, align 1
  %718 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 2
  store i8 0, ptr %718, align 1
  %719 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 2
  store i8 0, ptr %719, align 1
  %720 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 2
  store i8 0, ptr %720, align 1
  %721 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 2
  store i8 0, ptr %721, align 1
  %722 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 3
  store i8 0, ptr %722, align 1
  %723 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 3
  store i8 0, ptr %723, align 1
  %724 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 3
  store i8 0, ptr %724, align 1
  %725 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 3
  store i8 0, ptr %725, align 1
  %726 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 3
  store i8 0, ptr %726, align 1
  %727 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 3
  store i8 0, ptr %727, align 1
  %728 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 3
  store i8 0, ptr %728, align 1
  br label %729

729:                                              ; preds = %689, %681, %330
  %730 = phi i32 [ %690, %689 ], [ %331, %330 ], [ 0, %681 ]
  %731 = load ptr, ptr %49, align 4
  %732 = icmp eq ptr %731, null
  br i1 %732, label %735, label %733

733:                                              ; preds = %729
  %734 = call i32 %731(ptr noundef %0, i32 noundef 1) #11
  br label %735

735:                                              ; preds = %733, %729
  ret i32 %730
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mb86a20s_read_signal_strength_from_cache(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %4 = load i64, ptr %3, align 1
  %5 = trunc i64 %4 to i16
  store i16 %5, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_i2c_writeregdata(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %5, i32 1
  %10 = getelementptr inbounds i8, ptr %6, i32 4
  %11 = zext i8 %1 to i16
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  br label %14

14:                                               ; preds = %30, %8
  %15 = phi i32 [ 0, %8 ], [ %31, %30 ]
  %16 = getelementptr %struct.regdata, ptr %2, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr %struct.regdata, ptr %2, i32 %15, i32 1
  %19 = load i8, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 %17, ptr %5, align 2
  store i8 %19, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  store i32 2, ptr %10, align 4, !annotation !8
  store i16 %11, ptr %6, align 4
  store i16 0, ptr %12, align 2
  store ptr %5, ptr %13, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %6, i32 noundef 1) #11
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  br label %30

24:                                               ; preds = %14
  %25 = load ptr, ptr %0, align 4
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %27 = zext i8 %17 to i32
  %28 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %21, i32 noundef %27, i32 noundef %28) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  %29 = icmp slt i32 %21, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %23
  %31 = add nuw nsw i32 %15, 1
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %33, label %14

33:                                               ; preds = %30, %24, %4
  %34 = phi i32 [ 0, %4 ], [ 0, %30 ], [ %21, %24 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_i2c_writereg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #11
  store i8 %2, ptr %5, align 2
  %7 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %3, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %8 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = zext i8 %1 to i16
  store i16 %9, ptr %6, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %12, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %6, i32 noundef 1) #11
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  %19 = zext i8 %2 to i32
  %20 = zext i8 %3 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %14, i32 noundef %19, i32 noundef %20) #12
  br label %21

21:                                               ; preds = %16, %4
  %22 = phi i32 [ %14, %16 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #11
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_get_stats(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [2 x i8], align 2
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [2 x i8], align 2
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca [2 x i8], align 2
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca %struct.i2c_msg, align 4
  %33 = alloca [2 x i8], align 2
  %34 = alloca %struct.i2c_msg, align 4
  %35 = alloca [2 x i8], align 2
  %36 = alloca %struct.i2c_msg, align 4
  %37 = alloca i8, align 1
  %38 = alloca i8, align 1
  %39 = alloca [2 x %struct.i2c_msg], align 4
  %40 = alloca [2 x i8], align 2
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [2 x i8], align 2
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [2 x i8], align 2
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca i8, align 1
  %47 = alloca i8, align 1
  %48 = alloca [2 x %struct.i2c_msg], align 4
  %49 = alloca [2 x i8], align 2
  %50 = alloca %struct.i2c_msg, align 4
  %51 = alloca [2 x i8], align 2
  %52 = alloca %struct.i2c_msg, align 4
  %53 = alloca [2 x i8], align 2
  %54 = alloca %struct.i2c_msg, align 4
  %55 = alloca [2 x i8], align 2
  %56 = alloca %struct.i2c_msg, align 4
  %57 = alloca [2 x i8], align 2
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [2 x i8], align 2
  %60 = alloca %struct.i2c_msg, align 4
  %61 = alloca [2 x i8], align 2
  %62 = alloca %struct.i2c_msg, align 4
  %63 = alloca [2 x i8], align 2
  %64 = alloca %struct.i2c_msg, align 4
  %65 = alloca i8, align 1
  %66 = alloca i8, align 1
  %67 = alloca [2 x %struct.i2c_msg], align 4
  %68 = alloca [2 x i8], align 2
  %69 = alloca %struct.i2c_msg, align 4
  %70 = alloca [2 x i8], align 2
  %71 = alloca %struct.i2c_msg, align 4
  %72 = alloca [2 x i8], align 2
  %73 = alloca %struct.i2c_msg, align 4
  %74 = alloca i8, align 1
  %75 = alloca i8, align 1
  %76 = alloca [2 x %struct.i2c_msg], align 4
  %77 = alloca [2 x i8], align 2
  %78 = alloca %struct.i2c_msg, align 4
  %79 = alloca i8, align 1
  %80 = alloca i8, align 1
  %81 = alloca [2 x %struct.i2c_msg], align 4
  %82 = alloca [2 x i8], align 2
  %83 = alloca %struct.i2c_msg, align 4
  %84 = alloca [2 x i8], align 2
  %85 = alloca %struct.i2c_msg, align 4
  %86 = alloca [2 x i8], align 2
  %87 = alloca %struct.i2c_msg, align 4
  %88 = alloca [2 x i8], align 2
  %89 = alloca %struct.i2c_msg, align 4
  %90 = alloca [2 x i8], align 2
  %91 = alloca %struct.i2c_msg, align 4
  %92 = alloca [2 x i8], align 2
  %93 = alloca %struct.i2c_msg, align 4
  %94 = alloca [2 x i8], align 2
  %95 = alloca %struct.i2c_msg, align 4
  %96 = alloca [2 x i8], align 2
  %97 = alloca %struct.i2c_msg, align 4
  %98 = alloca [2 x i8], align 2
  %99 = alloca %struct.i2c_msg, align 4
  %100 = alloca [2 x i8], align 2
  %101 = alloca %struct.i2c_msg, align 4
  %102 = alloca i8, align 1
  %103 = alloca i8, align 1
  %104 = alloca [2 x %struct.i2c_msg], align 4
  %105 = alloca [2 x i8], align 2
  %106 = alloca %struct.i2c_msg, align 4
  %107 = alloca [2 x i8], align 2
  %108 = alloca %struct.i2c_msg, align 4
  %109 = alloca [2 x i8], align 2
  %110 = alloca %struct.i2c_msg, align 4
  %111 = alloca i8, align 1
  %112 = alloca i8, align 1
  %113 = alloca [2 x %struct.i2c_msg], align 4
  %114 = alloca [2 x i8], align 2
  %115 = alloca %struct.i2c_msg, align 4
  %116 = alloca i8, align 1
  %117 = alloca i8, align 1
  %118 = alloca [2 x %struct.i2c_msg], align 4
  %119 = alloca [2 x i8], align 2
  %120 = alloca %struct.i2c_msg, align 4
  %121 = alloca i8, align 1
  %122 = alloca i8, align 1
  %123 = alloca [2 x %struct.i2c_msg], align 4
  %124 = alloca [2 x i8], align 2
  %125 = alloca %struct.i2c_msg, align 4
  %126 = alloca i8, align 1
  %127 = alloca i8, align 1
  %128 = alloca [2 x %struct.i2c_msg], align 4
  %129 = alloca [2 x i8], align 2
  %130 = alloca %struct.i2c_msg, align 4
  %131 = alloca i8, align 1
  %132 = alloca i8, align 1
  %133 = alloca [2 x %struct.i2c_msg], align 4
  %134 = alloca i8, align 1
  %135 = alloca i8, align 1
  %136 = alloca [2 x %struct.i2c_msg], align 4
  %137 = alloca i8, align 1
  %138 = alloca i8, align 1
  %139 = alloca [2 x %struct.i2c_msg], align 4
  %140 = alloca i8, align 1
  %141 = alloca i8, align 1
  %142 = alloca [2 x %struct.i2c_msg], align 4
  %143 = alloca i8, align 1
  %144 = alloca i8, align 1
  %145 = alloca [2 x %struct.i2c_msg], align 4
  %146 = alloca [2 x i8], align 2
  %147 = alloca %struct.i2c_msg, align 4
  %148 = alloca i8, align 1
  %149 = alloca i8, align 1
  %150 = alloca [2 x %struct.i2c_msg], align 4
  %151 = alloca i8, align 1
  %152 = alloca i8, align 1
  %153 = alloca [2 x %struct.i2c_msg], align 4
  %154 = alloca i8, align 1
  %155 = alloca i8, align 1
  %156 = alloca [2 x %struct.i2c_msg], align 4
  %157 = alloca i8, align 1
  %158 = alloca i8, align 1
  %159 = alloca [2 x %struct.i2c_msg], align 4
  %160 = alloca [2 x i8], align 2
  %161 = alloca %struct.i2c_msg, align 4
  %162 = alloca i8, align 1
  %163 = alloca i8, align 1
  %164 = alloca [2 x %struct.i2c_msg], align 4
  %165 = alloca [2 x i8], align 2
  %166 = alloca %struct.i2c_msg, align 4
  %167 = alloca i8, align 1
  %168 = alloca i8, align 1
  %169 = alloca [2 x %struct.i2c_msg], align 4
  %170 = alloca [2 x i8], align 2
  %171 = alloca %struct.i2c_msg, align 4
  %172 = alloca i8, align 1
  %173 = alloca i8, align 1
  %174 = alloca [2 x %struct.i2c_msg], align 4
  %175 = alloca [2 x i8], align 2
  %176 = alloca %struct.i2c_msg, align 4
  %177 = alloca i8, align 1
  %178 = alloca i8, align 1
  %179 = alloca [2 x %struct.i2c_msg], align 4
  %180 = alloca [2 x i8], align 2
  %181 = alloca %struct.i2c_msg, align 4
  %182 = alloca i8, align 1
  %183 = alloca i8, align 1
  %184 = alloca [2 x %struct.i2c_msg], align 4
  %185 = alloca [2 x i8], align 2
  %186 = alloca %struct.i2c_msg, align 4
  %187 = alloca [2 x i8], align 2
  %188 = alloca %struct.i2c_msg, align 4
  %189 = alloca [2 x i8], align 2
  %190 = alloca %struct.i2c_msg, align 4
  %191 = alloca i8, align 1
  %192 = alloca i8, align 1
  %193 = alloca [2 x %struct.i2c_msg], align 4
  %194 = alloca i8, align 1
  %195 = alloca i8, align 1
  %196 = alloca [2 x %struct.i2c_msg], align 4
  %197 = alloca i8, align 1
  %198 = alloca i8, align 1
  %199 = alloca [2 x %struct.i2c_msg], align 4
  %200 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.mb86a20s_state, ptr %201, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  %204 = getelementptr inbounds %struct.mb86a20s_config, ptr %203, i32 0, i32 1
  %205 = load i8, ptr %204, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %197) #11
  store i8 69, ptr %197, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %198) #11
  store i8 0, ptr %198, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %199) #11
  %206 = getelementptr inbounds i8, ptr %199, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %206, i8 0, i32 16, i1 false) #11, !annotation !8
  %207 = zext i8 %205 to i16
  store i16 %207, ptr %199, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %199, i32 0, i32 1
  store i16 0, ptr %208, align 2
  store i16 1, ptr %206, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %199, i32 0, i32 3
  store ptr %197, ptr %209, align 4
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %199, i32 1
  store i16 %207, ptr %210, align 4
  %211 = getelementptr inbounds %struct.i2c_msg, ptr %199, i32 1, i32 1
  store i16 1, ptr %211, align 2
  %212 = getelementptr inbounds %struct.i2c_msg, ptr %199, i32 1, i32 2
  store i16 1, ptr %212, align 4
  %213 = getelementptr inbounds %struct.i2c_msg, ptr %199, i32 1, i32 3
  store ptr %198, ptr %213, align 4
  %214 = load ptr, ptr %201, align 4
  %215 = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %199, i32 noundef 2) #11
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %222, label %217

217:                                              ; preds = %2
  %218 = load ptr, ptr %201, align 4
  %219 = getelementptr inbounds %struct.i2c_adapter, ptr %218, i32 0, i32 9
  %220 = load i8, ptr %197, align 1
  %221 = zext i8 %220 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %219, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %221, i32 noundef %215) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %199) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %198) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %197) #11
  br label %357

222:                                              ; preds = %2
  %223 = load i8, ptr %198, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %199) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %198) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %197) #11
  %224 = and i8 %223, 64
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %357, label %226

226:                                              ; preds = %222
  %227 = load ptr, ptr %202, align 4
  %228 = getelementptr inbounds %struct.mb86a20s_config, ptr %227, i32 0, i32 1
  %229 = load i8, ptr %228, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %194) #11
  store i8 70, ptr %194, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %195) #11
  store i8 0, ptr %195, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %196) #11
  %230 = getelementptr inbounds i8, ptr %196, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %230, i8 0, i32 16, i1 false) #11, !annotation !8
  %231 = zext i8 %229 to i16
  store i16 %231, ptr %196, align 4
  %232 = getelementptr inbounds %struct.i2c_msg, ptr %196, i32 0, i32 1
  store i16 0, ptr %232, align 2
  store i16 1, ptr %230, align 4
  %233 = getelementptr inbounds %struct.i2c_msg, ptr %196, i32 0, i32 3
  store ptr %194, ptr %233, align 4
  %234 = getelementptr inbounds %struct.i2c_msg, ptr %196, i32 1
  store i16 %231, ptr %234, align 4
  %235 = getelementptr inbounds %struct.i2c_msg, ptr %196, i32 1, i32 1
  store i16 1, ptr %235, align 2
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %196, i32 1, i32 2
  store i16 1, ptr %236, align 4
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %196, i32 1, i32 3
  store ptr %195, ptr %237, align 4
  %238 = load ptr, ptr %201, align 4
  %239 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %196, i32 noundef 2) #11
  %240 = icmp eq i32 %239, 2
  br i1 %240, label %246, label %241

241:                                              ; preds = %226
  %242 = load ptr, ptr %201, align 4
  %243 = getelementptr inbounds %struct.i2c_adapter, ptr %242, i32 0, i32 9
  %244 = load i8, ptr %194, align 1
  %245 = zext i8 %244 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %243, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %245, i32 noundef %239) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %196) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %195) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %194) #11
  br label %357

246:                                              ; preds = %226
  %247 = load i8, ptr %195, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %196) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %195) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %194) #11
  %248 = load ptr, ptr %202, align 4
  %249 = getelementptr inbounds %struct.mb86a20s_config, ptr %248, i32 0, i32 1
  %250 = load i8, ptr %249, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %191) #11
  store i8 70, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %192) #11
  store i8 0, ptr %192, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %193) #11
  %251 = getelementptr inbounds i8, ptr %193, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %251, i8 0, i32 16, i1 false) #11, !annotation !8
  %252 = zext i8 %250 to i16
  store i16 %252, ptr %193, align 4
  %253 = getelementptr inbounds %struct.i2c_msg, ptr %193, i32 0, i32 1
  store i16 0, ptr %253, align 2
  store i16 1, ptr %251, align 4
  %254 = getelementptr inbounds %struct.i2c_msg, ptr %193, i32 0, i32 3
  store ptr %191, ptr %254, align 4
  %255 = getelementptr inbounds %struct.i2c_msg, ptr %193, i32 1
  store i16 %252, ptr %255, align 4
  %256 = getelementptr inbounds %struct.i2c_msg, ptr %193, i32 1, i32 1
  store i16 1, ptr %256, align 2
  %257 = getelementptr inbounds %struct.i2c_msg, ptr %193, i32 1, i32 2
  store i16 1, ptr %257, align 4
  %258 = getelementptr inbounds %struct.i2c_msg, ptr %193, i32 1, i32 3
  store ptr %192, ptr %258, align 4
  %259 = load ptr, ptr %201, align 4
  %260 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %193, i32 noundef 2) #11
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %267, label %262

262:                                              ; preds = %246
  %263 = load ptr, ptr %201, align 4
  %264 = getelementptr inbounds %struct.i2c_adapter, ptr %263, i32 0, i32 9
  %265 = load i8, ptr %191, align 1
  %266 = zext i8 %265 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %266, i32 noundef %260) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %193) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %192) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %191) #11
  br label %357

267:                                              ; preds = %246
  %268 = zext i8 %247 to i32
  %269 = load i8, ptr %192, align 1
  %270 = zext i8 %269 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %193) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %192) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %191) #11
  %271 = shl nuw nsw i32 %268, 8
  %272 = or i32 %271, %270
  %273 = icmp ult i32 %272, 19648
  br i1 %273, label %274, label %316

274:                                              ; preds = %267
  %275 = icmp ult i32 %272, 788
  br i1 %275, label %316, label %276

276:                                              ; preds = %286, %274
  %277 = phi i32 [ %287, %286 ], [ 1, %274 ]
  %278 = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %277
  %279 = load i32, ptr %278, align 4
  %280 = icmp eq i32 %279, %272
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %277, i32 1
  %283 = load i32, ptr %282, align 4
  br label %316

284:                                              ; preds = %276
  %285 = icmp ult i32 %279, %272
  br i1 %285, label %289, label %286

286:                                              ; preds = %284
  %287 = add nuw nsw i32 %277, 1
  %288 = icmp eq i32 %287, 30
  br i1 %288, label %289, label %276

289:                                              ; preds = %286, %284
  %290 = phi i32 [ 788, %286 ], [ %279, %284 ]
  %291 = phi i32 [ 30, %286 ], [ %277, %284 ]
  %292 = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %291, i32 1
  %293 = load i32, ptr %292, align 4
  %294 = add nsw i32 %291, -1
  %295 = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %294
  %296 = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %294, i32 1
  %297 = load i32, ptr %296, align 4
  %298 = sub i32 %293, %297
  %299 = load i32, ptr %295, align 4
  %300 = sub i32 %299, %290
  %301 = sub i32 %272, %290
  %302 = zext i32 %301 to i64
  %303 = zext i32 %298 to i64
  %304 = mul nuw i64 %303, %302
  %305 = icmp ult i64 %304, 4294967296
  br i1 %305, label %306, label %309, !prof !10

306:                                              ; preds = %289
  %307 = trunc i64 %304 to i32
  %308 = udiv i32 %307, %300
  br label %313

309:                                              ; preds = %289
  %310 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %300, i64 %304) #13, !srcloc !11
  %311 = extractvalue { i64, i64 } %310, 1
  %312 = trunc i64 %311 to i32
  br label %313

313:                                              ; preds = %309, %306
  %314 = phi i32 [ %308, %306 ], [ %312, %309 ]
  %315 = sub i32 %293, %314
  br label %316

316:                                              ; preds = %313, %281, %274, %267
  %317 = phi i32 [ %283, %281 ], [ %315, %313 ], [ 0, %267 ], [ 30000, %274 ]
  %318 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %318, align 1
  %319 = zext i32 %317 to i64
  %320 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %319, ptr %320, align 1
  %321 = load ptr, ptr %202, align 4
  %322 = getelementptr inbounds %struct.mb86a20s_config, ptr %321, i32 0, i32 1
  %323 = load i8, ptr %322, align 4
  %324 = or i8 %223, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %189) #11
  store i8 69, ptr %189, align 2
  %325 = getelementptr inbounds i8, ptr %189, i32 1
  store i8 %324, ptr %325, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %190) #11
  %326 = getelementptr inbounds i8, ptr %190, i32 4
  store i32 2, ptr %326, align 4, !annotation !8
  %327 = zext i8 %323 to i16
  store i16 %327, ptr %190, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %190, i32 0, i32 1
  store i16 0, ptr %328, align 2
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %190, i32 0, i32 3
  store ptr %189, ptr %329, align 4
  %330 = load ptr, ptr %201, align 4
  %331 = call i32 @i2c_transfer(ptr noundef %330, ptr noundef nonnull %190, i32 noundef 1) #11
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %334

333:                                              ; preds = %316
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %190) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %189) #11
  br label %339

334:                                              ; preds = %316
  %335 = load ptr, ptr %201, align 4
  %336 = getelementptr inbounds %struct.i2c_adapter, ptr %335, i32 0, i32 9
  %337 = zext i8 %324 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %336, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %331, i32 noundef 69, i32 noundef %337) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %190) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %189) #11
  %338 = icmp slt i32 %331, 0
  br i1 %338, label %357, label %339

339:                                              ; preds = %334, %333
  %340 = load ptr, ptr %202, align 4
  %341 = getelementptr inbounds %struct.mb86a20s_config, ptr %340, i32 0, i32 1
  %342 = load i8, ptr %341, align 4
  %343 = and i8 %223, 111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %187) #11
  store i8 69, ptr %187, align 2
  %344 = getelementptr inbounds i8, ptr %187, i32 1
  store i8 %343, ptr %344, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %188) #11
  %345 = getelementptr inbounds i8, ptr %188, i32 4
  store i32 2, ptr %345, align 4, !annotation !8
  %346 = zext i8 %342 to i16
  store i16 %346, ptr %188, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %188, i32 0, i32 1
  store i16 0, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %188, i32 0, i32 3
  store ptr %187, ptr %348, align 4
  %349 = load ptr, ptr %201, align 4
  %350 = call i32 @i2c_transfer(ptr noundef %349, ptr noundef nonnull %188, i32 noundef 1) #11
  %351 = icmp eq i32 %350, 1
  br i1 %351, label %356, label %352

352:                                              ; preds = %339
  %353 = load ptr, ptr %201, align 4
  %354 = getelementptr inbounds %struct.i2c_adapter, ptr %353, i32 0, i32 9
  %355 = zext i8 %343 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %354, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %350, i32 noundef 69, i32 noundef %355) #12
  br label %356

356:                                              ; preds = %352, %339
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %188) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %187) #11
  br label %357

357:                                              ; preds = %356, %334, %262, %241, %222, %217
  %358 = load ptr, ptr %200, align 4
  %359 = getelementptr inbounds %struct.mb86a20s_state, ptr %358, i32 0, i32 1
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.mb86a20s_config, ptr %360, i32 0, i32 1
  %362 = load i8, ptr %361, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %185) #11
  store i8 80, ptr %185, align 2
  %363 = getelementptr inbounds i8, ptr %185, i32 1
  store i8 91, ptr %363, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %186) #11
  %364 = getelementptr inbounds i8, ptr %186, i32 4
  store i32 2, ptr %364, align 4, !annotation !8
  %365 = zext i8 %362 to i16
  store i16 %365, ptr %186, align 4
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %186, i32 0, i32 1
  store i16 0, ptr %366, align 2
  %367 = getelementptr inbounds %struct.i2c_msg, ptr %186, i32 0, i32 3
  store ptr %185, ptr %367, align 4
  %368 = load ptr, ptr %358, align 4
  %369 = call i32 @i2c_transfer(ptr noundef %368, ptr noundef nonnull %186, i32 noundef 1) #11
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %372

371:                                              ; preds = %357
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %186) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %185) #11
  br label %376

372:                                              ; preds = %357
  %373 = load ptr, ptr %358, align 4
  %374 = getelementptr inbounds %struct.i2c_adapter, ptr %373, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %374, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %369, i32 noundef 80, i32 noundef 91) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %186) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %185) #11
  %375 = icmp slt i32 %369, 0
  br i1 %375, label %684, label %376

376:                                              ; preds = %372, %371
  %377 = load ptr, ptr %359, align 4
  %378 = getelementptr inbounds %struct.mb86a20s_config, ptr %377, i32 0, i32 1
  %379 = load i8, ptr %378, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %182) #11
  store i8 81, ptr %182, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %183) #11
  store i8 0, ptr %183, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %184) #11
  %380 = getelementptr inbounds i8, ptr %184, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %380, i8 0, i32 16, i1 false) #11, !annotation !8
  %381 = zext i8 %379 to i16
  store i16 %381, ptr %184, align 4
  %382 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 0, i32 1
  store i16 0, ptr %382, align 2
  store i16 1, ptr %380, align 4
  %383 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 0, i32 3
  store ptr %182, ptr %383, align 4
  %384 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 1
  store i16 %381, ptr %384, align 4
  %385 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 1, i32 1
  store i16 1, ptr %385, align 2
  %386 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 1, i32 2
  store i16 1, ptr %386, align 4
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %184, i32 1, i32 3
  store ptr %183, ptr %387, align 4
  %388 = load ptr, ptr %358, align 4
  %389 = call i32 @i2c_transfer(ptr noundef %388, ptr noundef nonnull %184, i32 noundef 2) #11
  %390 = icmp eq i32 %389, 2
  br i1 %390, label %396, label %391

391:                                              ; preds = %376
  %392 = load ptr, ptr %358, align 4
  %393 = getelementptr inbounds %struct.i2c_adapter, ptr %392, i32 0, i32 9
  %394 = load i8, ptr %182, align 1
  %395 = zext i8 %394 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %393, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %395, i32 noundef %389) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %184) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %183) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %182) #11
  br label %684

396:                                              ; preds = %376
  %397 = load i8, ptr %183, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %184) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %183) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %182) #11
  %398 = and i8 %397, 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %684, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  %402 = getelementptr inbounds i8, ptr %180, i32 1
  %403 = getelementptr inbounds i8, ptr %181, i32 4
  %404 = getelementptr inbounds %struct.i2c_msg, ptr %181, i32 0, i32 1
  %405 = getelementptr inbounds %struct.i2c_msg, ptr %181, i32 0, i32 3
  %406 = getelementptr inbounds i8, ptr %179, i32 4
  %407 = getelementptr inbounds %struct.i2c_msg, ptr %179, i32 0, i32 1
  %408 = getelementptr inbounds %struct.i2c_msg, ptr %179, i32 0, i32 3
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %179, i32 1
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %179, i32 1, i32 1
  %411 = getelementptr inbounds %struct.i2c_msg, ptr %179, i32 1, i32 2
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %179, i32 1, i32 3
  %413 = getelementptr inbounds i8, ptr %175, i32 1
  %414 = getelementptr inbounds i8, ptr %176, i32 4
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %176, i32 0, i32 1
  %416 = getelementptr inbounds %struct.i2c_msg, ptr %176, i32 0, i32 3
  %417 = getelementptr inbounds i8, ptr %174, i32 4
  %418 = getelementptr inbounds %struct.i2c_msg, ptr %174, i32 0, i32 1
  %419 = getelementptr inbounds %struct.i2c_msg, ptr %174, i32 0, i32 3
  %420 = getelementptr inbounds %struct.i2c_msg, ptr %174, i32 1
  %421 = getelementptr inbounds %struct.i2c_msg, ptr %174, i32 1, i32 1
  %422 = getelementptr inbounds %struct.i2c_msg, ptr %174, i32 1, i32 2
  %423 = getelementptr inbounds %struct.i2c_msg, ptr %174, i32 1, i32 3
  %424 = getelementptr inbounds i8, ptr %170, i32 1
  %425 = getelementptr inbounds i8, ptr %171, i32 4
  %426 = getelementptr inbounds %struct.i2c_msg, ptr %171, i32 0, i32 1
  %427 = getelementptr inbounds %struct.i2c_msg, ptr %171, i32 0, i32 3
  %428 = getelementptr inbounds i8, ptr %169, i32 4
  %429 = getelementptr inbounds %struct.i2c_msg, ptr %169, i32 0, i32 1
  %430 = getelementptr inbounds %struct.i2c_msg, ptr %169, i32 0, i32 3
  %431 = getelementptr inbounds %struct.i2c_msg, ptr %169, i32 1
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %169, i32 1, i32 1
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %169, i32 1, i32 2
  %434 = getelementptr inbounds %struct.i2c_msg, ptr %169, i32 1, i32 3
  br label %435

435:                                              ; preds = %606, %400
  %436 = phi i32 [ 0, %400 ], [ %607, %606 ]
  %437 = load i8, ptr %401, align 4
  %438 = zext i8 %437 to i32
  %439 = shl nuw nsw i32 1, %436
  %440 = and i32 %439, %438
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %435
  %443 = add nuw nsw i32 %436, 1
  %444 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 %443
  store i8 0, ptr %444, align 1
  br label %606

445:                                              ; preds = %435
  %446 = load ptr, ptr %359, align 4
  %447 = getelementptr inbounds %struct.mb86a20s_config, ptr %446, i32 0, i32 1
  %448 = load i8, ptr %447, align 4
  %449 = trunc i32 %436 to i8
  %450 = mul i8 %449, 3
  %451 = add i8 %450, 82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %180) #11
  store i8 80, ptr %180, align 2
  store i8 %451, ptr %402, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %181) #11
  store i32 2, ptr %403, align 4, !annotation !8
  %452 = zext i8 %448 to i16
  store i16 %452, ptr %181, align 4
  store i16 0, ptr %404, align 2
  store ptr %180, ptr %405, align 4
  %453 = load ptr, ptr %358, align 4
  %454 = call i32 @i2c_transfer(ptr noundef %453, ptr noundef nonnull %181, i32 noundef 1) #11
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %456, label %457

456:                                              ; preds = %445
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %181) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %180) #11
  br label %462

457:                                              ; preds = %445
  %458 = load ptr, ptr %358, align 4
  %459 = getelementptr inbounds %struct.i2c_adapter, ptr %458, i32 0, i32 9
  %460 = zext i8 %451 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %459, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %454, i32 noundef 80, i32 noundef %460) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %181) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %180) #11
  %461 = icmp slt i32 %454, 0
  br i1 %461, label %684, label %462

462:                                              ; preds = %457, %456
  %463 = load ptr, ptr %359, align 4
  %464 = getelementptr inbounds %struct.mb86a20s_config, ptr %463, i32 0, i32 1
  %465 = load i8, ptr %464, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %177) #11
  store i8 81, ptr %177, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %178) #11
  store i8 0, ptr %178, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %179) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %406, i8 0, i32 16, i1 false) #11, !annotation !8
  %466 = zext i8 %465 to i16
  store i16 %466, ptr %179, align 4
  store i16 0, ptr %407, align 2
  store i16 1, ptr %406, align 4
  store ptr %177, ptr %408, align 4
  store i16 %466, ptr %409, align 4
  store i16 1, ptr %410, align 2
  store i16 1, ptr %411, align 4
  store ptr %178, ptr %412, align 4
  %467 = load ptr, ptr %358, align 4
  %468 = call i32 @i2c_transfer(ptr noundef %467, ptr noundef nonnull %179, i32 noundef 2) #11
  %469 = icmp eq i32 %468, 2
  br i1 %469, label %475, label %470

470:                                              ; preds = %462
  %471 = load ptr, ptr %358, align 4
  %472 = getelementptr inbounds %struct.i2c_adapter, ptr %471, i32 0, i32 9
  %473 = load i8, ptr %177, align 1
  %474 = zext i8 %473 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %472, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %474, i32 noundef %468) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %179) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %178) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %177) #11
  br label %684

475:                                              ; preds = %462
  %476 = load i8, ptr %178, align 1
  %477 = zext i8 %476 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %179) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %178) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %177) #11
  %478 = shl nuw nsw i32 %477, 16
  %479 = load ptr, ptr %359, align 4
  %480 = getelementptr inbounds %struct.mb86a20s_config, ptr %479, i32 0, i32 1
  %481 = load i8, ptr %480, align 4
  %482 = add i8 %450, 83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %175) #11
  store i8 80, ptr %175, align 2
  store i8 %482, ptr %413, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %176) #11
  store i32 2, ptr %414, align 4, !annotation !8
  %483 = zext i8 %481 to i16
  store i16 %483, ptr %176, align 4
  store i16 0, ptr %415, align 2
  store ptr %175, ptr %416, align 4
  %484 = load ptr, ptr %358, align 4
  %485 = call i32 @i2c_transfer(ptr noundef %484, ptr noundef nonnull %176, i32 noundef 1) #11
  %486 = icmp eq i32 %485, 1
  br i1 %486, label %487, label %488

487:                                              ; preds = %475
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %176) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %175) #11
  br label %493

488:                                              ; preds = %475
  %489 = load ptr, ptr %358, align 4
  %490 = getelementptr inbounds %struct.i2c_adapter, ptr %489, i32 0, i32 9
  %491 = zext i8 %482 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %490, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %485, i32 noundef 80, i32 noundef %491) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %176) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %175) #11
  %492 = icmp slt i32 %485, 0
  br i1 %492, label %684, label %493

493:                                              ; preds = %488, %487
  %494 = load ptr, ptr %359, align 4
  %495 = getelementptr inbounds %struct.mb86a20s_config, ptr %494, i32 0, i32 1
  %496 = load i8, ptr %495, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %172) #11
  store i8 81, ptr %172, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %173) #11
  store i8 0, ptr %173, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %174) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %417, i8 0, i32 16, i1 false) #11, !annotation !8
  %497 = zext i8 %496 to i16
  store i16 %497, ptr %174, align 4
  store i16 0, ptr %418, align 2
  store i16 1, ptr %417, align 4
  store ptr %172, ptr %419, align 4
  store i16 %497, ptr %420, align 4
  store i16 1, ptr %421, align 2
  store i16 1, ptr %422, align 4
  store ptr %173, ptr %423, align 4
  %498 = load ptr, ptr %358, align 4
  %499 = call i32 @i2c_transfer(ptr noundef %498, ptr noundef nonnull %174, i32 noundef 2) #11
  %500 = icmp eq i32 %499, 2
  br i1 %500, label %506, label %501

501:                                              ; preds = %493
  %502 = load ptr, ptr %358, align 4
  %503 = getelementptr inbounds %struct.i2c_adapter, ptr %502, i32 0, i32 9
  %504 = load i8, ptr %172, align 1
  %505 = zext i8 %504 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %503, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %505, i32 noundef %499) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %174) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %173) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %172) #11
  br label %684

506:                                              ; preds = %493
  %507 = load i8, ptr %173, align 1
  %508 = zext i8 %507 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %174) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %173) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %172) #11
  %509 = shl nuw nsw i32 %508, 8
  %510 = or i32 %509, %478
  %511 = load ptr, ptr %359, align 4
  %512 = getelementptr inbounds %struct.mb86a20s_config, ptr %511, i32 0, i32 1
  %513 = load i8, ptr %512, align 4
  %514 = add i8 %450, 84
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %170) #11
  store i8 80, ptr %170, align 2
  store i8 %514, ptr %424, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %171) #11
  store i32 2, ptr %425, align 4, !annotation !8
  %515 = zext i8 %513 to i16
  store i16 %515, ptr %171, align 4
  store i16 0, ptr %426, align 2
  store ptr %170, ptr %427, align 4
  %516 = load ptr, ptr %358, align 4
  %517 = call i32 @i2c_transfer(ptr noundef %516, ptr noundef nonnull %171, i32 noundef 1) #11
  %518 = icmp eq i32 %517, 1
  br i1 %518, label %519, label %520

519:                                              ; preds = %506
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %171) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %170) #11
  br label %525

520:                                              ; preds = %506
  %521 = load ptr, ptr %358, align 4
  %522 = getelementptr inbounds %struct.i2c_adapter, ptr %521, i32 0, i32 9
  %523 = zext i8 %514 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %522, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %517, i32 noundef 80, i32 noundef %523) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %171) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %170) #11
  %524 = icmp slt i32 %517, 0
  br i1 %524, label %684, label %525

525:                                              ; preds = %520, %519
  %526 = load ptr, ptr %359, align 4
  %527 = getelementptr inbounds %struct.mb86a20s_config, ptr %526, i32 0, i32 1
  %528 = load i8, ptr %527, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %167) #11
  store i8 81, ptr %167, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %168) #11
  store i8 0, ptr %168, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %169) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %428, i8 0, i32 16, i1 false) #11, !annotation !8
  %529 = zext i8 %528 to i16
  store i16 %529, ptr %169, align 4
  store i16 0, ptr %429, align 2
  store i16 1, ptr %428, align 4
  store ptr %167, ptr %430, align 4
  store i16 %529, ptr %431, align 4
  store i16 1, ptr %432, align 2
  store i16 1, ptr %433, align 4
  store ptr %168, ptr %434, align 4
  %530 = load ptr, ptr %358, align 4
  %531 = call i32 @i2c_transfer(ptr noundef %530, ptr noundef nonnull %169, i32 noundef 2) #11
  %532 = icmp eq i32 %531, 2
  br i1 %532, label %538, label %533

533:                                              ; preds = %525
  %534 = load ptr, ptr %358, align 4
  %535 = getelementptr inbounds %struct.i2c_adapter, ptr %534, i32 0, i32 9
  %536 = load i8, ptr %167, align 1
  %537 = zext i8 %536 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %535, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %537, i32 noundef %531) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %169) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %168) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %167) #11
  br label %684

538:                                              ; preds = %525
  %539 = load i8, ptr %168, align 1
  %540 = zext i8 %539 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %169) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %168) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %167) #11
  %541 = or i32 %510, %540
  %542 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 23, i32 %436, i32 2
  %543 = load i32, ptr %542, align 4
  switch i32 %543, label %545 [
    i32 12, label %546
    i32 0, label %546
    i32 1, label %544
  ]

544:                                              ; preds = %538
  br label %546

545:                                              ; preds = %538
  br label %546

546:                                              ; preds = %545, %544, %538, %538
  %547 = phi ptr [ @cnr_64qam_table, %545 ], [ @cnr_16qam_table, %544 ], [ @cnr_qpsk_table, %538 ], [ @cnr_qpsk_table, %538 ]
  %548 = load i32, ptr %547, align 4
  %549 = icmp ugt i32 %548, %541
  br i1 %549, label %553, label %550

550:                                              ; preds = %546
  %551 = getelementptr inbounds %struct.linear_segments, ptr %547, i32 0, i32 1
  %552 = load i32, ptr %551, align 4
  br label %600

553:                                              ; preds = %546
  %554 = getelementptr %struct.linear_segments, ptr %547, i32 30
  %555 = load i32, ptr %554, align 4
  %556 = icmp ugt i32 %555, %541
  br i1 %556, label %557, label %560

557:                                              ; preds = %553
  %558 = getelementptr %struct.linear_segments, ptr %547, i32 30, i32 1
  %559 = load i32, ptr %558, align 4
  br label %600

560:                                              ; preds = %570, %553
  %561 = phi i32 [ %571, %570 ], [ 1, %553 ]
  %562 = getelementptr %struct.linear_segments, ptr %547, i32 %561
  %563 = load i32, ptr %562, align 4
  %564 = icmp eq i32 %563, %541
  br i1 %564, label %565, label %568

565:                                              ; preds = %560
  %566 = getelementptr %struct.linear_segments, ptr %547, i32 %561, i32 1
  %567 = load i32, ptr %566, align 4
  br label %600

568:                                              ; preds = %560
  %569 = icmp ult i32 %563, %541
  br i1 %569, label %573, label %570

570:                                              ; preds = %568
  %571 = add nuw nsw i32 %561, 1
  %572 = icmp eq i32 %571, 30
  br i1 %572, label %573, label %560

573:                                              ; preds = %570, %568
  %574 = phi i32 [ %555, %570 ], [ %563, %568 ]
  %575 = phi i32 [ 30, %570 ], [ %561, %568 ]
  %576 = getelementptr %struct.linear_segments, ptr %547, i32 %575, i32 1
  %577 = load i32, ptr %576, align 4
  %578 = add nsw i32 %575, -1
  %579 = getelementptr %struct.linear_segments, ptr %547, i32 %578
  %580 = getelementptr %struct.linear_segments, ptr %547, i32 %578, i32 1
  %581 = load i32, ptr %580, align 4
  %582 = sub i32 %577, %581
  %583 = load i32, ptr %579, align 4
  %584 = sub i32 %583, %574
  %585 = sub i32 %541, %574
  %586 = zext i32 %585 to i64
  %587 = zext i32 %582 to i64
  %588 = mul nuw i64 %587, %586
  %589 = icmp ult i64 %588, 4294967296
  br i1 %589, label %590, label %593, !prof !10

590:                                              ; preds = %573
  %591 = trunc i64 %588 to i32
  %592 = udiv i32 %591, %584
  br label %597

593:                                              ; preds = %573
  %594 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %584, i64 %588) #13, !srcloc !11
  %595 = extractvalue { i64, i64 } %594, 1
  %596 = trunc i64 %595 to i32
  br label %597

597:                                              ; preds = %593, %590
  %598 = phi i32 [ %592, %590 ], [ %596, %593 ]
  %599 = sub i32 %577, %598
  br label %600

600:                                              ; preds = %597, %565, %557, %550
  %601 = phi i32 [ %552, %550 ], [ %559, %557 ], [ %567, %565 ], [ %599, %597 ]
  %602 = add nuw nsw i32 %436, 1
  %603 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 %602
  store i8 1, ptr %603, align 1
  %604 = zext i32 %601 to i64
  %605 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 %602, i32 1
  store i64 %604, ptr %605, align 1
  br label %606

606:                                              ; preds = %600, %442
  %607 = phi i32 [ %602, %600 ], [ %443, %442 ]
  %608 = icmp eq i32 %607, 3
  br i1 %608, label %609, label %435

609:                                              ; preds = %606
  %610 = load ptr, ptr %359, align 4
  %611 = getelementptr inbounds %struct.mb86a20s_config, ptr %610, i32 0, i32 1
  %612 = load i8, ptr %611, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %165) #11
  store i8 80, ptr %165, align 2
  %613 = getelementptr inbounds i8, ptr %165, i32 1
  store i8 80, ptr %613, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %166) #11
  %614 = getelementptr inbounds i8, ptr %166, i32 4
  store i32 2, ptr %614, align 4, !annotation !8
  %615 = zext i8 %612 to i16
  store i16 %615, ptr %166, align 4
  %616 = getelementptr inbounds %struct.i2c_msg, ptr %166, i32 0, i32 1
  store i16 0, ptr %616, align 2
  %617 = getelementptr inbounds %struct.i2c_msg, ptr %166, i32 0, i32 3
  store ptr %165, ptr %617, align 4
  %618 = load ptr, ptr %358, align 4
  %619 = call i32 @i2c_transfer(ptr noundef %618, ptr noundef nonnull %166, i32 noundef 1) #11
  %620 = icmp eq i32 %619, 1
  br i1 %620, label %621, label %622

621:                                              ; preds = %609
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %166) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %165) #11
  br label %626

622:                                              ; preds = %609
  %623 = load ptr, ptr %358, align 4
  %624 = getelementptr inbounds %struct.i2c_adapter, ptr %623, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %624, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %619, i32 noundef 80, i32 noundef 80) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %166) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %165) #11
  %625 = icmp slt i32 %619, 0
  br i1 %625, label %684, label %626

626:                                              ; preds = %622, %621
  %627 = load ptr, ptr %359, align 4
  %628 = getelementptr inbounds %struct.mb86a20s_config, ptr %627, i32 0, i32 1
  %629 = load i8, ptr %628, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %162) #11
  store i8 81, ptr %162, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %163) #11
  store i8 0, ptr %163, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %164) #11
  %630 = getelementptr inbounds i8, ptr %164, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %630, i8 0, i32 16, i1 false) #11, !annotation !8
  %631 = zext i8 %629 to i16
  store i16 %631, ptr %164, align 4
  %632 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 0, i32 1
  store i16 0, ptr %632, align 2
  store i16 1, ptr %630, align 4
  %633 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 0, i32 3
  store ptr %162, ptr %633, align 4
  %634 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 1
  store i16 %631, ptr %634, align 4
  %635 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 1, i32 1
  store i16 1, ptr %635, align 2
  %636 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 1, i32 2
  store i16 1, ptr %636, align 4
  %637 = getelementptr inbounds %struct.i2c_msg, ptr %164, i32 1, i32 3
  store ptr %163, ptr %637, align 4
  %638 = load ptr, ptr %358, align 4
  %639 = call i32 @i2c_transfer(ptr noundef %638, ptr noundef nonnull %164, i32 noundef 2) #11
  %640 = icmp eq i32 %639, 2
  br i1 %640, label %646, label %641

641:                                              ; preds = %626
  %642 = load ptr, ptr %358, align 4
  %643 = getelementptr inbounds %struct.i2c_adapter, ptr %642, i32 0, i32 9
  %644 = load i8, ptr %162, align 1
  %645 = zext i8 %644 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %643, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %645, i32 noundef %639) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %164) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %163) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %162) #11
  br label %684

646:                                              ; preds = %626
  %647 = load i8, ptr %163, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %164) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %163) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %162) #11
  %648 = load ptr, ptr %359, align 4
  %649 = getelementptr inbounds %struct.mb86a20s_config, ptr %648, i32 0, i32 1
  %650 = load i8, ptr %649, align 4
  %651 = or i8 %647, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %160) #11
  store i8 81, ptr %160, align 2
  %652 = getelementptr inbounds i8, ptr %160, i32 1
  store i8 %651, ptr %652, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %161) #11
  %653 = getelementptr inbounds i8, ptr %161, i32 4
  store i32 2, ptr %653, align 4, !annotation !8
  %654 = zext i8 %650 to i16
  store i16 %654, ptr %161, align 4
  %655 = getelementptr inbounds %struct.i2c_msg, ptr %161, i32 0, i32 1
  store i16 0, ptr %655, align 2
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %161, i32 0, i32 3
  store ptr %160, ptr %656, align 4
  %657 = load ptr, ptr %358, align 4
  %658 = call i32 @i2c_transfer(ptr noundef %657, ptr noundef nonnull %161, i32 noundef 1) #11
  %659 = icmp eq i32 %658, 1
  br i1 %659, label %660, label %661

660:                                              ; preds = %646
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %161) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %160) #11
  br label %666

661:                                              ; preds = %646
  %662 = load ptr, ptr %358, align 4
  %663 = getelementptr inbounds %struct.i2c_adapter, ptr %662, i32 0, i32 9
  %664 = zext i8 %651 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %663, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %658, i32 noundef 81, i32 noundef %664) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %161) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %160) #11
  %665 = icmp slt i32 %658, 0
  br i1 %665, label %684, label %666

666:                                              ; preds = %661, %660
  %667 = load ptr, ptr %359, align 4
  %668 = getelementptr inbounds %struct.mb86a20s_config, ptr %667, i32 0, i32 1
  %669 = load i8, ptr %668, align 4
  %670 = and i8 %647, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %109) #11
  store i8 81, ptr %109, align 2
  %671 = getelementptr inbounds i8, ptr %109, i32 1
  store i8 %670, ptr %671, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %110) #11
  %672 = getelementptr inbounds i8, ptr %110, i32 4
  store i32 2, ptr %672, align 4, !annotation !8
  %673 = zext i8 %669 to i16
  store i16 %673, ptr %110, align 4
  %674 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 0, i32 1
  store i16 0, ptr %674, align 2
  %675 = getelementptr inbounds %struct.i2c_msg, ptr %110, i32 0, i32 3
  store ptr %109, ptr %675, align 4
  %676 = load ptr, ptr %358, align 4
  %677 = call i32 @i2c_transfer(ptr noundef %676, ptr noundef nonnull %110, i32 noundef 1) #11
  %678 = icmp eq i32 %677, 1
  br i1 %678, label %683, label %679

679:                                              ; preds = %666
  %680 = load ptr, ptr %358, align 4
  %681 = getelementptr inbounds %struct.i2c_adapter, ptr %680, i32 0, i32 9
  %682 = zext i8 %670 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %681, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %677, i32 noundef 81, i32 noundef %682) #12
  br label %683

683:                                              ; preds = %679, %666
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %110) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %109) #11
  br label %684

684:                                              ; preds = %683, %661, %641, %622, %533, %520, %501, %488, %470, %457, %396, %391, %372
  %685 = icmp slt i32 %1, 9
  br i1 %685, label %2247, label %686

686:                                              ; preds = %684
  %687 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 22
  %688 = getelementptr inbounds i8, ptr %159, i32 4
  %689 = getelementptr inbounds %struct.i2c_msg, ptr %159, i32 0, i32 1
  %690 = getelementptr inbounds %struct.i2c_msg, ptr %159, i32 0, i32 3
  %691 = getelementptr inbounds %struct.i2c_msg, ptr %159, i32 1
  %692 = getelementptr inbounds %struct.i2c_msg, ptr %159, i32 1, i32 1
  %693 = getelementptr inbounds %struct.i2c_msg, ptr %159, i32 1, i32 2
  %694 = getelementptr inbounds %struct.i2c_msg, ptr %159, i32 1, i32 3
  %695 = getelementptr inbounds i8, ptr %156, i32 4
  %696 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 0, i32 1
  %697 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 0, i32 3
  %698 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 1
  %699 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 1, i32 1
  %700 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 1, i32 2
  %701 = getelementptr inbounds %struct.i2c_msg, ptr %156, i32 1, i32 3
  %702 = getelementptr inbounds i8, ptr %153, i32 4
  %703 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 0, i32 1
  %704 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 0, i32 3
  %705 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 1
  %706 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 1, i32 1
  %707 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 1, i32 2
  %708 = getelementptr inbounds %struct.i2c_msg, ptr %153, i32 1, i32 3
  %709 = getelementptr inbounds i8, ptr %150, i32 4
  %710 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 0, i32 1
  %711 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 0, i32 3
  %712 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 1
  %713 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 1, i32 1
  %714 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 1, i32 2
  %715 = getelementptr inbounds %struct.i2c_msg, ptr %150, i32 1, i32 3
  %716 = getelementptr inbounds i8, ptr %146, i32 1
  %717 = getelementptr inbounds i8, ptr %147, i32 4
  %718 = getelementptr inbounds %struct.i2c_msg, ptr %147, i32 0, i32 1
  %719 = getelementptr inbounds %struct.i2c_msg, ptr %147, i32 0, i32 3
  %720 = getelementptr inbounds i8, ptr %145, i32 4
  %721 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 0, i32 1
  %722 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 0, i32 3
  %723 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 1
  %724 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 1, i32 1
  %725 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 1, i32 2
  %726 = getelementptr inbounds %struct.i2c_msg, ptr %145, i32 1, i32 3
  %727 = getelementptr inbounds i8, ptr %72, i32 1
  %728 = getelementptr inbounds i8, ptr %73, i32 4
  %729 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  %730 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  %731 = getelementptr inbounds i8, ptr %76, i32 4
  %732 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 1
  %733 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 3
  %734 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1
  %735 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 1
  %736 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 2
  %737 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 3
  %738 = getelementptr inbounds i8, ptr %77, i32 1
  %739 = getelementptr inbounds i8, ptr %78, i32 4
  %740 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 1
  %741 = getelementptr inbounds %struct.i2c_msg, ptr %78, i32 0, i32 3
  %742 = getelementptr inbounds i8, ptr %81, i32 4
  %743 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  %744 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  %745 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1
  %746 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1, i32 1
  %747 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1, i32 2
  %748 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1, i32 3
  %749 = getelementptr inbounds i8, ptr %82, i32 1
  %750 = getelementptr inbounds i8, ptr %83, i32 4
  %751 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  %752 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  %753 = getelementptr inbounds i8, ptr %84, i32 1
  %754 = getelementptr inbounds i8, ptr %85, i32 4
  %755 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  %756 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  %757 = getelementptr inbounds i8, ptr %86, i32 1
  %758 = getelementptr inbounds i8, ptr %87, i32 4
  %759 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 1
  %760 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 3
  %761 = getelementptr inbounds i8, ptr %88, i32 1
  %762 = getelementptr inbounds i8, ptr %89, i32 4
  %763 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 1
  %764 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 3
  %765 = getelementptr inbounds i8, ptr %90, i32 1
  %766 = getelementptr inbounds i8, ptr %91, i32 4
  %767 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 1
  %768 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 3
  %769 = getelementptr inbounds i8, ptr %92, i32 1
  %770 = getelementptr inbounds i8, ptr %93, i32 4
  %771 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 1
  %772 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 3
  %773 = getelementptr inbounds i8, ptr %94, i32 1
  %774 = getelementptr inbounds i8, ptr %95, i32 4
  %775 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 1
  %776 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 3
  %777 = getelementptr inbounds i8, ptr %96, i32 1
  %778 = getelementptr inbounds i8, ptr %97, i32 4
  %779 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 1
  %780 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 3
  %781 = getelementptr inbounds i8, ptr %98, i32 1
  %782 = getelementptr inbounds i8, ptr %99, i32 4
  %783 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 1
  %784 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 3
  %785 = getelementptr inbounds i8, ptr %100, i32 1
  %786 = getelementptr inbounds i8, ptr %101, i32 4
  %787 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 1
  %788 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 3
  %789 = getelementptr inbounds i8, ptr %104, i32 4
  %790 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 1
  %791 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 0, i32 3
  %792 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 1
  %793 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 1, i32 1
  %794 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 1, i32 2
  %795 = getelementptr inbounds %struct.i2c_msg, ptr %104, i32 1, i32 3
  %796 = getelementptr inbounds i8, ptr %105, i32 1
  %797 = getelementptr inbounds i8, ptr %106, i32 4
  %798 = getelementptr inbounds %struct.i2c_msg, ptr %106, i32 0, i32 1
  %799 = getelementptr inbounds %struct.i2c_msg, ptr %106, i32 0, i32 3
  %800 = getelementptr inbounds i8, ptr %107, i32 1
  %801 = getelementptr inbounds i8, ptr %108, i32 4
  %802 = getelementptr inbounds %struct.i2c_msg, ptr %108, i32 0, i32 1
  %803 = getelementptr inbounds %struct.i2c_msg, ptr %108, i32 0, i32 3
  %804 = getelementptr inbounds i8, ptr %142, i32 4
  %805 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 0, i32 1
  %806 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 0, i32 3
  %807 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 1
  %808 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 1, i32 1
  %809 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 1, i32 2
  %810 = getelementptr inbounds %struct.i2c_msg, ptr %142, i32 1, i32 3
  %811 = getelementptr inbounds i8, ptr %139, i32 4
  %812 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 0, i32 1
  %813 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 0, i32 3
  %814 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 1
  %815 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 1, i32 1
  %816 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 1, i32 2
  %817 = getelementptr inbounds %struct.i2c_msg, ptr %139, i32 1, i32 3
  %818 = getelementptr inbounds i8, ptr %136, i32 4
  %819 = getelementptr inbounds %struct.i2c_msg, ptr %136, i32 0, i32 1
  %820 = getelementptr inbounds %struct.i2c_msg, ptr %136, i32 0, i32 3
  %821 = getelementptr inbounds %struct.i2c_msg, ptr %136, i32 1
  %822 = getelementptr inbounds %struct.i2c_msg, ptr %136, i32 1, i32 1
  %823 = getelementptr inbounds %struct.i2c_msg, ptr %136, i32 1, i32 2
  %824 = getelementptr inbounds %struct.i2c_msg, ptr %136, i32 1, i32 3
  %825 = getelementptr inbounds i8, ptr %133, i32 4
  %826 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 0, i32 1
  %827 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 0, i32 3
  %828 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 1
  %829 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 1, i32 1
  %830 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 1, i32 2
  %831 = getelementptr inbounds %struct.i2c_msg, ptr %133, i32 1, i32 3
  %832 = getelementptr inbounds i8, ptr %129, i32 1
  %833 = getelementptr inbounds i8, ptr %130, i32 4
  %834 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 0, i32 1
  %835 = getelementptr inbounds %struct.i2c_msg, ptr %130, i32 0, i32 3
  %836 = getelementptr inbounds i8, ptr %128, i32 4
  %837 = getelementptr inbounds %struct.i2c_msg, ptr %128, i32 0, i32 1
  %838 = getelementptr inbounds %struct.i2c_msg, ptr %128, i32 0, i32 3
  %839 = getelementptr inbounds %struct.i2c_msg, ptr %128, i32 1
  %840 = getelementptr inbounds %struct.i2c_msg, ptr %128, i32 1, i32 1
  %841 = getelementptr inbounds %struct.i2c_msg, ptr %128, i32 1, i32 2
  %842 = getelementptr inbounds %struct.i2c_msg, ptr %128, i32 1, i32 3
  %843 = getelementptr inbounds i8, ptr %44, i32 1
  %844 = getelementptr inbounds i8, ptr %45, i32 4
  %845 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  %846 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  %847 = getelementptr inbounds i8, ptr %48, i32 4
  %848 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 1
  %849 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 0, i32 3
  %850 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 1
  %851 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 1, i32 1
  %852 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 1, i32 2
  %853 = getelementptr inbounds %struct.i2c_msg, ptr %48, i32 1, i32 3
  %854 = getelementptr inbounds i8, ptr %49, i32 1
  %855 = getelementptr inbounds i8, ptr %50, i32 4
  %856 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 1
  %857 = getelementptr inbounds %struct.i2c_msg, ptr %50, i32 0, i32 3
  %858 = getelementptr inbounds i8, ptr %51, i32 1
  %859 = getelementptr inbounds i8, ptr %52, i32 4
  %860 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 1
  %861 = getelementptr inbounds %struct.i2c_msg, ptr %52, i32 0, i32 3
  %862 = getelementptr inbounds i8, ptr %53, i32 1
  %863 = getelementptr inbounds i8, ptr %54, i32 4
  %864 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  %865 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  %866 = getelementptr inbounds i8, ptr %55, i32 1
  %867 = getelementptr inbounds i8, ptr %56, i32 4
  %868 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  %869 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  %870 = getelementptr inbounds i8, ptr %57, i32 1
  %871 = getelementptr inbounds i8, ptr %58, i32 4
  %872 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  %873 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  %874 = getelementptr inbounds i8, ptr %59, i32 1
  %875 = getelementptr inbounds i8, ptr %60, i32 4
  %876 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  %877 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  %878 = getelementptr inbounds i8, ptr %61, i32 1
  %879 = getelementptr inbounds i8, ptr %62, i32 4
  %880 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  %881 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  %882 = getelementptr inbounds i8, ptr %63, i32 1
  %883 = getelementptr inbounds i8, ptr %64, i32 4
  %884 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  %885 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  %886 = getelementptr inbounds i8, ptr %67, i32 4
  %887 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  %888 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  %889 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 1
  %890 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 1, i32 1
  %891 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 1, i32 2
  %892 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 1, i32 3
  %893 = getelementptr inbounds i8, ptr %68, i32 1
  %894 = getelementptr inbounds i8, ptr %69, i32 4
  %895 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  %896 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  %897 = getelementptr inbounds i8, ptr %70, i32 1
  %898 = getelementptr inbounds i8, ptr %71, i32 4
  %899 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  %900 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  %901 = getelementptr inbounds i8, ptr %124, i32 1
  %902 = getelementptr inbounds i8, ptr %125, i32 4
  %903 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 1
  %904 = getelementptr inbounds %struct.i2c_msg, ptr %125, i32 0, i32 3
  %905 = getelementptr inbounds i8, ptr %123, i32 4
  %906 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 1
  %907 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 0, i32 3
  %908 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 1
  %909 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 1, i32 1
  %910 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 1, i32 2
  %911 = getelementptr inbounds %struct.i2c_msg, ptr %123, i32 1, i32 3
  %912 = getelementptr inbounds i8, ptr %119, i32 1
  %913 = getelementptr inbounds i8, ptr %120, i32 4
  %914 = getelementptr inbounds %struct.i2c_msg, ptr %120, i32 0, i32 1
  %915 = getelementptr inbounds %struct.i2c_msg, ptr %120, i32 0, i32 3
  %916 = getelementptr inbounds i8, ptr %118, i32 4
  %917 = getelementptr inbounds %struct.i2c_msg, ptr %118, i32 0, i32 1
  %918 = getelementptr inbounds %struct.i2c_msg, ptr %118, i32 0, i32 3
  %919 = getelementptr inbounds %struct.i2c_msg, ptr %118, i32 1
  %920 = getelementptr inbounds %struct.i2c_msg, ptr %118, i32 1, i32 1
  %921 = getelementptr inbounds %struct.i2c_msg, ptr %118, i32 1, i32 2
  %922 = getelementptr inbounds %struct.i2c_msg, ptr %118, i32 1, i32 3
  %923 = getelementptr inbounds i8, ptr %114, i32 1
  %924 = getelementptr inbounds i8, ptr %115, i32 4
  %925 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 1
  %926 = getelementptr inbounds %struct.i2c_msg, ptr %115, i32 0, i32 3
  %927 = getelementptr inbounds i8, ptr %113, i32 4
  %928 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 1
  %929 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 0, i32 3
  %930 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 1
  %931 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 1, i32 1
  %932 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 1, i32 2
  %933 = getelementptr inbounds %struct.i2c_msg, ptr %113, i32 1, i32 3
  %934 = getelementptr inbounds i8, ptr %3, i32 1
  %935 = getelementptr inbounds i8, ptr %4, i32 4
  %936 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %937 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %938 = getelementptr inbounds i8, ptr %7, i32 4
  %939 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  %940 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  %941 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  %942 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  %943 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  %944 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  %945 = getelementptr inbounds i8, ptr %8, i32 1
  %946 = getelementptr inbounds i8, ptr %9, i32 4
  %947 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %948 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  %949 = getelementptr inbounds i8, ptr %12, i32 4
  %950 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %951 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %952 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  %953 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  %954 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  %955 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  %956 = getelementptr inbounds i8, ptr %13, i32 1
  %957 = getelementptr inbounds i8, ptr %14, i32 4
  %958 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  %959 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  %960 = getelementptr inbounds i8, ptr %15, i32 1
  %961 = getelementptr inbounds i8, ptr %16, i32 4
  %962 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  %963 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  %964 = getelementptr inbounds i8, ptr %17, i32 1
  %965 = getelementptr inbounds i8, ptr %18, i32 4
  %966 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %967 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  %968 = getelementptr inbounds i8, ptr %19, i32 1
  %969 = getelementptr inbounds i8, ptr %20, i32 4
  %970 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  %971 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  %972 = getelementptr inbounds i8, ptr %21, i32 1
  %973 = getelementptr inbounds i8, ptr %22, i32 4
  %974 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  %975 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  %976 = getelementptr inbounds i8, ptr %23, i32 1
  %977 = getelementptr inbounds i8, ptr %24, i32 4
  %978 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  %979 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  %980 = getelementptr inbounds i8, ptr %25, i32 1
  %981 = getelementptr inbounds i8, ptr %26, i32 4
  %982 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  %983 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  %984 = getelementptr inbounds i8, ptr %27, i32 1
  %985 = getelementptr inbounds i8, ptr %28, i32 4
  %986 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  %987 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  %988 = getelementptr inbounds i8, ptr %29, i32 1
  %989 = getelementptr inbounds i8, ptr %30, i32 4
  %990 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  %991 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  %992 = getelementptr inbounds i8, ptr %31, i32 1
  %993 = getelementptr inbounds i8, ptr %32, i32 4
  %994 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 1
  %995 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  %996 = getelementptr inbounds i8, ptr %33, i32 1
  %997 = getelementptr inbounds i8, ptr %34, i32 4
  %998 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  %999 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  %1000 = getelementptr inbounds i8, ptr %35, i32 1
  %1001 = getelementptr inbounds i8, ptr %36, i32 4
  %1002 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.i2c_msg, ptr %36, i32 0, i32 3
  %1004 = getelementptr inbounds i8, ptr %39, i32 4
  %1005 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  %1006 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  %1007 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1
  %1008 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1, i32 1
  %1009 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1, i32 2
  %1010 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 1, i32 3
  %1011 = getelementptr inbounds i8, ptr %40, i32 1
  %1012 = getelementptr inbounds i8, ptr %41, i32 4
  %1013 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  %1014 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  %1015 = getelementptr inbounds i8, ptr %42, i32 1
  %1016 = getelementptr inbounds i8, ptr %43, i32 4
  %1017 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  %1018 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  br label %1019

1019:                                             ; preds = %2203, %686
  %1020 = phi i32 [ 0, %686 ], [ %2214, %2203 ]
  %1021 = phi i32 [ 0, %686 ], [ %2213, %2203 ]
  %1022 = phi i32 [ 0, %686 ], [ %2212, %2203 ]
  %1023 = phi i32 [ 0, %686 ], [ %2211, %2203 ]
  %1024 = phi i32 [ 0, %686 ], [ %2210, %2203 ]
  %1025 = phi i32 [ 0, %686 ], [ %2209, %2203 ]
  %1026 = phi i32 [ 0, %686 ], [ %2208, %2203 ]
  %1027 = phi i32 [ 0, %686 ], [ %2207, %2203 ]
  %1028 = phi i32 [ 0, %686 ], [ %2206, %2203 ]
  %1029 = phi i32 [ 0, %686 ], [ %2204, %2203 ]
  %1030 = phi i32 [ 0, %686 ], [ %2205, %2203 ]
  %1031 = load i8, ptr %687, align 4
  %1032 = zext i8 %1031 to i32
  %1033 = shl nuw nsw i32 1, %1029
  %1034 = and i32 %1033, %1032
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1036, label %1038

1036:                                             ; preds = %1019
  %1037 = add nuw nsw i32 %1029, 1
  br label %2203

1038:                                             ; preds = %1019
  %1039 = load ptr, ptr %200, align 4
  %1040 = getelementptr inbounds %struct.mb86a20s_state, ptr %1039, i32 0, i32 1
  %1041 = load ptr, ptr %1040, align 4
  %1042 = getelementptr inbounds %struct.mb86a20s_config, ptr %1041, i32 0, i32 1
  %1043 = load i8, ptr %1042, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %157) #11
  store i8 84, ptr %157, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %158) #11
  store i8 0, ptr %158, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %159) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %688, i8 0, i32 16, i1 false) #11, !annotation !8
  %1044 = zext i8 %1043 to i16
  store i16 %1044, ptr %159, align 4
  store i16 0, ptr %689, align 2
  store i16 1, ptr %688, align 4
  store ptr %157, ptr %690, align 4
  store i16 %1044, ptr %691, align 4
  store i16 1, ptr %692, align 2
  store i16 1, ptr %693, align 4
  store ptr %158, ptr %694, align 4
  %1045 = load ptr, ptr %1039, align 4
  %1046 = call i32 @i2c_transfer(ptr noundef %1045, ptr noundef nonnull %159, i32 noundef 2) #11
  %1047 = icmp eq i32 %1046, 2
  br i1 %1047, label %1054, label %1048

1048:                                             ; preds = %1038
  %1049 = load ptr, ptr %1039, align 4
  %1050 = getelementptr inbounds %struct.i2c_adapter, ptr %1049, i32 0, i32 9
  %1051 = load i8, ptr %157, align 1
  %1052 = zext i8 %1051 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1050, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1052, i32 noundef %1046) #12
  %1053 = icmp slt i32 %1046, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %159) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %158) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %157) #11
  br i1 %1053, label %1418, label %1421

1054:                                             ; preds = %1038
  %1055 = load i8, ptr %158, align 1
  %1056 = zext i8 %1055 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %159) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %158) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %157) #11
  %1057 = and i32 %1033, %1056
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1429, label %1059

1059:                                             ; preds = %1054
  %1060 = load ptr, ptr %1040, align 4
  %1061 = getelementptr inbounds %struct.mb86a20s_config, ptr %1060, i32 0, i32 1
  %1062 = load i8, ptr %1061, align 4
  %1063 = trunc i32 %1029 to i8
  %1064 = mul nuw nsw i8 %1063, 3
  %1065 = add nuw nsw i8 %1064, 85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %154) #11
  store i8 %1065, ptr %154, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %155) #11
  store i8 0, ptr %155, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %156) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %695, i8 0, i32 16, i1 false) #11, !annotation !8
  %1066 = zext i8 %1062 to i16
  store i16 %1066, ptr %156, align 4
  store i16 0, ptr %696, align 2
  store i16 1, ptr %695, align 4
  store ptr %154, ptr %697, align 4
  store i16 %1066, ptr %698, align 4
  store i16 1, ptr %699, align 2
  store i16 1, ptr %700, align 4
  store ptr %155, ptr %701, align 4
  %1067 = load ptr, ptr %1039, align 4
  %1068 = call i32 @i2c_transfer(ptr noundef %1067, ptr noundef nonnull %156, i32 noundef 2) #11
  %1069 = icmp eq i32 %1068, 2
  br i1 %1069, label %1076, label %1070

1070:                                             ; preds = %1059
  %1071 = load ptr, ptr %1039, align 4
  %1072 = getelementptr inbounds %struct.i2c_adapter, ptr %1071, i32 0, i32 9
  %1073 = load i8, ptr %154, align 1
  %1074 = zext i8 %1073 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1072, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1074, i32 noundef %1068) #12
  %1075 = icmp slt i32 %1068, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %156) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %155) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %154) #11
  br i1 %1075, label %1418, label %1421

1076:                                             ; preds = %1059
  %1077 = load i8, ptr %155, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %156) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %155) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %154) #11
  %1078 = load ptr, ptr %1040, align 4
  %1079 = getelementptr inbounds %struct.mb86a20s_config, ptr %1078, i32 0, i32 1
  %1080 = load i8, ptr %1079, align 4
  %1081 = add nuw nsw i8 %1064, 86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %151) #11
  store i8 %1081, ptr %151, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %152) #11
  store i8 0, ptr %152, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %153) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %702, i8 0, i32 16, i1 false) #11, !annotation !8
  %1082 = zext i8 %1080 to i16
  store i16 %1082, ptr %153, align 4
  store i16 0, ptr %703, align 2
  store i16 1, ptr %702, align 4
  store ptr %151, ptr %704, align 4
  store i16 %1082, ptr %705, align 4
  store i16 1, ptr %706, align 2
  store i16 1, ptr %707, align 4
  store ptr %152, ptr %708, align 4
  %1083 = load ptr, ptr %1039, align 4
  %1084 = call i32 @i2c_transfer(ptr noundef %1083, ptr noundef nonnull %153, i32 noundef 2) #11
  %1085 = icmp eq i32 %1084, 2
  br i1 %1085, label %1092, label %1086

1086:                                             ; preds = %1076
  %1087 = load ptr, ptr %1039, align 4
  %1088 = getelementptr inbounds %struct.i2c_adapter, ptr %1087, i32 0, i32 9
  %1089 = load i8, ptr %151, align 1
  %1090 = zext i8 %1089 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1088, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1090, i32 noundef %1084) #12
  %1091 = icmp slt i32 %1084, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %153) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %152) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %151) #11
  br i1 %1091, label %1418, label %1421

1092:                                             ; preds = %1076
  %1093 = load i8, ptr %152, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %153) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %152) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %151) #11
  %1094 = load ptr, ptr %1040, align 4
  %1095 = getelementptr inbounds %struct.mb86a20s_config, ptr %1094, i32 0, i32 1
  %1096 = load i8, ptr %1095, align 4
  %1097 = add nuw nsw i8 %1064, 87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %148) #11
  store i8 %1097, ptr %148, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %149) #11
  store i8 0, ptr %149, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %150) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %709, i8 0, i32 16, i1 false) #11, !annotation !8
  %1098 = zext i8 %1096 to i16
  store i16 %1098, ptr %150, align 4
  store i16 0, ptr %710, align 2
  store i16 1, ptr %709, align 4
  store ptr %148, ptr %711, align 4
  store i16 %1098, ptr %712, align 4
  store i16 1, ptr %713, align 2
  store i16 1, ptr %714, align 4
  store ptr %149, ptr %715, align 4
  %1099 = load ptr, ptr %1039, align 4
  %1100 = call i32 @i2c_transfer(ptr noundef %1099, ptr noundef nonnull %150, i32 noundef 2) #11
  %1101 = icmp eq i32 %1100, 2
  br i1 %1101, label %1108, label %1102

1102:                                             ; preds = %1092
  %1103 = load ptr, ptr %1039, align 4
  %1104 = getelementptr inbounds %struct.i2c_adapter, ptr %1103, i32 0, i32 9
  %1105 = load i8, ptr %148, align 1
  %1106 = zext i8 %1105 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1104, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1106, i32 noundef %1100) #12
  %1107 = icmp slt i32 %1100, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %150) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %149) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %148) #11
  br i1 %1107, label %1418, label %1421

1108:                                             ; preds = %1092
  %1109 = zext i8 %1093 to i32
  %1110 = shl nuw nsw i32 %1109, 8
  %1111 = zext i8 %1077 to i32
  %1112 = shl nuw nsw i32 %1111, 16
  %1113 = or i32 %1110, %1112
  %1114 = load i8, ptr %149, align 1
  %1115 = zext i8 %1114 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %150) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %149) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %148) #11
  %1116 = or i32 %1113, %1115
  %1117 = load ptr, ptr %1040, align 4
  %1118 = getelementptr inbounds %struct.mb86a20s_config, ptr %1117, i32 0, i32 1
  %1119 = load i8, ptr %1118, align 4
  %1120 = add nuw nsw i8 %1064, -89
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %146) #11
  store i8 80, ptr %146, align 2
  store i8 %1120, ptr %716, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %147) #11
  store i32 2, ptr %717, align 4, !annotation !8
  %1121 = zext i8 %1119 to i16
  store i16 %1121, ptr %147, align 4
  store i16 0, ptr %718, align 2
  store ptr %146, ptr %719, align 4
  %1122 = load ptr, ptr %1039, align 4
  %1123 = call i32 @i2c_transfer(ptr noundef %1122, ptr noundef nonnull %147, i32 noundef 1) #11
  %1124 = icmp eq i32 %1123, 1
  br i1 %1124, label %1125, label %1126

1125:                                             ; preds = %1108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %147) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %146) #11
  br label %1131

1126:                                             ; preds = %1108
  %1127 = load ptr, ptr %1039, align 4
  %1128 = getelementptr inbounds %struct.i2c_adapter, ptr %1127, i32 0, i32 9
  %1129 = zext i8 %1120 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1128, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1123, i32 noundef 80, i32 noundef %1129) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %147) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %146) #11
  %1130 = icmp slt i32 %1123, 0
  br i1 %1130, label %1418, label %1131

1131:                                             ; preds = %1126, %1125
  %1132 = load ptr, ptr %1040, align 4
  %1133 = getelementptr inbounds %struct.mb86a20s_config, ptr %1132, i32 0, i32 1
  %1134 = load i8, ptr %1133, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %143) #11
  store i8 81, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %144) #11
  store i8 0, ptr %144, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %145) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %720, i8 0, i32 16, i1 false) #11, !annotation !8
  %1135 = zext i8 %1134 to i16
  store i16 %1135, ptr %145, align 4
  store i16 0, ptr %721, align 2
  store i16 1, ptr %720, align 4
  store ptr %143, ptr %722, align 4
  store i16 %1135, ptr %723, align 4
  store i16 1, ptr %724, align 2
  store i16 1, ptr %725, align 4
  store ptr %144, ptr %726, align 4
  %1136 = load ptr, ptr %1039, align 4
  %1137 = call i32 @i2c_transfer(ptr noundef %1136, ptr noundef nonnull %145, i32 noundef 2) #11
  %1138 = icmp eq i32 %1137, 2
  br i1 %1138, label %1145, label %1139

1139:                                             ; preds = %1131
  %1140 = load ptr, ptr %1039, align 4
  %1141 = getelementptr inbounds %struct.i2c_adapter, ptr %1140, i32 0, i32 9
  %1142 = load i8, ptr %143, align 1
  %1143 = zext i8 %1142 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1141, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1143, i32 noundef %1137) #12
  %1144 = icmp slt i32 %1137, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %145) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %144) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %143) #11
  br i1 %1144, label %1418, label %1421

1145:                                             ; preds = %1131
  %1146 = load i8, ptr %144, align 1
  %1147 = zext i8 %1146 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %145) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %144) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %143) #11
  %1148 = shl nuw nsw i32 %1147, 16
  %1149 = load ptr, ptr %1040, align 4
  %1150 = getelementptr inbounds %struct.mb86a20s_config, ptr %1149, i32 0, i32 1
  %1151 = load i8, ptr %1150, align 4
  %1152 = add nuw nsw i8 %1064, -88
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %72) #11
  store i8 80, ptr %72, align 2
  store i8 %1152, ptr %727, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #11
  store i32 2, ptr %728, align 4, !annotation !8
  %1153 = zext i8 %1151 to i16
  store i16 %1153, ptr %73, align 4
  store i16 0, ptr %729, align 2
  store ptr %72, ptr %730, align 4
  %1154 = load ptr, ptr %1039, align 4
  %1155 = call i32 @i2c_transfer(ptr noundef %1154, ptr noundef nonnull %73, i32 noundef 1) #11
  %1156 = icmp eq i32 %1155, 1
  br i1 %1156, label %1157, label %1158

1157:                                             ; preds = %1145
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %72) #11
  br label %1163

1158:                                             ; preds = %1145
  %1159 = load ptr, ptr %1039, align 4
  %1160 = getelementptr inbounds %struct.i2c_adapter, ptr %1159, i32 0, i32 9
  %1161 = zext i8 %1152 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1160, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1155, i32 noundef 80, i32 noundef %1161) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %72) #11
  %1162 = icmp slt i32 %1155, 0
  br i1 %1162, label %1418, label %1163

1163:                                             ; preds = %1158, %1157
  %1164 = load ptr, ptr %1040, align 4
  %1165 = getelementptr inbounds %struct.mb86a20s_config, ptr %1164, i32 0, i32 1
  %1166 = load i8, ptr %1165, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %74)
  store i8 81, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %75) #11
  store i8 0, ptr %75, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %76) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %731, i8 0, i32 16, i1 false) #11, !annotation !8
  %1167 = zext i8 %1166 to i16
  store i16 %1167, ptr %76, align 4
  store i16 0, ptr %732, align 2
  store i16 1, ptr %731, align 4
  store ptr %74, ptr %733, align 4
  store i16 %1167, ptr %734, align 4
  store i16 1, ptr %735, align 2
  store i16 1, ptr %736, align 4
  store ptr %75, ptr %737, align 4
  %1168 = load ptr, ptr %1039, align 4
  %1169 = call i32 @i2c_transfer(ptr noundef %1168, ptr noundef nonnull %76, i32 noundef 2) #11
  %1170 = icmp eq i32 %1169, 2
  br i1 %1170, label %1177, label %1171

1171:                                             ; preds = %1163
  %1172 = load ptr, ptr %1039, align 4
  %1173 = getelementptr inbounds %struct.i2c_adapter, ptr %1172, i32 0, i32 9
  %1174 = load i8, ptr %74, align 1
  %1175 = zext i8 %1174 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1173, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1175, i32 noundef %1169) #12
  %1176 = icmp slt i32 %1169, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %76) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %75) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %74)
  br i1 %1176, label %1418, label %1421

1177:                                             ; preds = %1163
  %1178 = load i8, ptr %75, align 1
  %1179 = zext i8 %1178 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %76) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %75) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %74)
  %1180 = shl nuw nsw i32 %1179, 8
  %1181 = or i32 %1180, %1148
  %1182 = load ptr, ptr %1040, align 4
  %1183 = getelementptr inbounds %struct.mb86a20s_config, ptr %1182, i32 0, i32 1
  %1184 = load i8, ptr %1183, align 4
  %1185 = add nuw nsw i8 %1064, -87
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %77) #11
  store i8 80, ptr %77, align 2
  store i8 %1185, ptr %738, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %78) #11
  store i32 2, ptr %739, align 4, !annotation !8
  %1186 = zext i8 %1184 to i16
  store i16 %1186, ptr %78, align 4
  store i16 0, ptr %740, align 2
  store ptr %77, ptr %741, align 4
  %1187 = load ptr, ptr %1039, align 4
  %1188 = call i32 @i2c_transfer(ptr noundef %1187, ptr noundef nonnull %78, i32 noundef 1) #11
  %1189 = icmp eq i32 %1188, 1
  br i1 %1189, label %1190, label %1191

1190:                                             ; preds = %1177
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %78) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %77) #11
  br label %1196

1191:                                             ; preds = %1177
  %1192 = load ptr, ptr %1039, align 4
  %1193 = getelementptr inbounds %struct.i2c_adapter, ptr %1192, i32 0, i32 9
  %1194 = zext i8 %1185 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1193, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1188, i32 noundef 80, i32 noundef %1194) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %78) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %77) #11
  %1195 = icmp slt i32 %1188, 0
  br i1 %1195, label %1418, label %1196

1196:                                             ; preds = %1191, %1190
  %1197 = load ptr, ptr %1040, align 4
  %1198 = getelementptr inbounds %struct.mb86a20s_config, ptr %1197, i32 0, i32 1
  %1199 = load i8, ptr %1198, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %79)
  store i8 81, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %80) #11
  store i8 0, ptr %80, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %81) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %742, i8 0, i32 16, i1 false) #11, !annotation !8
  %1200 = zext i8 %1199 to i16
  store i16 %1200, ptr %81, align 4
  store i16 0, ptr %743, align 2
  store i16 1, ptr %742, align 4
  store ptr %79, ptr %744, align 4
  store i16 %1200, ptr %745, align 4
  store i16 1, ptr %746, align 2
  store i16 1, ptr %747, align 4
  store ptr %80, ptr %748, align 4
  %1201 = load ptr, ptr %1039, align 4
  %1202 = call i32 @i2c_transfer(ptr noundef %1201, ptr noundef nonnull %81, i32 noundef 2) #11
  %1203 = icmp eq i32 %1202, 2
  br i1 %1203, label %1210, label %1204

1204:                                             ; preds = %1196
  %1205 = load ptr, ptr %1039, align 4
  %1206 = getelementptr inbounds %struct.i2c_adapter, ptr %1205, i32 0, i32 9
  %1207 = load i8, ptr %79, align 1
  %1208 = zext i8 %1207 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1206, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1208, i32 noundef %1202) #12
  %1209 = icmp slt i32 %1202, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %81) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %80) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %79)
  br i1 %1209, label %1418, label %1421

1210:                                             ; preds = %1196
  %1211 = load i8, ptr %80, align 1
  %1212 = zext i8 %1211 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %81) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %80) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %79)
  %1213 = or i32 %1181, %1212
  %1214 = getelementptr %struct.mb86a20s_state, ptr %1039, i32 0, i32 8, i32 %1029
  %1215 = load i32, ptr %1214, align 4
  %1216 = icmp eq i32 %1215, 0
  %1217 = icmp eq i32 %1215, %1213
  %1218 = select i1 %1216, i1 true, i1 %1217
  %1219 = load ptr, ptr %1040, align 4
  %1220 = getelementptr inbounds %struct.mb86a20s_config, ptr %1219, i32 0, i32 1
  %1221 = load i8, ptr %1220, align 4
  br i1 %1218, label %1359, label %1222

1222:                                             ; preds = %1210
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %82) #11
  store i8 82, ptr %82, align 2
  store i8 0, ptr %749, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #11
  store i32 2, ptr %750, align 4, !annotation !8
  %1223 = zext i8 %1221 to i16
  store i16 %1223, ptr %83, align 4
  store i16 0, ptr %751, align 2
  store ptr %82, ptr %752, align 4
  %1224 = load ptr, ptr %1039, align 4
  %1225 = call i32 @i2c_transfer(ptr noundef %1224, ptr noundef nonnull %83, i32 noundef 1) #11
  %1226 = icmp eq i32 %1225, 1
  br i1 %1226, label %1230, label %1227

1227:                                             ; preds = %1222
  %1228 = load ptr, ptr %1039, align 4
  %1229 = getelementptr inbounds %struct.i2c_adapter, ptr %1228, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1229, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1225, i32 noundef 82, i32 noundef 0) #12
  br label %1230

1230:                                             ; preds = %1227, %1222
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %82) #11
  %1231 = load ptr, ptr %1040, align 4
  %1232 = getelementptr inbounds %struct.mb86a20s_config, ptr %1231, i32 0, i32 1
  %1233 = load i8, ptr %1232, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %84) #11
  store i8 80, ptr %84, align 2
  store i8 %1120, ptr %753, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #11
  store i32 2, ptr %754, align 4, !annotation !8
  %1234 = zext i8 %1233 to i16
  store i16 %1234, ptr %85, align 4
  store i16 0, ptr %755, align 2
  store ptr %84, ptr %756, align 4
  %1235 = load ptr, ptr %1039, align 4
  %1236 = call i32 @i2c_transfer(ptr noundef %1235, ptr noundef nonnull %85, i32 noundef 1) #11
  %1237 = icmp eq i32 %1236, 1
  br i1 %1237, label %1238, label %1239

1238:                                             ; preds = %1230
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %84) #11
  br label %1244

1239:                                             ; preds = %1230
  %1240 = load ptr, ptr %1039, align 4
  %1241 = getelementptr inbounds %struct.i2c_adapter, ptr %1240, i32 0, i32 9
  %1242 = zext i8 %1120 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1241, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1236, i32 noundef 80, i32 noundef %1242) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %84) #11
  %1243 = icmp slt i32 %1236, 0
  br i1 %1243, label %1418, label %1244

1244:                                             ; preds = %1239, %1238
  %1245 = load ptr, ptr %1040, align 4
  %1246 = getelementptr inbounds %struct.mb86a20s_config, ptr %1245, i32 0, i32 1
  %1247 = load i8, ptr %1246, align 4
  %1248 = load i32, ptr %1214, align 4
  %1249 = lshr i32 %1248, 16
  %1250 = trunc i32 %1249 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %86) #11
  store i8 81, ptr %86, align 2
  store i8 %1250, ptr %757, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %87) #11
  store i32 2, ptr %758, align 4, !annotation !8
  %1251 = zext i8 %1247 to i16
  store i16 %1251, ptr %87, align 4
  store i16 0, ptr %759, align 2
  store ptr %86, ptr %760, align 4
  %1252 = load ptr, ptr %1039, align 4
  %1253 = call i32 @i2c_transfer(ptr noundef %1252, ptr noundef nonnull %87, i32 noundef 1) #11
  %1254 = icmp eq i32 %1253, 1
  br i1 %1254, label %1255, label %1256

1255:                                             ; preds = %1244
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %87) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %86) #11
  br label %1261

1256:                                             ; preds = %1244
  %1257 = load ptr, ptr %1039, align 4
  %1258 = getelementptr inbounds %struct.i2c_adapter, ptr %1257, i32 0, i32 9
  %1259 = and i32 %1249, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1258, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1253, i32 noundef 81, i32 noundef %1259) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %87) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %86) #11
  %1260 = icmp slt i32 %1253, 0
  br i1 %1260, label %1418, label %1261

1261:                                             ; preds = %1256, %1255
  %1262 = load ptr, ptr %1040, align 4
  %1263 = getelementptr inbounds %struct.mb86a20s_config, ptr %1262, i32 0, i32 1
  %1264 = load i8, ptr %1263, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %88) #11
  store i8 80, ptr %88, align 2
  store i8 %1152, ptr %761, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %89) #11
  store i32 2, ptr %762, align 4, !annotation !8
  %1265 = zext i8 %1264 to i16
  store i16 %1265, ptr %89, align 4
  store i16 0, ptr %763, align 2
  store ptr %88, ptr %764, align 4
  %1266 = load ptr, ptr %1039, align 4
  %1267 = call i32 @i2c_transfer(ptr noundef %1266, ptr noundef nonnull %89, i32 noundef 1) #11
  %1268 = icmp eq i32 %1267, 1
  br i1 %1268, label %1269, label %1270

1269:                                             ; preds = %1261
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %89) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %88) #11
  br label %1275

1270:                                             ; preds = %1261
  %1271 = load ptr, ptr %1039, align 4
  %1272 = getelementptr inbounds %struct.i2c_adapter, ptr %1271, i32 0, i32 9
  %1273 = zext i8 %1152 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1272, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1267, i32 noundef 80, i32 noundef %1273) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %89) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %88) #11
  %1274 = icmp slt i32 %1267, 0
  br i1 %1274, label %1418, label %1275

1275:                                             ; preds = %1270, %1269
  %1276 = load ptr, ptr %1040, align 4
  %1277 = getelementptr inbounds %struct.mb86a20s_config, ptr %1276, i32 0, i32 1
  %1278 = load i8, ptr %1277, align 4
  %1279 = load i32, ptr %1214, align 4
  %1280 = lshr i32 %1279, 8
  %1281 = trunc i32 %1280 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %90) #11
  store i8 81, ptr %90, align 2
  store i8 %1281, ptr %765, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %91) #11
  store i32 2, ptr %766, align 4, !annotation !8
  %1282 = zext i8 %1278 to i16
  store i16 %1282, ptr %91, align 4
  store i16 0, ptr %767, align 2
  store ptr %90, ptr %768, align 4
  %1283 = load ptr, ptr %1039, align 4
  %1284 = call i32 @i2c_transfer(ptr noundef %1283, ptr noundef nonnull %91, i32 noundef 1) #11
  %1285 = icmp eq i32 %1284, 1
  br i1 %1285, label %1286, label %1287

1286:                                             ; preds = %1275
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %91) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %90) #11
  br label %1292

1287:                                             ; preds = %1275
  %1288 = load ptr, ptr %1039, align 4
  %1289 = getelementptr inbounds %struct.i2c_adapter, ptr %1288, i32 0, i32 9
  %1290 = and i32 %1280, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1289, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1284, i32 noundef 81, i32 noundef %1290) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %91) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %90) #11
  %1291 = icmp slt i32 %1284, 0
  br i1 %1291, label %1418, label %1292

1292:                                             ; preds = %1287, %1286
  %1293 = load ptr, ptr %1040, align 4
  %1294 = getelementptr inbounds %struct.mb86a20s_config, ptr %1293, i32 0, i32 1
  %1295 = load i8, ptr %1294, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %92) #11
  store i8 80, ptr %92, align 2
  store i8 %1185, ptr %769, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %93) #11
  store i32 2, ptr %770, align 4, !annotation !8
  %1296 = zext i8 %1295 to i16
  store i16 %1296, ptr %93, align 4
  store i16 0, ptr %771, align 2
  store ptr %92, ptr %772, align 4
  %1297 = load ptr, ptr %1039, align 4
  %1298 = call i32 @i2c_transfer(ptr noundef %1297, ptr noundef nonnull %93, i32 noundef 1) #11
  %1299 = icmp eq i32 %1298, 1
  br i1 %1299, label %1300, label %1301

1300:                                             ; preds = %1292
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %93) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %92) #11
  br label %1306

1301:                                             ; preds = %1292
  %1302 = load ptr, ptr %1039, align 4
  %1303 = getelementptr inbounds %struct.i2c_adapter, ptr %1302, i32 0, i32 9
  %1304 = zext i8 %1185 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1303, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1298, i32 noundef 80, i32 noundef %1304) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %93) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %92) #11
  %1305 = icmp slt i32 %1298, 0
  br i1 %1305, label %1418, label %1306

1306:                                             ; preds = %1301, %1300
  %1307 = load ptr, ptr %1040, align 4
  %1308 = getelementptr inbounds %struct.mb86a20s_config, ptr %1307, i32 0, i32 1
  %1309 = load i8, ptr %1308, align 4
  %1310 = load i32, ptr %1214, align 4
  %1311 = trunc i32 %1310 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %94) #11
  store i8 81, ptr %94, align 2
  store i8 %1311, ptr %773, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %95) #11
  store i32 2, ptr %774, align 4, !annotation !8
  %1312 = zext i8 %1309 to i16
  store i16 %1312, ptr %95, align 4
  store i16 0, ptr %775, align 2
  store ptr %94, ptr %776, align 4
  %1313 = load ptr, ptr %1039, align 4
  %1314 = call i32 @i2c_transfer(ptr noundef %1313, ptr noundef nonnull %95, i32 noundef 1) #11
  %1315 = icmp eq i32 %1314, 1
  br i1 %1315, label %1316, label %1317

1316:                                             ; preds = %1306
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %95) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %94) #11
  br label %1322

1317:                                             ; preds = %1306
  %1318 = load ptr, ptr %1039, align 4
  %1319 = getelementptr inbounds %struct.i2c_adapter, ptr %1318, i32 0, i32 9
  %1320 = and i32 %1310, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1319, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1314, i32 noundef 81, i32 noundef %1320) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %95) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %94) #11
  %1321 = icmp slt i32 %1314, 0
  br i1 %1321, label %1418, label %1322

1322:                                             ; preds = %1317, %1316
  %1323 = load ptr, ptr %1040, align 4
  %1324 = getelementptr inbounds %struct.mb86a20s_config, ptr %1323, i32 0, i32 1
  %1325 = load i8, ptr %1324, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %96) #11
  store i8 82, ptr %96, align 2
  store i8 1, ptr %777, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %97) #11
  store i32 2, ptr %778, align 4, !annotation !8
  %1326 = zext i8 %1325 to i16
  store i16 %1326, ptr %97, align 4
  store i16 0, ptr %779, align 2
  store ptr %96, ptr %780, align 4
  %1327 = load ptr, ptr %1039, align 4
  %1328 = call i32 @i2c_transfer(ptr noundef %1327, ptr noundef nonnull %97, i32 noundef 1) #11
  %1329 = icmp eq i32 %1328, 1
  br i1 %1329, label %1333, label %1330

1330:                                             ; preds = %1322
  %1331 = load ptr, ptr %1039, align 4
  %1332 = getelementptr inbounds %struct.i2c_adapter, ptr %1331, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1332, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1328, i32 noundef 82, i32 noundef 1) #12
  br label %1333

1333:                                             ; preds = %1330, %1322
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %97) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %96) #11
  %1334 = load ptr, ptr %1040, align 4
  %1335 = getelementptr inbounds %struct.mb86a20s_config, ptr %1334, i32 0, i32 1
  %1336 = load i8, ptr %1335, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %98) #11
  store i8 83, ptr %98, align 2
  store i8 0, ptr %781, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %99) #11
  store i32 2, ptr %782, align 4, !annotation !8
  %1337 = zext i8 %1336 to i16
  store i16 %1337, ptr %99, align 4
  store i16 0, ptr %783, align 2
  store ptr %98, ptr %784, align 4
  %1338 = load ptr, ptr %1039, align 4
  %1339 = call i32 @i2c_transfer(ptr noundef %1338, ptr noundef nonnull %99, i32 noundef 1) #11
  %1340 = icmp eq i32 %1339, 1
  br i1 %1340, label %1341, label %1342

1341:                                             ; preds = %1333
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %99) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %98) #11
  br label %1346

1342:                                             ; preds = %1333
  %1343 = load ptr, ptr %1039, align 4
  %1344 = getelementptr inbounds %struct.i2c_adapter, ptr %1343, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1344, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1339, i32 noundef 83, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %99) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %98) #11
  %1345 = icmp slt i32 %1339, 0
  br i1 %1345, label %1418, label %1346

1346:                                             ; preds = %1342, %1341
  %1347 = load ptr, ptr %1040, align 4
  %1348 = getelementptr inbounds %struct.mb86a20s_config, ptr %1347, i32 0, i32 1
  %1349 = load i8, ptr %1348, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %100) #11
  store i8 83, ptr %100, align 2
  store i8 7, ptr %785, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %101) #11
  store i32 2, ptr %786, align 4, !annotation !8
  %1350 = zext i8 %1349 to i16
  store i16 %1350, ptr %101, align 4
  store i16 0, ptr %787, align 2
  store ptr %100, ptr %788, align 4
  %1351 = load ptr, ptr %1039, align 4
  %1352 = call i32 @i2c_transfer(ptr noundef %1351, ptr noundef nonnull %101, i32 noundef 1) #11
  %1353 = icmp eq i32 %1352, 1
  br i1 %1353, label %1357, label %1354

1354:                                             ; preds = %1346
  %1355 = load ptr, ptr %1039, align 4
  %1356 = getelementptr inbounds %struct.i2c_adapter, ptr %1355, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1356, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1352, i32 noundef 83, i32 noundef 7) #12
  br label %1357

1357:                                             ; preds = %1354, %1346
  %1358 = phi i32 [ %1352, %1354 ], [ 0, %1346 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %101) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %100) #11
  br label %1403

1359:                                             ; preds = %1210
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %102)
  store i8 83, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %103) #11
  store i8 0, ptr %103, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %104) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %789, i8 0, i32 16, i1 false) #11, !annotation !8
  %1360 = zext i8 %1221 to i16
  store i16 %1360, ptr %104, align 4
  store i16 0, ptr %790, align 2
  store i16 1, ptr %789, align 4
  store ptr %102, ptr %791, align 4
  store i16 %1360, ptr %792, align 4
  store i16 1, ptr %793, align 2
  store i16 1, ptr %794, align 4
  store ptr %103, ptr %795, align 4
  %1361 = load ptr, ptr %1039, align 4
  %1362 = call i32 @i2c_transfer(ptr noundef %1361, ptr noundef nonnull %104, i32 noundef 2) #11
  %1363 = icmp eq i32 %1362, 2
  br i1 %1363, label %1370, label %1364

1364:                                             ; preds = %1359
  %1365 = load ptr, ptr %1039, align 4
  %1366 = getelementptr inbounds %struct.i2c_adapter, ptr %1365, i32 0, i32 9
  %1367 = load i8, ptr %102, align 1
  %1368 = zext i8 %1367 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1366, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1368, i32 noundef %1362) #12
  %1369 = icmp slt i32 %1362, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %104) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %103) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %102)
  br i1 %1369, label %1418, label %1421

1370:                                             ; preds = %1359
  %1371 = load i8, ptr %103, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %104) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %103) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %102)
  %1372 = load ptr, ptr %1040, align 4
  %1373 = getelementptr inbounds %struct.mb86a20s_config, ptr %1372, i32 0, i32 1
  %1374 = load i8, ptr %1373, align 4
  %1375 = trunc i32 %1033 to i8
  %1376 = xor i8 %1375, -1
  %1377 = and i8 %1371, %1376
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %105) #11
  store i8 83, ptr %105, align 2
  store i8 %1377, ptr %796, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %106) #11
  store i32 2, ptr %797, align 4, !annotation !8
  %1378 = zext i8 %1374 to i16
  store i16 %1378, ptr %106, align 4
  store i16 0, ptr %798, align 2
  store ptr %105, ptr %799, align 4
  %1379 = load ptr, ptr %1039, align 4
  %1380 = call i32 @i2c_transfer(ptr noundef %1379, ptr noundef nonnull %106, i32 noundef 1) #11
  %1381 = icmp eq i32 %1380, 1
  br i1 %1381, label %1382, label %1383

1382:                                             ; preds = %1370
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %106) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %105) #11
  br label %1388

1383:                                             ; preds = %1370
  %1384 = load ptr, ptr %1039, align 4
  %1385 = getelementptr inbounds %struct.i2c_adapter, ptr %1384, i32 0, i32 9
  %1386 = zext i8 %1377 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1385, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1380, i32 noundef 83, i32 noundef %1386) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %106) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %105) #11
  %1387 = icmp slt i32 %1380, 0
  br i1 %1387, label %1418, label %1388

1388:                                             ; preds = %1383, %1382
  %1389 = load ptr, ptr %1040, align 4
  %1390 = getelementptr inbounds %struct.mb86a20s_config, ptr %1389, i32 0, i32 1
  %1391 = load i8, ptr %1390, align 4
  %1392 = or i8 %1371, %1375
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %107) #11
  store i8 83, ptr %107, align 2
  store i8 %1392, ptr %800, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %108) #11
  store i32 2, ptr %801, align 4, !annotation !8
  %1393 = zext i8 %1391 to i16
  store i16 %1393, ptr %108, align 4
  store i16 0, ptr %802, align 2
  store ptr %107, ptr %803, align 4
  %1394 = load ptr, ptr %1039, align 4
  %1395 = call i32 @i2c_transfer(ptr noundef %1394, ptr noundef nonnull %108, i32 noundef 1) #11
  %1396 = icmp eq i32 %1395, 1
  br i1 %1396, label %1401, label %1397

1397:                                             ; preds = %1388
  %1398 = load ptr, ptr %1039, align 4
  %1399 = getelementptr inbounds %struct.i2c_adapter, ptr %1398, i32 0, i32 9
  %1400 = zext i8 %1392 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1399, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1395, i32 noundef 83, i32 noundef %1400) #12
  br label %1401

1401:                                             ; preds = %1397, %1388
  %1402 = phi i32 [ %1395, %1397 ], [ 0, %1388 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %108) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %107) #11
  br label %1403

1403:                                             ; preds = %1401, %1357
  %1404 = phi i32 [ %1358, %1357 ], [ %1402, %1401 ]
  %1405 = icmp sgt i32 %1404, -1
  br i1 %1405, label %1406, label %1418

1406:                                             ; preds = %1403
  %1407 = add nuw nsw i32 %1029, 1
  %1408 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 %1407
  store i8 3, ptr %1408, align 1
  %1409 = zext i32 %1116 to i64
  %1410 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 %1407, i32 1
  %1411 = load i64, ptr %1410, align 1
  %1412 = add i64 %1411, %1409
  store i64 %1412, ptr %1410, align 1
  %1413 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 %1407
  store i8 3, ptr %1413, align 1
  %1414 = zext i32 %1213 to i64
  %1415 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 %1407, i32 1
  %1416 = load i64, ptr %1415, align 1
  %1417 = add i64 %1416, %1414
  store i64 %1417, ptr %1415, align 1
  br label %1429

1418:                                             ; preds = %1403, %1383, %1364, %1342, %1317, %1301, %1287, %1270, %1256, %1239, %1204, %1191, %1171, %1158, %1139, %1126, %1102, %1086, %1070, %1048
  %1419 = phi i32 [ %1404, %1403 ], [ %1380, %1383 ], [ %1339, %1342 ], [ %1314, %1317 ], [ %1298, %1301 ], [ %1284, %1287 ], [ %1267, %1270 ], [ %1253, %1256 ], [ %1236, %1239 ], [ %1188, %1191 ], [ %1155, %1158 ], [ %1123, %1126 ], [ %1046, %1048 ], [ %1068, %1070 ], [ %1084, %1086 ], [ %1100, %1102 ], [ %1137, %1139 ], [ %1362, %1364 ], [ %1202, %1204 ], [ %1169, %1171 ]
  %1420 = icmp eq i32 %1419, -16
  br i1 %1420, label %1429, label %1421

1421:                                             ; preds = %1418, %1364, %1204, %1171, %1139, %1102, %1086, %1070, %1048
  %1422 = phi i32 [ %1419, %1418 ], [ -5, %1139 ], [ -5, %1102 ], [ -5, %1086 ], [ -5, %1070 ], [ -5, %1048 ], [ -5, %1364 ], [ -5, %1204 ], [ -5, %1171 ]
  %1423 = add nuw nsw i32 %1029, 1
  %1424 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 %1423
  store i8 0, ptr %1424, align 1
  %1425 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 %1423
  store i8 0, ptr %1425, align 1
  %1426 = load ptr, ptr %201, align 4
  %1427 = getelementptr inbounds %struct.i2c_adapter, ptr %1426, i32 0, i32 9
  %1428 = add nuw nsw i32 %1029, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1427, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mb86a20s_get_stats, i32 noundef %1428, i32 noundef %1422) #12
  br label %1429

1429:                                             ; preds = %1421, %1418, %1406, %1054
  %1430 = add nuw nsw i32 %1029, 1
  %1431 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 %1430
  %1432 = load i8, ptr %1431, align 1
  %1433 = icmp ne i8 %1432, 0
  %1434 = zext i1 %1433 to i32
  %1435 = add i32 %1022, %1434
  %1436 = load ptr, ptr %200, align 4
  %1437 = getelementptr inbounds %struct.mb86a20s_state, ptr %1436, i32 0, i32 1
  %1438 = load ptr, ptr %1437, align 4
  %1439 = getelementptr inbounds %struct.mb86a20s_config, ptr %1438, i32 0, i32 1
  %1440 = load i8, ptr %1439, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %140) #11
  store i8 96, ptr %140, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %141) #11
  store i8 0, ptr %141, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %142) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %804, i8 0, i32 16, i1 false) #11, !annotation !8
  %1441 = zext i8 %1440 to i16
  store i16 %1441, ptr %142, align 4
  store i16 0, ptr %805, align 2
  store i16 1, ptr %804, align 4
  store ptr %140, ptr %806, align 4
  store i16 %1441, ptr %807, align 4
  store i16 1, ptr %808, align 2
  store i16 1, ptr %809, align 4
  store ptr %141, ptr %810, align 4
  %1442 = load ptr, ptr %1436, align 4
  %1443 = call i32 @i2c_transfer(ptr noundef %1442, ptr noundef nonnull %142, i32 noundef 2) #11
  %1444 = icmp eq i32 %1443, 2
  br i1 %1444, label %1451, label %1445

1445:                                             ; preds = %1429
  %1446 = load ptr, ptr %1436, align 4
  %1447 = getelementptr inbounds %struct.i2c_adapter, ptr %1446, i32 0, i32 9
  %1448 = load i8, ptr %140, align 1
  %1449 = zext i8 %1448 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1447, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1449, i32 noundef %1443) #12
  %1450 = icmp slt i32 %1443, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %142) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %141) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %140) #11
  br i1 %1450, label %1755, label %1758

1451:                                             ; preds = %1429
  %1452 = load i8, ptr %141, align 1
  %1453 = zext i8 %1452 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %142) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %141) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %140) #11
  %1454 = and i32 %1033, %1453
  %1455 = icmp eq i32 %1454, 0
  br i1 %1455, label %1765, label %1456

1456:                                             ; preds = %1451
  %1457 = load ptr, ptr %1437, align 4
  %1458 = getelementptr inbounds %struct.mb86a20s_config, ptr %1457, i32 0, i32 1
  %1459 = load i8, ptr %1458, align 4
  %1460 = trunc i32 %1029 to i8
  %1461 = mul nuw nsw i8 %1460, 3
  %1462 = add nuw nsw i8 %1461, 100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %137) #11
  store i8 %1462, ptr %137, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %138) #11
  store i8 0, ptr %138, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %139) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %811, i8 0, i32 16, i1 false) #11, !annotation !8
  %1463 = zext i8 %1459 to i16
  store i16 %1463, ptr %139, align 4
  store i16 0, ptr %812, align 2
  store i16 1, ptr %811, align 4
  store ptr %137, ptr %813, align 4
  store i16 %1463, ptr %814, align 4
  store i16 1, ptr %815, align 2
  store i16 1, ptr %816, align 4
  store ptr %138, ptr %817, align 4
  %1464 = load ptr, ptr %1436, align 4
  %1465 = call i32 @i2c_transfer(ptr noundef %1464, ptr noundef nonnull %139, i32 noundef 2) #11
  %1466 = icmp eq i32 %1465, 2
  br i1 %1466, label %1473, label %1467

1467:                                             ; preds = %1456
  %1468 = load ptr, ptr %1436, align 4
  %1469 = getelementptr inbounds %struct.i2c_adapter, ptr %1468, i32 0, i32 9
  %1470 = load i8, ptr %137, align 1
  %1471 = zext i8 %1470 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1469, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1471, i32 noundef %1465) #12
  %1472 = icmp slt i32 %1465, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %139) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %138) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %137) #11
  br i1 %1472, label %1755, label %1758

1473:                                             ; preds = %1456
  %1474 = load i8, ptr %138, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %139) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %138) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %137) #11
  %1475 = load ptr, ptr %1437, align 4
  %1476 = getelementptr inbounds %struct.mb86a20s_config, ptr %1475, i32 0, i32 1
  %1477 = load i8, ptr %1476, align 4
  %1478 = add nuw nsw i8 %1461, 101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %134) #11
  store i8 %1478, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %135) #11
  store i8 0, ptr %135, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %136) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %818, i8 0, i32 16, i1 false) #11, !annotation !8
  %1479 = zext i8 %1477 to i16
  store i16 %1479, ptr %136, align 4
  store i16 0, ptr %819, align 2
  store i16 1, ptr %818, align 4
  store ptr %134, ptr %820, align 4
  store i16 %1479, ptr %821, align 4
  store i16 1, ptr %822, align 2
  store i16 1, ptr %823, align 4
  store ptr %135, ptr %824, align 4
  %1480 = load ptr, ptr %1436, align 4
  %1481 = call i32 @i2c_transfer(ptr noundef %1480, ptr noundef nonnull %136, i32 noundef 2) #11
  %1482 = icmp eq i32 %1481, 2
  br i1 %1482, label %1489, label %1483

1483:                                             ; preds = %1473
  %1484 = load ptr, ptr %1436, align 4
  %1485 = getelementptr inbounds %struct.i2c_adapter, ptr %1484, i32 0, i32 9
  %1486 = load i8, ptr %134, align 1
  %1487 = zext i8 %1486 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1485, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1487, i32 noundef %1481) #12
  %1488 = icmp slt i32 %1481, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %136) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %135) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %134) #11
  br i1 %1488, label %1755, label %1758

1489:                                             ; preds = %1473
  %1490 = load i8, ptr %135, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %136) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %135) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %134) #11
  %1491 = load ptr, ptr %1437, align 4
  %1492 = getelementptr inbounds %struct.mb86a20s_config, ptr %1491, i32 0, i32 1
  %1493 = load i8, ptr %1492, align 4
  %1494 = add nuw nsw i8 %1461, 102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %131) #11
  store i8 %1494, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %132) #11
  store i8 0, ptr %132, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %133) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %825, i8 0, i32 16, i1 false) #11, !annotation !8
  %1495 = zext i8 %1493 to i16
  store i16 %1495, ptr %133, align 4
  store i16 0, ptr %826, align 2
  store i16 1, ptr %825, align 4
  store ptr %131, ptr %827, align 4
  store i16 %1495, ptr %828, align 4
  store i16 1, ptr %829, align 2
  store i16 1, ptr %830, align 4
  store ptr %132, ptr %831, align 4
  %1496 = load ptr, ptr %1436, align 4
  %1497 = call i32 @i2c_transfer(ptr noundef %1496, ptr noundef nonnull %133, i32 noundef 2) #11
  %1498 = icmp eq i32 %1497, 2
  br i1 %1498, label %1505, label %1499

1499:                                             ; preds = %1489
  %1500 = load ptr, ptr %1436, align 4
  %1501 = getelementptr inbounds %struct.i2c_adapter, ptr %1500, i32 0, i32 9
  %1502 = load i8, ptr %131, align 1
  %1503 = zext i8 %1502 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1501, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1503, i32 noundef %1497) #12
  %1504 = icmp slt i32 %1497, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %133) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %132) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %131) #11
  br i1 %1504, label %1755, label %1758

1505:                                             ; preds = %1489
  %1506 = zext i8 %1490 to i32
  %1507 = shl nuw nsw i32 %1506, 8
  %1508 = zext i8 %1474 to i32
  %1509 = shl nuw nsw i32 %1508, 16
  %1510 = or i32 %1507, %1509
  %1511 = load i8, ptr %132, align 1
  %1512 = zext i8 %1511 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %133) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %132) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %131) #11
  %1513 = or i32 %1510, %1512
  %1514 = load ptr, ptr %1437, align 4
  %1515 = getelementptr inbounds %struct.mb86a20s_config, ptr %1514, i32 0, i32 1
  %1516 = load i8, ptr %1515, align 4
  %1517 = shl nuw nsw i8 %1460, 1
  %1518 = add nuw nsw i8 %1517, -36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %129) #11
  store i8 80, ptr %129, align 2
  store i8 %1518, ptr %832, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %130) #11
  store i32 2, ptr %833, align 4, !annotation !8
  %1519 = zext i8 %1516 to i16
  store i16 %1519, ptr %130, align 4
  store i16 0, ptr %834, align 2
  store ptr %129, ptr %835, align 4
  %1520 = load ptr, ptr %1436, align 4
  %1521 = call i32 @i2c_transfer(ptr noundef %1520, ptr noundef nonnull %130, i32 noundef 1) #11
  %1522 = icmp eq i32 %1521, 1
  br i1 %1522, label %1523, label %1524

1523:                                             ; preds = %1505
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %130) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %129) #11
  br label %1529

1524:                                             ; preds = %1505
  %1525 = load ptr, ptr %1436, align 4
  %1526 = getelementptr inbounds %struct.i2c_adapter, ptr %1525, i32 0, i32 9
  %1527 = zext i8 %1518 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1526, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1521, i32 noundef 80, i32 noundef %1527) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %130) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %129) #11
  %1528 = icmp slt i32 %1521, 0
  br i1 %1528, label %1755, label %1529

1529:                                             ; preds = %1524, %1523
  %1530 = load ptr, ptr %1437, align 4
  %1531 = getelementptr inbounds %struct.mb86a20s_config, ptr %1530, i32 0, i32 1
  %1532 = load i8, ptr %1531, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %126) #11
  store i8 81, ptr %126, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %127) #11
  store i8 0, ptr %127, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %128) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %836, i8 0, i32 16, i1 false) #11, !annotation !8
  %1533 = zext i8 %1532 to i16
  store i16 %1533, ptr %128, align 4
  store i16 0, ptr %837, align 2
  store i16 1, ptr %836, align 4
  store ptr %126, ptr %838, align 4
  store i16 %1533, ptr %839, align 4
  store i16 1, ptr %840, align 2
  store i16 1, ptr %841, align 4
  store ptr %127, ptr %842, align 4
  %1534 = load ptr, ptr %1436, align 4
  %1535 = call i32 @i2c_transfer(ptr noundef %1534, ptr noundef nonnull %128, i32 noundef 2) #11
  %1536 = icmp eq i32 %1535, 2
  br i1 %1536, label %1543, label %1537

1537:                                             ; preds = %1529
  %1538 = load ptr, ptr %1436, align 4
  %1539 = getelementptr inbounds %struct.i2c_adapter, ptr %1538, i32 0, i32 9
  %1540 = load i8, ptr %126, align 1
  %1541 = zext i8 %1540 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1539, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1541, i32 noundef %1535) #12
  %1542 = icmp slt i32 %1535, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %128) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %127) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %126) #11
  br i1 %1542, label %1755, label %1758

1543:                                             ; preds = %1529
  %1544 = load i8, ptr %127, align 1
  %1545 = zext i8 %1544 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %128) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %127) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %126) #11
  %1546 = shl nuw nsw i32 %1545, 8
  %1547 = load ptr, ptr %1437, align 4
  %1548 = getelementptr inbounds %struct.mb86a20s_config, ptr %1547, i32 0, i32 1
  %1549 = load i8, ptr %1548, align 4
  %1550 = add nuw nsw i8 %1517, -35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %44) #11
  store i8 80, ptr %44, align 2
  store i8 %1550, ptr %843, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #11
  store i32 2, ptr %844, align 4, !annotation !8
  %1551 = zext i8 %1549 to i16
  store i16 %1551, ptr %45, align 4
  store i16 0, ptr %845, align 2
  store ptr %44, ptr %846, align 4
  %1552 = load ptr, ptr %1436, align 4
  %1553 = call i32 @i2c_transfer(ptr noundef %1552, ptr noundef nonnull %45, i32 noundef 1) #11
  %1554 = icmp eq i32 %1553, 1
  br i1 %1554, label %1555, label %1556

1555:                                             ; preds = %1543
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #11
  br label %1561

1556:                                             ; preds = %1543
  %1557 = load ptr, ptr %1436, align 4
  %1558 = getelementptr inbounds %struct.i2c_adapter, ptr %1557, i32 0, i32 9
  %1559 = zext i8 %1550 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1558, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1553, i32 noundef 80, i32 noundef %1559) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %44) #11
  %1560 = icmp slt i32 %1553, 0
  br i1 %1560, label %1755, label %1561

1561:                                             ; preds = %1556, %1555
  %1562 = load ptr, ptr %1437, align 4
  %1563 = getelementptr inbounds %struct.mb86a20s_config, ptr %1562, i32 0, i32 1
  %1564 = load i8, ptr %1563, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %46)
  store i8 81, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %47) #11
  store i8 0, ptr %47, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %48) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %847, i8 0, i32 16, i1 false) #11, !annotation !8
  %1565 = zext i8 %1564 to i16
  store i16 %1565, ptr %48, align 4
  store i16 0, ptr %848, align 2
  store i16 1, ptr %847, align 4
  store ptr %46, ptr %849, align 4
  store i16 %1565, ptr %850, align 4
  store i16 1, ptr %851, align 2
  store i16 1, ptr %852, align 4
  store ptr %47, ptr %853, align 4
  %1566 = load ptr, ptr %1436, align 4
  %1567 = call i32 @i2c_transfer(ptr noundef %1566, ptr noundef nonnull %48, i32 noundef 2) #11
  %1568 = icmp eq i32 %1567, 2
  br i1 %1568, label %1575, label %1569

1569:                                             ; preds = %1561
  %1570 = load ptr, ptr %1436, align 4
  %1571 = getelementptr inbounds %struct.i2c_adapter, ptr %1570, i32 0, i32 9
  %1572 = load i8, ptr %46, align 1
  %1573 = zext i8 %1572 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1571, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1573, i32 noundef %1567) #12
  %1574 = icmp slt i32 %1567, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %48) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %47) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %46)
  br i1 %1574, label %1755, label %1758

1575:                                             ; preds = %1561
  %1576 = load i8, ptr %47, align 1
  %1577 = zext i8 %1576 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %48) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %47) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %46)
  %1578 = or i32 %1546, %1577
  %1579 = mul nuw nsw i32 %1578, 1632
  %1580 = getelementptr %struct.mb86a20s_state, ptr %1436, i32 0, i32 8, i32 %1029
  %1581 = load i32, ptr %1580, align 4
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1694, label %1583

1583:                                             ; preds = %1575
  %1584 = udiv i32 %1581, 1632
  %1585 = call i32 @llvm.umax.i32(i32 %1584, i32 32) #11
  %1586 = call i32 @llvm.umin.i32(i32 %1585, i32 65535) #11
  %1587 = icmp eq i32 %1586, %1578
  br i1 %1587, label %1694, label %1588

1588:                                             ; preds = %1583
  %1589 = load ptr, ptr %1437, align 4
  %1590 = getelementptr inbounds %struct.mb86a20s_config, ptr %1589, i32 0, i32 1
  %1591 = load i8, ptr %1590, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %49) #11
  store i8 94, ptr %49, align 2
  store i8 0, ptr %854, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %50) #11
  store i32 2, ptr %855, align 4, !annotation !8
  %1592 = zext i8 %1591 to i16
  store i16 %1592, ptr %50, align 4
  store i16 0, ptr %856, align 2
  store ptr %49, ptr %857, align 4
  %1593 = load ptr, ptr %1436, align 4
  %1594 = call i32 @i2c_transfer(ptr noundef %1593, ptr noundef nonnull %50, i32 noundef 1) #11
  %1595 = icmp eq i32 %1594, 1
  br i1 %1595, label %1599, label %1596

1596:                                             ; preds = %1588
  %1597 = load ptr, ptr %1436, align 4
  %1598 = getelementptr inbounds %struct.i2c_adapter, ptr %1597, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1598, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1594, i32 noundef 94, i32 noundef 0) #12
  br label %1599

1599:                                             ; preds = %1596, %1588
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %50) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %49) #11
  %1600 = load ptr, ptr %1437, align 4
  %1601 = getelementptr inbounds %struct.mb86a20s_config, ptr %1600, i32 0, i32 1
  %1602 = load i8, ptr %1601, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %51) #11
  store i8 80, ptr %51, align 2
  store i8 %1518, ptr %858, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #11
  store i32 2, ptr %859, align 4, !annotation !8
  %1603 = zext i8 %1602 to i16
  store i16 %1603, ptr %52, align 4
  store i16 0, ptr %860, align 2
  store ptr %51, ptr %861, align 4
  %1604 = load ptr, ptr %1436, align 4
  %1605 = call i32 @i2c_transfer(ptr noundef %1604, ptr noundef nonnull %52, i32 noundef 1) #11
  %1606 = icmp eq i32 %1605, 1
  br i1 %1606, label %1607, label %1608

1607:                                             ; preds = %1599
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #11
  br label %1613

1608:                                             ; preds = %1599
  %1609 = load ptr, ptr %1436, align 4
  %1610 = getelementptr inbounds %struct.i2c_adapter, ptr %1609, i32 0, i32 9
  %1611 = zext i8 %1518 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1610, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1605, i32 noundef 80, i32 noundef %1611) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %51) #11
  %1612 = icmp slt i32 %1605, 0
  br i1 %1612, label %1755, label %1613

1613:                                             ; preds = %1608, %1607
  %1614 = load ptr, ptr %1437, align 4
  %1615 = getelementptr inbounds %struct.mb86a20s_config, ptr %1614, i32 0, i32 1
  %1616 = load i8, ptr %1615, align 4
  %1617 = lshr i32 %1586, 8
  %1618 = trunc i32 %1617 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #11
  store i8 81, ptr %53, align 2
  store i8 %1618, ptr %862, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %54) #11
  store i32 2, ptr %863, align 4, !annotation !8
  %1619 = zext i8 %1616 to i16
  store i16 %1619, ptr %54, align 4
  store i16 0, ptr %864, align 2
  store ptr %53, ptr %865, align 4
  %1620 = load ptr, ptr %1436, align 4
  %1621 = call i32 @i2c_transfer(ptr noundef %1620, ptr noundef nonnull %54, i32 noundef 1) #11
  %1622 = icmp eq i32 %1621, 1
  br i1 %1622, label %1623, label %1624

1623:                                             ; preds = %1613
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #11
  br label %1628

1624:                                             ; preds = %1613
  %1625 = load ptr, ptr %1436, align 4
  %1626 = getelementptr inbounds %struct.i2c_adapter, ptr %1625, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1626, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1621, i32 noundef 81, i32 noundef %1617) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %54) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #11
  %1627 = icmp slt i32 %1621, 0
  br i1 %1627, label %1755, label %1628

1628:                                             ; preds = %1624, %1623
  %1629 = load ptr, ptr %1437, align 4
  %1630 = getelementptr inbounds %struct.mb86a20s_config, ptr %1629, i32 0, i32 1
  %1631 = load i8, ptr %1630, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #11
  store i8 80, ptr %55, align 2
  store i8 %1550, ptr %866, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %56) #11
  store i32 2, ptr %867, align 4, !annotation !8
  %1632 = zext i8 %1631 to i16
  store i16 %1632, ptr %56, align 4
  store i16 0, ptr %868, align 2
  store ptr %55, ptr %869, align 4
  %1633 = load ptr, ptr %1436, align 4
  %1634 = call i32 @i2c_transfer(ptr noundef %1633, ptr noundef nonnull %56, i32 noundef 1) #11
  %1635 = icmp eq i32 %1634, 1
  br i1 %1635, label %1636, label %1637

1636:                                             ; preds = %1628
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #11
  br label %1642

1637:                                             ; preds = %1628
  %1638 = load ptr, ptr %1436, align 4
  %1639 = getelementptr inbounds %struct.i2c_adapter, ptr %1638, i32 0, i32 9
  %1640 = zext i8 %1550 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1639, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1634, i32 noundef 80, i32 noundef %1640) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %56) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #11
  %1641 = icmp slt i32 %1634, 0
  br i1 %1641, label %1755, label %1642

1642:                                             ; preds = %1637, %1636
  %1643 = load ptr, ptr %1437, align 4
  %1644 = getelementptr inbounds %struct.mb86a20s_config, ptr %1643, i32 0, i32 1
  %1645 = load i8, ptr %1644, align 4
  %1646 = trunc i32 %1586 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %57) #11
  store i8 81, ptr %57, align 2
  store i8 %1646, ptr %870, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #11
  store i32 2, ptr %871, align 4, !annotation !8
  %1647 = zext i8 %1645 to i16
  store i16 %1647, ptr %58, align 4
  store i16 0, ptr %872, align 2
  store ptr %57, ptr %873, align 4
  %1648 = load ptr, ptr %1436, align 4
  %1649 = call i32 @i2c_transfer(ptr noundef %1648, ptr noundef nonnull %58, i32 noundef 1) #11
  %1650 = icmp eq i32 %1649, 1
  br i1 %1650, label %1651, label %1652

1651:                                             ; preds = %1642
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #11
  br label %1657

1652:                                             ; preds = %1642
  %1653 = load ptr, ptr %1436, align 4
  %1654 = getelementptr inbounds %struct.i2c_adapter, ptr %1653, i32 0, i32 9
  %1655 = and i32 %1586, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1654, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1649, i32 noundef 81, i32 noundef %1655) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %57) #11
  %1656 = icmp slt i32 %1649, 0
  br i1 %1656, label %1755, label %1657

1657:                                             ; preds = %1652, %1651
  %1658 = load ptr, ptr %1437, align 4
  %1659 = getelementptr inbounds %struct.mb86a20s_config, ptr %1658, i32 0, i32 1
  %1660 = load i8, ptr %1659, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %59) #11
  store i8 94, ptr %59, align 2
  store i8 7, ptr %874, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #11
  store i32 2, ptr %875, align 4, !annotation !8
  %1661 = zext i8 %1660 to i16
  store i16 %1661, ptr %60, align 4
  store i16 0, ptr %876, align 2
  store ptr %59, ptr %877, align 4
  %1662 = load ptr, ptr %1436, align 4
  %1663 = call i32 @i2c_transfer(ptr noundef %1662, ptr noundef nonnull %60, i32 noundef 1) #11
  %1664 = icmp eq i32 %1663, 1
  br i1 %1664, label %1668, label %1665

1665:                                             ; preds = %1657
  %1666 = load ptr, ptr %1436, align 4
  %1667 = getelementptr inbounds %struct.i2c_adapter, ptr %1666, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1667, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1663, i32 noundef 94, i32 noundef 7) #12
  br label %1668

1668:                                             ; preds = %1665, %1657
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %59) #11
  %1669 = load ptr, ptr %1437, align 4
  %1670 = getelementptr inbounds %struct.mb86a20s_config, ptr %1669, i32 0, i32 1
  %1671 = load i8, ptr %1670, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %61) #11
  store i8 95, ptr %61, align 2
  store i8 0, ptr %878, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #11
  store i32 2, ptr %879, align 4, !annotation !8
  %1672 = zext i8 %1671 to i16
  store i16 %1672, ptr %62, align 4
  store i16 0, ptr %880, align 2
  store ptr %61, ptr %881, align 4
  %1673 = load ptr, ptr %1436, align 4
  %1674 = call i32 @i2c_transfer(ptr noundef %1673, ptr noundef nonnull %62, i32 noundef 1) #11
  %1675 = icmp eq i32 %1674, 1
  br i1 %1675, label %1676, label %1677

1676:                                             ; preds = %1668
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %61) #11
  br label %1681

1677:                                             ; preds = %1668
  %1678 = load ptr, ptr %1436, align 4
  %1679 = getelementptr inbounds %struct.i2c_adapter, ptr %1678, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1679, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1674, i32 noundef 95, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %61) #11
  %1680 = icmp slt i32 %1674, 0
  br i1 %1680, label %1755, label %1681

1681:                                             ; preds = %1677, %1676
  %1682 = load ptr, ptr %1437, align 4
  %1683 = getelementptr inbounds %struct.mb86a20s_config, ptr %1682, i32 0, i32 1
  %1684 = load i8, ptr %1683, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %63) #11
  store i8 95, ptr %63, align 2
  store i8 7, ptr %882, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #11
  store i32 2, ptr %883, align 4, !annotation !8
  %1685 = zext i8 %1684 to i16
  store i16 %1685, ptr %64, align 4
  store i16 0, ptr %884, align 2
  store ptr %63, ptr %885, align 4
  %1686 = load ptr, ptr %1436, align 4
  %1687 = call i32 @i2c_transfer(ptr noundef %1686, ptr noundef nonnull %64, i32 noundef 1) #11
  %1688 = icmp eq i32 %1687, 1
  br i1 %1688, label %1692, label %1689

1689:                                             ; preds = %1681
  %1690 = load ptr, ptr %1436, align 4
  %1691 = getelementptr inbounds %struct.i2c_adapter, ptr %1690, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1691, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1687, i32 noundef 95, i32 noundef 7) #12
  br label %1692

1692:                                             ; preds = %1689, %1681
  %1693 = phi i32 [ %1687, %1689 ], [ 0, %1681 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %63) #11
  br label %1741

1694:                                             ; preds = %1583, %1575
  %1695 = load ptr, ptr %1437, align 4
  %1696 = getelementptr inbounds %struct.mb86a20s_config, ptr %1695, i32 0, i32 1
  %1697 = load i8, ptr %1696, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %65)
  store i8 95, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %66) #11
  store i8 0, ptr %66, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %67) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %886, i8 0, i32 16, i1 false) #11, !annotation !8
  %1698 = zext i8 %1697 to i16
  store i16 %1698, ptr %67, align 4
  store i16 0, ptr %887, align 2
  store i16 1, ptr %886, align 4
  store ptr %65, ptr %888, align 4
  store i16 %1698, ptr %889, align 4
  store i16 1, ptr %890, align 2
  store i16 1, ptr %891, align 4
  store ptr %66, ptr %892, align 4
  %1699 = load ptr, ptr %1436, align 4
  %1700 = call i32 @i2c_transfer(ptr noundef %1699, ptr noundef nonnull %67, i32 noundef 2) #11
  %1701 = icmp eq i32 %1700, 2
  br i1 %1701, label %1708, label %1702

1702:                                             ; preds = %1694
  %1703 = load ptr, ptr %1436, align 4
  %1704 = getelementptr inbounds %struct.i2c_adapter, ptr %1703, i32 0, i32 9
  %1705 = load i8, ptr %65, align 1
  %1706 = zext i8 %1705 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1704, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1706, i32 noundef %1700) #12
  %1707 = icmp slt i32 %1700, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %67) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %66) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %65)
  br i1 %1707, label %1755, label %1758

1708:                                             ; preds = %1694
  %1709 = load i8, ptr %66, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %67) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %66) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %65)
  %1710 = load ptr, ptr %1437, align 4
  %1711 = getelementptr inbounds %struct.mb86a20s_config, ptr %1710, i32 0, i32 1
  %1712 = load i8, ptr %1711, align 4
  %1713 = trunc i32 %1033 to i8
  %1714 = xor i8 %1713, -1
  %1715 = and i8 %1709, %1714
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %68) #11
  store i8 95, ptr %68, align 2
  store i8 %1715, ptr %893, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #11
  store i32 2, ptr %894, align 4, !annotation !8
  %1716 = zext i8 %1712 to i16
  store i16 %1716, ptr %69, align 4
  store i16 0, ptr %895, align 2
  store ptr %68, ptr %896, align 4
  %1717 = load ptr, ptr %1436, align 4
  %1718 = call i32 @i2c_transfer(ptr noundef %1717, ptr noundef nonnull %69, i32 noundef 1) #11
  %1719 = icmp eq i32 %1718, 1
  br i1 %1719, label %1720, label %1721

1720:                                             ; preds = %1708
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #11
  br label %1726

1721:                                             ; preds = %1708
  %1722 = load ptr, ptr %1436, align 4
  %1723 = getelementptr inbounds %struct.i2c_adapter, ptr %1722, i32 0, i32 9
  %1724 = zext i8 %1715 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1723, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1718, i32 noundef 95, i32 noundef %1724) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %68) #11
  %1725 = icmp slt i32 %1718, 0
  br i1 %1725, label %1755, label %1726

1726:                                             ; preds = %1721, %1720
  %1727 = load ptr, ptr %1437, align 4
  %1728 = getelementptr inbounds %struct.mb86a20s_config, ptr %1727, i32 0, i32 1
  %1729 = load i8, ptr %1728, align 4
  %1730 = or i8 %1709, %1713
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %70) #11
  store i8 95, ptr %70, align 2
  store i8 %1730, ptr %897, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #11
  store i32 2, ptr %898, align 4, !annotation !8
  %1731 = zext i8 %1729 to i16
  store i16 %1731, ptr %71, align 4
  store i16 0, ptr %899, align 2
  store ptr %70, ptr %900, align 4
  %1732 = load ptr, ptr %1436, align 4
  %1733 = call i32 @i2c_transfer(ptr noundef %1732, ptr noundef nonnull %71, i32 noundef 1) #11
  %1734 = icmp eq i32 %1733, 1
  br i1 %1734, label %1739, label %1735

1735:                                             ; preds = %1726
  %1736 = load ptr, ptr %1436, align 4
  %1737 = getelementptr inbounds %struct.i2c_adapter, ptr %1736, i32 0, i32 9
  %1738 = zext i8 %1730 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1737, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1733, i32 noundef 95, i32 noundef %1738) #12
  br label %1739

1739:                                             ; preds = %1735, %1726
  %1740 = phi i32 [ %1733, %1735 ], [ 0, %1726 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %70) #11
  br label %1741

1741:                                             ; preds = %1739, %1692
  %1742 = phi i32 [ %1693, %1692 ], [ %1740, %1739 ]
  %1743 = icmp sgt i32 %1742, -1
  br i1 %1743, label %1744, label %1755

1744:                                             ; preds = %1741
  %1745 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 %1430
  store i8 3, ptr %1745, align 1
  %1746 = zext i32 %1513 to i64
  %1747 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 %1430, i32 1
  %1748 = load i64, ptr %1747, align 1
  %1749 = add i64 %1748, %1746
  store i64 %1749, ptr %1747, align 1
  %1750 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 %1430
  store i8 3, ptr %1750, align 1
  %1751 = zext i32 %1579 to i64
  %1752 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 %1430, i32 1
  %1753 = load i64, ptr %1752, align 1
  %1754 = add i64 %1753, %1751
  store i64 %1754, ptr %1752, align 1
  br label %1765

1755:                                             ; preds = %1741, %1721, %1702, %1677, %1652, %1637, %1624, %1608, %1569, %1556, %1537, %1524, %1499, %1483, %1467, %1445
  %1756 = phi i32 [ %1742, %1741 ], [ %1718, %1721 ], [ %1674, %1677 ], [ %1649, %1652 ], [ %1634, %1637 ], [ %1621, %1624 ], [ %1605, %1608 ], [ %1553, %1556 ], [ %1521, %1524 ], [ %1443, %1445 ], [ %1465, %1467 ], [ %1481, %1483 ], [ %1497, %1499 ], [ %1535, %1537 ], [ %1700, %1702 ], [ %1567, %1569 ]
  %1757 = icmp eq i32 %1756, -16
  br i1 %1757, label %1765, label %1758

1758:                                             ; preds = %1755, %1702, %1569, %1537, %1499, %1483, %1467, %1445
  %1759 = phi i32 [ %1756, %1755 ], [ -5, %1537 ], [ -5, %1499 ], [ -5, %1483 ], [ -5, %1467 ], [ -5, %1445 ], [ -5, %1702 ], [ -5, %1569 ]
  %1760 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 %1430
  store i8 0, ptr %1760, align 1
  %1761 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 %1430
  store i8 0, ptr %1761, align 1
  %1762 = load ptr, ptr %201, align 4
  %1763 = getelementptr inbounds %struct.i2c_adapter, ptr %1762, i32 0, i32 9
  %1764 = add nuw nsw i32 %1029, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1763, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.mb86a20s_get_stats, i32 noundef %1764, i32 noundef %1759) #12
  br label %1765

1765:                                             ; preds = %1758, %1755, %1744, %1451
  %1766 = load i8, ptr %1431, align 1
  %1767 = icmp ne i8 %1766, 0
  %1768 = zext i1 %1767 to i32
  %1769 = add i32 %1021, %1768
  %1770 = load ptr, ptr %200, align 4
  %1771 = getelementptr inbounds %struct.mb86a20s_state, ptr %1770, i32 0, i32 1
  %1772 = load ptr, ptr %1771, align 4
  %1773 = getelementptr inbounds %struct.mb86a20s_config, ptr %1772, i32 0, i32 1
  %1774 = load i8, ptr %1773, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %124) #11
  store i8 80, ptr %124, align 2
  store i8 -72, ptr %901, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %125) #11
  store i32 2, ptr %902, align 4, !annotation !8
  %1775 = zext i8 %1774 to i16
  store i16 %1775, ptr %125, align 4
  store i16 0, ptr %903, align 2
  store ptr %124, ptr %904, align 4
  %1776 = load ptr, ptr %1770, align 4
  %1777 = call i32 @i2c_transfer(ptr noundef %1776, ptr noundef nonnull %125, i32 noundef 1) #11
  %1778 = icmp eq i32 %1777, 1
  br i1 %1778, label %1779, label %1780

1779:                                             ; preds = %1765
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %125) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %124) #11
  br label %1784

1780:                                             ; preds = %1765
  %1781 = load ptr, ptr %1770, align 4
  %1782 = getelementptr inbounds %struct.i2c_adapter, ptr %1781, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1782, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1777, i32 noundef 80, i32 noundef 184) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %125) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %124) #11
  %1783 = icmp slt i32 %1777, 0
  br i1 %1783, label %2164, label %1784

1784:                                             ; preds = %1780, %1779
  %1785 = load ptr, ptr %1771, align 4
  %1786 = getelementptr inbounds %struct.mb86a20s_config, ptr %1785, i32 0, i32 1
  %1787 = load i8, ptr %1786, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %121) #11
  store i8 81, ptr %121, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %122) #11
  store i8 0, ptr %122, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %123) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %905, i8 0, i32 16, i1 false) #11, !annotation !8
  %1788 = zext i8 %1787 to i16
  store i16 %1788, ptr %123, align 4
  store i16 0, ptr %906, align 2
  store i16 1, ptr %905, align 4
  store ptr %121, ptr %907, align 4
  store i16 %1788, ptr %908, align 4
  store i16 1, ptr %909, align 2
  store i16 1, ptr %910, align 4
  store ptr %122, ptr %911, align 4
  %1789 = load ptr, ptr %1770, align 4
  %1790 = call i32 @i2c_transfer(ptr noundef %1789, ptr noundef nonnull %123, i32 noundef 2) #11
  %1791 = icmp eq i32 %1790, 2
  br i1 %1791, label %1798, label %1792

1792:                                             ; preds = %1784
  %1793 = load ptr, ptr %1770, align 4
  %1794 = getelementptr inbounds %struct.i2c_adapter, ptr %1793, i32 0, i32 9
  %1795 = load i8, ptr %121, align 1
  %1796 = zext i8 %1795 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1794, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1796, i32 noundef %1790) #12
  %1797 = icmp slt i32 %1790, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %123) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %122) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %121) #11
  br i1 %1797, label %2164, label %2167

1798:                                             ; preds = %1784
  %1799 = load i8, ptr %122, align 1
  %1800 = zext i8 %1799 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %123) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %122) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %121) #11
  %1801 = and i32 %1033, %1800
  %1802 = icmp eq i32 %1801, 0
  br i1 %1802, label %2173, label %1803

1803:                                             ; preds = %1798
  %1804 = load ptr, ptr %1771, align 4
  %1805 = getelementptr inbounds %struct.mb86a20s_config, ptr %1804, i32 0, i32 1
  %1806 = load i8, ptr %1805, align 4
  %1807 = trunc i32 %1029 to i8
  %1808 = shl nuw nsw i8 %1807, 1
  %1809 = add nuw nsw i8 %1808, -71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %119) #11
  store i8 80, ptr %119, align 2
  store i8 %1809, ptr %912, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %120) #11
  store i32 2, ptr %913, align 4, !annotation !8
  %1810 = zext i8 %1806 to i16
  store i16 %1810, ptr %120, align 4
  store i16 0, ptr %914, align 2
  store ptr %119, ptr %915, align 4
  %1811 = load ptr, ptr %1770, align 4
  %1812 = call i32 @i2c_transfer(ptr noundef %1811, ptr noundef nonnull %120, i32 noundef 1) #11
  %1813 = icmp eq i32 %1812, 1
  br i1 %1813, label %1814, label %1815

1814:                                             ; preds = %1803
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %120) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %119) #11
  br label %1820

1815:                                             ; preds = %1803
  %1816 = load ptr, ptr %1770, align 4
  %1817 = getelementptr inbounds %struct.i2c_adapter, ptr %1816, i32 0, i32 9
  %1818 = zext i8 %1809 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1817, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1812, i32 noundef 80, i32 noundef %1818) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %120) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %119) #11
  %1819 = icmp slt i32 %1812, 0
  br i1 %1819, label %2164, label %1820

1820:                                             ; preds = %1815, %1814
  %1821 = load ptr, ptr %1771, align 4
  %1822 = getelementptr inbounds %struct.mb86a20s_config, ptr %1821, i32 0, i32 1
  %1823 = load i8, ptr %1822, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %116) #11
  store i8 81, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %117) #11
  store i8 0, ptr %117, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %118) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %916, i8 0, i32 16, i1 false) #11, !annotation !8
  %1824 = zext i8 %1823 to i16
  store i16 %1824, ptr %118, align 4
  store i16 0, ptr %917, align 2
  store i16 1, ptr %916, align 4
  store ptr %116, ptr %918, align 4
  store i16 %1824, ptr %919, align 4
  store i16 1, ptr %920, align 2
  store i16 1, ptr %921, align 4
  store ptr %117, ptr %922, align 4
  %1825 = load ptr, ptr %1770, align 4
  %1826 = call i32 @i2c_transfer(ptr noundef %1825, ptr noundef nonnull %118, i32 noundef 2) #11
  %1827 = icmp eq i32 %1826, 2
  br i1 %1827, label %1834, label %1828

1828:                                             ; preds = %1820
  %1829 = load ptr, ptr %1770, align 4
  %1830 = getelementptr inbounds %struct.i2c_adapter, ptr %1829, i32 0, i32 9
  %1831 = load i8, ptr %116, align 1
  %1832 = zext i8 %1831 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1830, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1832, i32 noundef %1826) #12
  %1833 = icmp slt i32 %1826, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %118) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %117) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %116) #11
  br i1 %1833, label %2164, label %2167

1834:                                             ; preds = %1820
  %1835 = load i8, ptr %117, align 1
  %1836 = zext i8 %1835 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %118) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %117) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %116) #11
  %1837 = shl nuw nsw i32 %1836, 8
  %1838 = load ptr, ptr %1771, align 4
  %1839 = getelementptr inbounds %struct.mb86a20s_config, ptr %1838, i32 0, i32 1
  %1840 = load i8, ptr %1839, align 4
  %1841 = add nuw nsw i8 %1808, -70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %114) #11
  store i8 80, ptr %114, align 2
  store i8 %1841, ptr %923, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %115) #11
  store i32 2, ptr %924, align 4, !annotation !8
  %1842 = zext i8 %1840 to i16
  store i16 %1842, ptr %115, align 4
  store i16 0, ptr %925, align 2
  store ptr %114, ptr %926, align 4
  %1843 = load ptr, ptr %1770, align 4
  %1844 = call i32 @i2c_transfer(ptr noundef %1843, ptr noundef nonnull %115, i32 noundef 1) #11
  %1845 = icmp eq i32 %1844, 1
  br i1 %1845, label %1846, label %1847

1846:                                             ; preds = %1834
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %115) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %114) #11
  br label %1852

1847:                                             ; preds = %1834
  %1848 = load ptr, ptr %1770, align 4
  %1849 = getelementptr inbounds %struct.i2c_adapter, ptr %1848, i32 0, i32 9
  %1850 = zext i8 %1841 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1849, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1844, i32 noundef 80, i32 noundef %1850) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %115) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %114) #11
  %1851 = icmp slt i32 %1844, 0
  br i1 %1851, label %2164, label %1852

1852:                                             ; preds = %1847, %1846
  %1853 = load ptr, ptr %1771, align 4
  %1854 = getelementptr inbounds %struct.mb86a20s_config, ptr %1853, i32 0, i32 1
  %1855 = load i8, ptr %1854, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %111) #11
  store i8 81, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %112) #11
  store i8 0, ptr %112, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %113) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %927, i8 0, i32 16, i1 false) #11, !annotation !8
  %1856 = zext i8 %1855 to i16
  store i16 %1856, ptr %113, align 4
  store i16 0, ptr %928, align 2
  store i16 1, ptr %927, align 4
  store ptr %111, ptr %929, align 4
  store i16 %1856, ptr %930, align 4
  store i16 1, ptr %931, align 2
  store i16 1, ptr %932, align 4
  store ptr %112, ptr %933, align 4
  %1857 = load ptr, ptr %1770, align 4
  %1858 = call i32 @i2c_transfer(ptr noundef %1857, ptr noundef nonnull %113, i32 noundef 2) #11
  %1859 = icmp eq i32 %1858, 2
  br i1 %1859, label %1866, label %1860

1860:                                             ; preds = %1852
  %1861 = load ptr, ptr %1770, align 4
  %1862 = getelementptr inbounds %struct.i2c_adapter, ptr %1861, i32 0, i32 9
  %1863 = load i8, ptr %111, align 1
  %1864 = zext i8 %1863 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1862, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1864, i32 noundef %1858) #12
  %1865 = icmp slt i32 %1858, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %113) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %112) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %111) #11
  br i1 %1865, label %2164, label %2167

1866:                                             ; preds = %1852
  %1867 = load i8, ptr %112, align 1
  %1868 = zext i8 %1867 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %113) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %112) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %111) #11
  %1869 = or i32 %1837, %1868
  %1870 = load ptr, ptr %1771, align 4
  %1871 = getelementptr inbounds %struct.mb86a20s_config, ptr %1870, i32 0, i32 1
  %1872 = load i8, ptr %1871, align 4
  %1873 = add nuw nsw i8 %1808, -78
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i8 80, ptr %3, align 2
  store i8 %1873, ptr %934, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #11
  store i32 2, ptr %935, align 4, !annotation !8
  %1874 = zext i8 %1872 to i16
  store i16 %1874, ptr %4, align 4
  store i16 0, ptr %936, align 2
  store ptr %3, ptr %937, align 4
  %1875 = load ptr, ptr %1770, align 4
  %1876 = call i32 @i2c_transfer(ptr noundef %1875, ptr noundef nonnull %4, i32 noundef 1) #11
  %1877 = icmp eq i32 %1876, 1
  br i1 %1877, label %1878, label %1879

1878:                                             ; preds = %1866
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %1884

1879:                                             ; preds = %1866
  %1880 = load ptr, ptr %1770, align 4
  %1881 = getelementptr inbounds %struct.i2c_adapter, ptr %1880, i32 0, i32 9
  %1882 = zext i8 %1873 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1881, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1876, i32 noundef 80, i32 noundef %1882) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  %1883 = icmp slt i32 %1876, 0
  br i1 %1883, label %2164, label %1884

1884:                                             ; preds = %1879, %1878
  %1885 = load ptr, ptr %1771, align 4
  %1886 = getelementptr inbounds %struct.mb86a20s_config, ptr %1885, i32 0, i32 1
  %1887 = load i8, ptr %1886, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 81, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %938, i8 0, i32 16, i1 false) #11, !annotation !8
  %1888 = zext i8 %1887 to i16
  store i16 %1888, ptr %7, align 4
  store i16 0, ptr %939, align 2
  store i16 1, ptr %938, align 4
  store ptr %5, ptr %940, align 4
  store i16 %1888, ptr %941, align 4
  store i16 1, ptr %942, align 2
  store i16 1, ptr %943, align 4
  store ptr %6, ptr %944, align 4
  %1889 = load ptr, ptr %1770, align 4
  %1890 = call i32 @i2c_transfer(ptr noundef %1889, ptr noundef nonnull %7, i32 noundef 2) #11
  %1891 = icmp eq i32 %1890, 2
  br i1 %1891, label %1898, label %1892

1892:                                             ; preds = %1884
  %1893 = load ptr, ptr %1770, align 4
  %1894 = getelementptr inbounds %struct.i2c_adapter, ptr %1893, i32 0, i32 9
  %1895 = load i8, ptr %5, align 1
  %1896 = zext i8 %1895 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1894, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1896, i32 noundef %1890) #12
  %1897 = icmp slt i32 %1890, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br i1 %1897, label %2164, label %2167

1898:                                             ; preds = %1884
  %1899 = load i8, ptr %6, align 1
  %1900 = zext i8 %1899 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %1901 = shl nuw nsw i32 %1900, 8
  %1902 = load ptr, ptr %1771, align 4
  %1903 = getelementptr inbounds %struct.mb86a20s_config, ptr %1902, i32 0, i32 1
  %1904 = load i8, ptr %1903, align 4
  %1905 = add nuw nsw i8 %1808, -77
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #11
  store i8 80, ptr %8, align 2
  store i8 %1905, ptr %945, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #11
  store i32 2, ptr %946, align 4, !annotation !8
  %1906 = zext i8 %1904 to i16
  store i16 %1906, ptr %9, align 4
  store i16 0, ptr %947, align 2
  store ptr %8, ptr %948, align 4
  %1907 = load ptr, ptr %1770, align 4
  %1908 = call i32 @i2c_transfer(ptr noundef %1907, ptr noundef nonnull %9, i32 noundef 1) #11
  %1909 = icmp eq i32 %1908, 1
  br i1 %1909, label %1910, label %1911

1910:                                             ; preds = %1898
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  br label %1916

1911:                                             ; preds = %1898
  %1912 = load ptr, ptr %1770, align 4
  %1913 = getelementptr inbounds %struct.i2c_adapter, ptr %1912, i32 0, i32 9
  %1914 = zext i8 %1905 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1913, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1908, i32 noundef 80, i32 noundef %1914) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #11
  %1915 = icmp slt i32 %1908, 0
  br i1 %1915, label %2164, label %1916

1916:                                             ; preds = %1911, %1910
  %1917 = load ptr, ptr %1771, align 4
  %1918 = getelementptr inbounds %struct.mb86a20s_config, ptr %1917, i32 0, i32 1
  %1919 = load i8, ptr %1918, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10)
  store i8 81, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %949, i8 0, i32 16, i1 false) #11, !annotation !8
  %1920 = zext i8 %1919 to i16
  store i16 %1920, ptr %12, align 4
  store i16 0, ptr %950, align 2
  store i16 1, ptr %949, align 4
  store ptr %10, ptr %951, align 4
  store i16 %1920, ptr %952, align 4
  store i16 1, ptr %953, align 2
  store i16 1, ptr %954, align 4
  store ptr %11, ptr %955, align 4
  %1921 = load ptr, ptr %1770, align 4
  %1922 = call i32 @i2c_transfer(ptr noundef %1921, ptr noundef nonnull %12, i32 noundef 2) #11
  %1923 = icmp eq i32 %1922, 2
  br i1 %1923, label %1930, label %1924

1924:                                             ; preds = %1916
  %1925 = load ptr, ptr %1770, align 4
  %1926 = getelementptr inbounds %struct.i2c_adapter, ptr %1925, i32 0, i32 9
  %1927 = load i8, ptr %10, align 1
  %1928 = zext i8 %1927 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1926, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %1928, i32 noundef %1922) #12
  %1929 = icmp slt i32 %1922, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  br i1 %1929, label %2164, label %2167

1930:                                             ; preds = %1916
  %1931 = load i8, ptr %11, align 1
  %1932 = zext i8 %1931 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  %1933 = or i32 %1901, %1932
  %1934 = getelementptr %struct.mb86a20s_state, ptr %1770, i32 0, i32 8, i32 %1029
  %1935 = load i32, ptr %1934, align 4
  %1936 = icmp eq i32 %1935, 0
  br i1 %1936, label %2091, label %1937

1937:                                             ; preds = %1930
  %1938 = udiv i32 %1935, 1632
  %1939 = call i32 @llvm.umax.i32(i32 %1938, i32 32) #11
  %1940 = call i32 @llvm.umin.i32(i32 %1939, i32 65535) #11
  %1941 = icmp eq i32 %1940, %1933
  br i1 %1941, label %2091, label %1942

1942:                                             ; preds = %1937
  %1943 = load ptr, ptr %1771, align 4
  %1944 = getelementptr inbounds %struct.mb86a20s_config, ptr %1943, i32 0, i32 1
  %1945 = load i8, ptr %1944, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #11
  store i8 80, ptr %13, align 2
  store i8 -80, ptr %956, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #11
  store i32 2, ptr %957, align 4, !annotation !8
  %1946 = zext i8 %1945 to i16
  store i16 %1946, ptr %14, align 4
  store i16 0, ptr %958, align 2
  store ptr %13, ptr %959, align 4
  %1947 = load ptr, ptr %1770, align 4
  %1948 = call i32 @i2c_transfer(ptr noundef %1947, ptr noundef nonnull %14, i32 noundef 1) #11
  %1949 = icmp eq i32 %1948, 1
  br i1 %1949, label %1950, label %1951

1950:                                             ; preds = %1942
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  br label %1955

1951:                                             ; preds = %1942
  %1952 = load ptr, ptr %1770, align 4
  %1953 = getelementptr inbounds %struct.i2c_adapter, ptr %1952, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1953, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1948, i32 noundef 80, i32 noundef 176) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #11
  %1954 = icmp slt i32 %1948, 0
  br i1 %1954, label %2164, label %1955

1955:                                             ; preds = %1951, %1950
  %1956 = load ptr, ptr %1771, align 4
  %1957 = getelementptr inbounds %struct.mb86a20s_config, ptr %1956, i32 0, i32 1
  %1958 = load i8, ptr %1957, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #11
  store i8 81, ptr %15, align 2
  store i8 0, ptr %960, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #11
  store i32 2, ptr %961, align 4, !annotation !8
  %1959 = zext i8 %1958 to i16
  store i16 %1959, ptr %16, align 4
  store i16 0, ptr %962, align 2
  store ptr %15, ptr %963, align 4
  %1960 = load ptr, ptr %1770, align 4
  %1961 = call i32 @i2c_transfer(ptr noundef %1960, ptr noundef nonnull %16, i32 noundef 1) #11
  %1962 = icmp eq i32 %1961, 1
  br i1 %1962, label %1963, label %1964

1963:                                             ; preds = %1955
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  br label %1968

1964:                                             ; preds = %1955
  %1965 = load ptr, ptr %1770, align 4
  %1966 = getelementptr inbounds %struct.i2c_adapter, ptr %1965, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1966, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1961, i32 noundef 81, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #11
  %1967 = icmp slt i32 %1961, 0
  br i1 %1967, label %2164, label %1968

1968:                                             ; preds = %1964, %1963
  %1969 = load ptr, ptr %1771, align 4
  %1970 = getelementptr inbounds %struct.mb86a20s_config, ptr %1969, i32 0, i32 1
  %1971 = load i8, ptr %1970, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #11
  store i8 80, ptr %17, align 2
  store i8 %1873, ptr %964, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #11
  store i32 2, ptr %965, align 4, !annotation !8
  %1972 = zext i8 %1971 to i16
  store i16 %1972, ptr %18, align 4
  store i16 0, ptr %966, align 2
  store ptr %17, ptr %967, align 4
  %1973 = load ptr, ptr %1770, align 4
  %1974 = call i32 @i2c_transfer(ptr noundef %1973, ptr noundef nonnull %18, i32 noundef 1) #11
  %1975 = icmp eq i32 %1974, 1
  br i1 %1975, label %1976, label %1977

1976:                                             ; preds = %1968
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #11
  br label %1982

1977:                                             ; preds = %1968
  %1978 = load ptr, ptr %1770, align 4
  %1979 = getelementptr inbounds %struct.i2c_adapter, ptr %1978, i32 0, i32 9
  %1980 = zext i8 %1873 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1979, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1974, i32 noundef 80, i32 noundef %1980) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #11
  %1981 = icmp slt i32 %1974, 0
  br i1 %1981, label %2164, label %1982

1982:                                             ; preds = %1977, %1976
  %1983 = load ptr, ptr %1771, align 4
  %1984 = getelementptr inbounds %struct.mb86a20s_config, ptr %1983, i32 0, i32 1
  %1985 = load i8, ptr %1984, align 4
  %1986 = lshr i32 %1940, 8
  %1987 = trunc i32 %1986 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #11
  store i8 81, ptr %19, align 2
  store i8 %1987, ptr %968, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #11
  store i32 2, ptr %969, align 4, !annotation !8
  %1988 = zext i8 %1985 to i16
  store i16 %1988, ptr %20, align 4
  store i16 0, ptr %970, align 2
  store ptr %19, ptr %971, align 4
  %1989 = load ptr, ptr %1770, align 4
  %1990 = call i32 @i2c_transfer(ptr noundef %1989, ptr noundef nonnull %20, i32 noundef 1) #11
  %1991 = icmp eq i32 %1990, 1
  br i1 %1991, label %1992, label %1993

1992:                                             ; preds = %1982
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  br label %1997

1993:                                             ; preds = %1982
  %1994 = load ptr, ptr %1770, align 4
  %1995 = getelementptr inbounds %struct.i2c_adapter, ptr %1994, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1995, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %1990, i32 noundef 81, i32 noundef %1986) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #11
  %1996 = icmp slt i32 %1990, 0
  br i1 %1996, label %2164, label %1997

1997:                                             ; preds = %1993, %1992
  %1998 = load ptr, ptr %1771, align 4
  %1999 = getelementptr inbounds %struct.mb86a20s_config, ptr %1998, i32 0, i32 1
  %2000 = load i8, ptr %1999, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #11
  store i8 80, ptr %21, align 2
  store i8 %1905, ptr %972, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #11
  store i32 2, ptr %973, align 4, !annotation !8
  %2001 = zext i8 %2000 to i16
  store i16 %2001, ptr %22, align 4
  store i16 0, ptr %974, align 2
  store ptr %21, ptr %975, align 4
  %2002 = load ptr, ptr %1770, align 4
  %2003 = call i32 @i2c_transfer(ptr noundef %2002, ptr noundef nonnull %22, i32 noundef 1) #11
  %2004 = icmp eq i32 %2003, 1
  br i1 %2004, label %2005, label %2006

2005:                                             ; preds = %1997
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  br label %2011

2006:                                             ; preds = %1997
  %2007 = load ptr, ptr %1770, align 4
  %2008 = getelementptr inbounds %struct.i2c_adapter, ptr %2007, i32 0, i32 9
  %2009 = zext i8 %1905 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2008, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2003, i32 noundef 80, i32 noundef %2009) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #11
  %2010 = icmp slt i32 %2003, 0
  br i1 %2010, label %2164, label %2011

2011:                                             ; preds = %2006, %2005
  %2012 = load ptr, ptr %1771, align 4
  %2013 = getelementptr inbounds %struct.mb86a20s_config, ptr %2012, i32 0, i32 1
  %2014 = load i8, ptr %2013, align 4
  %2015 = trunc i32 %1940 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #11
  store i8 81, ptr %23, align 2
  store i8 %2015, ptr %976, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #11
  store i32 2, ptr %977, align 4, !annotation !8
  %2016 = zext i8 %2014 to i16
  store i16 %2016, ptr %24, align 4
  store i16 0, ptr %978, align 2
  store ptr %23, ptr %979, align 4
  %2017 = load ptr, ptr %1770, align 4
  %2018 = call i32 @i2c_transfer(ptr noundef %2017, ptr noundef nonnull %24, i32 noundef 1) #11
  %2019 = icmp eq i32 %2018, 1
  br i1 %2019, label %2020, label %2021

2020:                                             ; preds = %2011
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  br label %2026

2021:                                             ; preds = %2011
  %2022 = load ptr, ptr %1770, align 4
  %2023 = getelementptr inbounds %struct.i2c_adapter, ptr %2022, i32 0, i32 9
  %2024 = and i32 %1940, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2023, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2018, i32 noundef 81, i32 noundef %2024) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #11
  %2025 = icmp slt i32 %2018, 0
  br i1 %2025, label %2164, label %2026

2026:                                             ; preds = %2021, %2020
  %2027 = load ptr, ptr %1771, align 4
  %2028 = getelementptr inbounds %struct.mb86a20s_config, ptr %2027, i32 0, i32 1
  %2029 = load i8, ptr %2028, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %25) #11
  store i8 80, ptr %25, align 2
  store i8 -80, ptr %980, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #11
  store i32 2, ptr %981, align 4, !annotation !8
  %2030 = zext i8 %2029 to i16
  store i16 %2030, ptr %26, align 4
  store i16 0, ptr %982, align 2
  store ptr %25, ptr %983, align 4
  %2031 = load ptr, ptr %1770, align 4
  %2032 = call i32 @i2c_transfer(ptr noundef %2031, ptr noundef nonnull %26, i32 noundef 1) #11
  %2033 = icmp eq i32 %2032, 1
  br i1 %2033, label %2034, label %2035

2034:                                             ; preds = %2026
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  br label %2039

2035:                                             ; preds = %2026
  %2036 = load ptr, ptr %1770, align 4
  %2037 = getelementptr inbounds %struct.i2c_adapter, ptr %2036, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2037, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2032, i32 noundef 80, i32 noundef 176) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %25) #11
  %2038 = icmp slt i32 %2032, 0
  br i1 %2038, label %2164, label %2039

2039:                                             ; preds = %2035, %2034
  %2040 = load ptr, ptr %1771, align 4
  %2041 = getelementptr inbounds %struct.mb86a20s_config, ptr %2040, i32 0, i32 1
  %2042 = load i8, ptr %2041, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #11
  store i8 81, ptr %27, align 2
  store i8 7, ptr %984, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #11
  store i32 2, ptr %985, align 4, !annotation !8
  %2043 = zext i8 %2042 to i16
  store i16 %2043, ptr %28, align 4
  store i16 0, ptr %986, align 2
  store ptr %27, ptr %987, align 4
  %2044 = load ptr, ptr %1770, align 4
  %2045 = call i32 @i2c_transfer(ptr noundef %2044, ptr noundef nonnull %28, i32 noundef 1) #11
  %2046 = icmp eq i32 %2045, 1
  br i1 %2046, label %2047, label %2048

2047:                                             ; preds = %2039
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  br label %2052

2048:                                             ; preds = %2039
  %2049 = load ptr, ptr %1770, align 4
  %2050 = getelementptr inbounds %struct.i2c_adapter, ptr %2049, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2050, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2045, i32 noundef 81, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #11
  %2051 = icmp slt i32 %2045, 0
  br i1 %2051, label %2164, label %2052

2052:                                             ; preds = %2048, %2047
  %2053 = load ptr, ptr %1771, align 4
  %2054 = getelementptr inbounds %struct.mb86a20s_config, ptr %2053, i32 0, i32 1
  %2055 = load i8, ptr %2054, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #11
  store i8 80, ptr %29, align 2
  store i8 -79, ptr %988, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #11
  store i32 2, ptr %989, align 4, !annotation !8
  %2056 = zext i8 %2055 to i16
  store i16 %2056, ptr %30, align 4
  store i16 0, ptr %990, align 2
  store ptr %29, ptr %991, align 4
  %2057 = load ptr, ptr %1770, align 4
  %2058 = call i32 @i2c_transfer(ptr noundef %2057, ptr noundef nonnull %30, i32 noundef 1) #11
  %2059 = icmp eq i32 %2058, 1
  br i1 %2059, label %2060, label %2061

2060:                                             ; preds = %2052
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #11
  br label %2065

2061:                                             ; preds = %2052
  %2062 = load ptr, ptr %1770, align 4
  %2063 = getelementptr inbounds %struct.i2c_adapter, ptr %2062, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2063, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2058, i32 noundef 80, i32 noundef 177) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #11
  %2064 = icmp slt i32 %2058, 0
  br i1 %2064, label %2164, label %2065

2065:                                             ; preds = %2061, %2060
  %2066 = load ptr, ptr %1771, align 4
  %2067 = getelementptr inbounds %struct.mb86a20s_config, ptr %2066, i32 0, i32 1
  %2068 = load i8, ptr %2067, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #11
  store i8 81, ptr %31, align 2
  store i8 7, ptr %992, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #11
  store i32 2, ptr %993, align 4, !annotation !8
  %2069 = zext i8 %2068 to i16
  store i16 %2069, ptr %32, align 4
  store i16 0, ptr %994, align 2
  store ptr %31, ptr %995, align 4
  %2070 = load ptr, ptr %1770, align 4
  %2071 = call i32 @i2c_transfer(ptr noundef %2070, ptr noundef nonnull %32, i32 noundef 1) #11
  %2072 = icmp eq i32 %2071, 1
  br i1 %2072, label %2073, label %2074

2073:                                             ; preds = %2065
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  br label %2078

2074:                                             ; preds = %2065
  %2075 = load ptr, ptr %1770, align 4
  %2076 = getelementptr inbounds %struct.i2c_adapter, ptr %2075, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2076, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2071, i32 noundef 81, i32 noundef 7) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #11
  %2077 = icmp slt i32 %2071, 0
  br i1 %2077, label %2164, label %2078

2078:                                             ; preds = %2074, %2073
  %2079 = load ptr, ptr %1771, align 4
  %2080 = getelementptr inbounds %struct.mb86a20s_config, ptr %2079, i32 0, i32 1
  %2081 = load i8, ptr %2080, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %33) #11
  store i8 81, ptr %33, align 2
  store i8 0, ptr %996, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #11
  store i32 2, ptr %997, align 4, !annotation !8
  %2082 = zext i8 %2081 to i16
  store i16 %2082, ptr %34, align 4
  store i16 0, ptr %998, align 2
  store ptr %33, ptr %999, align 4
  %2083 = load ptr, ptr %1770, align 4
  %2084 = call i32 @i2c_transfer(ptr noundef %2083, ptr noundef nonnull %34, i32 noundef 1) #11
  %2085 = icmp eq i32 %2084, 1
  br i1 %2085, label %2089, label %2086

2086:                                             ; preds = %2078
  %2087 = load ptr, ptr %1770, align 4
  %2088 = getelementptr inbounds %struct.i2c_adapter, ptr %2087, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2088, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2084, i32 noundef 81, i32 noundef 0) #12
  br label %2089

2089:                                             ; preds = %2086, %2078
  %2090 = phi i32 [ %2084, %2086 ], [ 0, %2078 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %33) #11
  br label %2151

2091:                                             ; preds = %1937, %1930
  %2092 = load ptr, ptr %1771, align 4
  %2093 = getelementptr inbounds %struct.mb86a20s_config, ptr %2092, i32 0, i32 1
  %2094 = load i8, ptr %2093, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #11
  store i8 80, ptr %35, align 2
  store i8 -79, ptr %1000, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #11
  store i32 2, ptr %1001, align 4, !annotation !8
  %2095 = zext i8 %2094 to i16
  store i16 %2095, ptr %36, align 4
  store i16 0, ptr %1002, align 2
  store ptr %35, ptr %1003, align 4
  %2096 = load ptr, ptr %1770, align 4
  %2097 = call i32 @i2c_transfer(ptr noundef %2096, ptr noundef nonnull %36, i32 noundef 1) #11
  %2098 = icmp eq i32 %2097, 1
  br i1 %2098, label %2099, label %2100

2099:                                             ; preds = %2091
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #11
  br label %2104

2100:                                             ; preds = %2091
  %2101 = load ptr, ptr %1770, align 4
  %2102 = getelementptr inbounds %struct.i2c_adapter, ptr %2101, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2102, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2097, i32 noundef 80, i32 noundef 177) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #11
  %2103 = icmp slt i32 %2097, 0
  br i1 %2103, label %2164, label %2104

2104:                                             ; preds = %2100, %2099
  %2105 = load ptr, ptr %1771, align 4
  %2106 = getelementptr inbounds %struct.mb86a20s_config, ptr %2105, i32 0, i32 1
  %2107 = load i8, ptr %2106, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %37)
  store i8 81, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %38) #11
  store i8 0, ptr %38, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %39) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1004, i8 0, i32 16, i1 false) #11, !annotation !8
  %2108 = zext i8 %2107 to i16
  store i16 %2108, ptr %39, align 4
  store i16 0, ptr %1005, align 2
  store i16 1, ptr %1004, align 4
  store ptr %37, ptr %1006, align 4
  store i16 %2108, ptr %1007, align 4
  store i16 1, ptr %1008, align 2
  store i16 1, ptr %1009, align 4
  store ptr %38, ptr %1010, align 4
  %2109 = load ptr, ptr %1770, align 4
  %2110 = call i32 @i2c_transfer(ptr noundef %2109, ptr noundef nonnull %39, i32 noundef 2) #11
  %2111 = icmp eq i32 %2110, 2
  br i1 %2111, label %2118, label %2112

2112:                                             ; preds = %2104
  %2113 = load ptr, ptr %1770, align 4
  %2114 = getelementptr inbounds %struct.i2c_adapter, ptr %2113, i32 0, i32 9
  %2115 = load i8, ptr %37, align 1
  %2116 = zext i8 %2115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2114, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mb86a20s_i2c_readreg, i32 noundef %2116, i32 noundef %2110) #12
  %2117 = icmp slt i32 %2110, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %39) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37)
  br i1 %2117, label %2164, label %2167

2118:                                             ; preds = %2104
  %2119 = load i8, ptr %38, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %39) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %38) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %37)
  %2120 = load ptr, ptr %1771, align 4
  %2121 = getelementptr inbounds %struct.mb86a20s_config, ptr %2120, i32 0, i32 1
  %2122 = load i8, ptr %2121, align 4
  %2123 = trunc i32 %1033 to i8
  %2124 = or i8 %2119, %2123
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %40) #11
  store i8 81, ptr %40, align 2
  store i8 %2124, ptr %1011, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #11
  store i32 2, ptr %1012, align 4, !annotation !8
  %2125 = zext i8 %2122 to i16
  store i16 %2125, ptr %41, align 4
  store i16 0, ptr %1013, align 2
  store ptr %40, ptr %1014, align 4
  %2126 = load ptr, ptr %1770, align 4
  %2127 = call i32 @i2c_transfer(ptr noundef %2126, ptr noundef nonnull %41, i32 noundef 1) #11
  %2128 = icmp eq i32 %2127, 1
  br i1 %2128, label %2129, label %2130

2129:                                             ; preds = %2118
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #11
  br label %2135

2130:                                             ; preds = %2118
  %2131 = load ptr, ptr %1770, align 4
  %2132 = getelementptr inbounds %struct.i2c_adapter, ptr %2131, i32 0, i32 9
  %2133 = zext i8 %2124 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2132, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2127, i32 noundef 81, i32 noundef %2133) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %40) #11
  %2134 = icmp slt i32 %2127, 0
  br i1 %2134, label %2164, label %2135

2135:                                             ; preds = %2130, %2129
  %2136 = load ptr, ptr %1771, align 4
  %2137 = getelementptr inbounds %struct.mb86a20s_config, ptr %2136, i32 0, i32 1
  %2138 = load i8, ptr %2137, align 4
  %2139 = xor i8 %2123, -1
  %2140 = and i8 %2119, %2139
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %42) #11
  store i8 81, ptr %42, align 2
  store i8 %2140, ptr %1015, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #11
  store i32 2, ptr %1016, align 4, !annotation !8
  %2141 = zext i8 %2138 to i16
  store i16 %2141, ptr %43, align 4
  store i16 0, ptr %1017, align 2
  store ptr %42, ptr %1018, align 4
  %2142 = load ptr, ptr %1770, align 4
  %2143 = call i32 @i2c_transfer(ptr noundef %2142, ptr noundef nonnull %43, i32 noundef 1) #11
  %2144 = icmp eq i32 %2143, 1
  br i1 %2144, label %2149, label %2145

2145:                                             ; preds = %2135
  %2146 = load ptr, ptr %1770, align 4
  %2147 = getelementptr inbounds %struct.i2c_adapter, ptr %2146, i32 0, i32 9
  %2148 = zext i8 %2140 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2147, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.mb86a20s_i2c_writereg, i32 noundef %2143, i32 noundef 81, i32 noundef %2148) #12
  br label %2149

2149:                                             ; preds = %2145, %2135
  %2150 = phi i32 [ %2143, %2145 ], [ 0, %2135 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %42) #11
  br label %2151

2151:                                             ; preds = %2149, %2089
  %2152 = phi i32 [ %2090, %2089 ], [ %2150, %2149 ]
  %2153 = icmp sgt i32 %2152, -1
  br i1 %2153, label %2154, label %2164

2154:                                             ; preds = %2151
  store i8 3, ptr %1431, align 1
  %2155 = zext i32 %1869 to i64
  %2156 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 %1430, i32 1
  %2157 = load i64, ptr %2156, align 1
  %2158 = add i64 %2157, %2155
  store i64 %2158, ptr %2156, align 1
  %2159 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 %1430
  store i8 3, ptr %2159, align 1
  %2160 = zext i32 %1933 to i64
  %2161 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 %1430, i32 1
  %2162 = load i64, ptr %2161, align 1
  %2163 = add i64 %2162, %2160
  store i64 %2163, ptr %2161, align 1
  br label %2173

2164:                                             ; preds = %2151, %2130, %2112, %2100, %2074, %2061, %2048, %2035, %2021, %2006, %1993, %1977, %1964, %1951, %1924, %1911, %1892, %1879, %1860, %1847, %1828, %1815, %1792, %1780
  %2165 = phi i32 [ %2152, %2151 ], [ %2127, %2130 ], [ %2097, %2100 ], [ %2071, %2074 ], [ %2058, %2061 ], [ %2045, %2048 ], [ %2032, %2035 ], [ %2018, %2021 ], [ %2003, %2006 ], [ %1990, %1993 ], [ %1974, %1977 ], [ %1961, %1964 ], [ %1948, %1951 ], [ %1908, %1911 ], [ %1876, %1879 ], [ %1844, %1847 ], [ %1812, %1815 ], [ %1777, %1780 ], [ %1790, %1792 ], [ %1826, %1828 ], [ %1858, %1860 ], [ %2110, %2112 ], [ %1922, %1924 ], [ %1890, %1892 ]
  %2166 = icmp eq i32 %2165, -16
  br i1 %2166, label %2173, label %2167

2167:                                             ; preds = %2164, %2112, %1924, %1892, %1860, %1828, %1792
  %2168 = phi i32 [ %2165, %2164 ], [ -5, %1860 ], [ -5, %1828 ], [ -5, %1792 ], [ -5, %2112 ], [ -5, %1924 ], [ -5, %1892 ]
  store i8 0, ptr %1431, align 1
  %2169 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 %1430
  store i8 0, ptr %2169, align 1
  %2170 = load ptr, ptr %201, align 4
  %2171 = getelementptr inbounds %struct.i2c_adapter, ptr %2170, i32 0, i32 9
  %2172 = add nuw nsw i32 %1029, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2171, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.mb86a20s_get_stats, i32 noundef %2172, i32 noundef %2168) #12
  br label %2173

2173:                                             ; preds = %2167, %2164, %2154, %1798
  %2174 = phi i32 [ -16, %2164 ], [ %2168, %2167 ], [ %2152, %2154 ], [ -16, %1798 ]
  %2175 = load i8, ptr %1431, align 1
  %2176 = icmp ne i8 %2175, 0
  %2177 = zext i1 %2176 to i32
  %2178 = add i32 %1020, %2177
  %2179 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 %1430, i32 1
  %2180 = load i64, ptr %2179, align 1
  %2181 = trunc i64 %2180 to i32
  %2182 = add i32 %1028, %2181
  %2183 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 %1430, i32 1
  %2184 = load i64, ptr %2183, align 1
  %2185 = trunc i64 %2184 to i32
  %2186 = add i32 %1027, %2185
  %2187 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 %1430, i32 1
  %2188 = load i64, ptr %2187, align 1
  %2189 = trunc i64 %2188 to i32
  %2190 = add i32 %1026, %2189
  %2191 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 %1430, i32 1
  %2192 = load i64, ptr %2191, align 1
  %2193 = trunc i64 %2192 to i32
  %2194 = add i32 %1025, %2193
  %2195 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 %1430, i32 1
  %2196 = load i64, ptr %2195, align 1
  %2197 = trunc i64 %2196 to i32
  %2198 = add i32 %1024, %2197
  %2199 = getelementptr %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 %1430, i32 1
  %2200 = load i64, ptr %2199, align 1
  %2201 = trunc i64 %2200 to i32
  %2202 = add i32 %1023, %2201
  br label %2203

2203:                                             ; preds = %2173, %1036
  %2204 = phi i32 [ %1037, %1036 ], [ %1430, %2173 ]
  %2205 = phi i32 [ %1030, %1036 ], [ %2174, %2173 ]
  %2206 = phi i32 [ %1028, %1036 ], [ %2182, %2173 ]
  %2207 = phi i32 [ %1027, %1036 ], [ %2186, %2173 ]
  %2208 = phi i32 [ %1026, %1036 ], [ %2190, %2173 ]
  %2209 = phi i32 [ %1025, %1036 ], [ %2194, %2173 ]
  %2210 = phi i32 [ %1024, %1036 ], [ %2198, %2173 ]
  %2211 = phi i32 [ %1023, %1036 ], [ %2202, %2173 ]
  %2212 = phi i32 [ %1022, %1036 ], [ %1435, %2173 ]
  %2213 = phi i32 [ %1021, %1036 ], [ %1769, %2173 ]
  %2214 = phi i32 [ %1020, %1036 ], [ %2178, %2173 ]
  %2215 = icmp eq i32 %2204, 3
  br i1 %2215, label %2216, label %1019

2216:                                             ; preds = %2203
  %2217 = icmp eq i32 %2212, 0
  br i1 %2217, label %2223, label %2218

2218:                                             ; preds = %2216
  %2219 = zext i32 %2206 to i64
  %2220 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  store i64 %2219, ptr %2220, align 1
  %2221 = zext i32 %2207 to i64
  %2222 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  store i64 %2221, ptr %2222, align 1
  br label %2223

2223:                                             ; preds = %2218, %2216
  %2224 = phi i8 [ 3, %2218 ], [ 0, %2216 ]
  %2225 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 %2224, ptr %2225, align 1
  %2226 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 3, ptr %2226, align 1
  %2227 = icmp eq i32 %2213, 0
  br i1 %2227, label %2233, label %2228

2228:                                             ; preds = %2223
  %2229 = zext i32 %2208 to i64
  %2230 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  store i64 %2229, ptr %2230, align 1
  %2231 = zext i32 %2209 to i64
  %2232 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  store i64 %2231, ptr %2232, align 1
  br label %2233

2233:                                             ; preds = %2228, %2223
  %2234 = phi i8 [ 3, %2228 ], [ 0, %2223 ]
  %2235 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 46, i32 1
  store i8 %2234, ptr %2235, align 1
  %2236 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 47, i32 1
  store i8 3, ptr %2236, align 1
  %2237 = icmp eq i32 %2214, 0
  %2238 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  br i1 %2237, label %2245, label %2239

2239:                                             ; preds = %2233
  store i8 3, ptr %2238, align 1
  %2240 = zext i32 %2210 to i64
  %2241 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  store i64 %2240, ptr %2241, align 1
  %2242 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %2242, align 1
  %2243 = zext i32 %2211 to i64
  %2244 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  store i64 %2243, ptr %2244, align 1
  br label %2247

2245:                                             ; preds = %2233
  store i8 0, ptr %2238, align 1
  %2246 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 3, ptr %2246, align 1
  br label %2247

2247:                                             ; preds = %2245, %2239, %684
  %2248 = phi i32 [ 0, %684 ], [ %2205, %2245 ], [ %2205, %2239 ]
  ret i32 %2248
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148377205, i64 2148377485, i64 2148377819, i64 2148378153}
!12 = !{i64 891374, i64 891401}
!13 = !{i64 892069, i64 892096, i64 892129, i64 892150, i64 892177, i64 892203}
