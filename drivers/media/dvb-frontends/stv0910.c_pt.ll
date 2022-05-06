; ModuleID = '/llk/IR/drivers/media/dvb-frontends/stv0910.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/stv0910.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stv0910_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22stv0910_attach\22\09\09\09\09\09"
module asm "__kstrtabns_stv0910_attach:\09\09\09\09\09"
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
%struct.slookup = type { i16, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.stv0910_cfg = type { i32, i8, i8, i8, i8, i8 }
%struct.stv = type { ptr, %struct.dvb_frontend, i32, i16, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [6 x i8] }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.stv_base = type { %struct.list_head, i8, ptr, %struct.mutex, %struct.mutex, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
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
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }

@stv0910_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&base->i2c_lock\00", align 1
@stv0910_attach.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"&base->reg_lock\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"No demod found at adr %02X on %s\0A\00", align 1
@stvlist = internal global %struct.list_head { ptr @stvlist, ptr @stvlist }, align 4
@stv0910_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"ST STV0910\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 100000, i32 70000000, i32 0, i32 335545857 }, [8 x i8] c"\05\06\04\00\00\00\00\00", ptr null, ptr @release, ptr null, ptr null, ptr @sleep, ptr null, ptr null, ptr null, ptr @tune, ptr @get_algo, ptr @set_parameters, ptr null, ptr @get_frontend, ptr @read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @send_master_cmd, ptr null, ptr @send_burst, ptr @set_tone, ptr null, ptr null, ptr null, ptr @gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%s demod found at adr %02X on %s\0A\00", align 1
@__kstrtab_stv0910_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_stv0910_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_stv0910_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stv0910_attach to i32), ptr @__kstrtab_stv0910_attach, ptr @__kstrtabns_stv0910_attach }, section "___ksymtab_gpl+stv0910_attach", align 4
@__UNIQUE_ID_description249 = internal constant [53 x i8] c"description=ST STV0910 multistandard frontend driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [49 x i8] c"author=Ralph and Marcus Metzler, Manfred Voelkel\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"i2c read error ([%02x] %04x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"i2c write error ([%02x] %04x: %02x)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__const.get_frontend.modcod2mod = private unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 11, i32 11, i32 11, i32 11, i32 11, i32 0, i32 0, i32 0], align 4
@__const.get_frontend.modcod2fec = private unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 12, i32 1, i32 10, i32 2, i32 3, i32 4, i32 5, i32 8, i32 11, i32 10, i32 2, i32 3, i32 5, i32 8, i32 11, i32 2, i32 3, i32 4, i32 5, i32 8, i32 11, i32 3, i32 4, i32 5, i32 8, i32 11, i32 0, i32 0, i32 0], align 4
@set_vth.vthlookup_table = internal unnamed_addr constant [5 x %struct.slookup] [%struct.slookup { i16 250, i32 8780 }, %struct.slookup { i16 100, i32 7405 }, %struct.slookup { i16 40, i32 6330 }, %struct.slookup { i16 12, i32 5224 }, %struct.slookup { i16 5, i32 4236 }], align 4
@s2car_loop = internal unnamed_addr constant [280 x i8] c"\0C<\0B<*,*\1C:;\0C<\0B<*,:\0C:+\1C<\1B<:\1C:;:+\0C\1C+\1C\0B,\0B\0C*+\1C\1C+\1C\0B,\0B\0C*+,,+\1C\0B,\0B\0C*+<,;,\1B\1C\1B;:\1B\0D<;,\1B\1C\1B;:\1B\1D<\0C,+\1C\1B;\0B\1B=\0D\0C,+\0C++\0B\0B\1E\0D\1C,;\0C++\1B\0B(\09(\09(\09(\08('\19)\19)\19)8\19(\09\1A\0B\1A:\0A*9*9\1A++\1B\1B\0B\1B\1A\0B\1A\1A\0C\0C;;\1B\1B*\0B**\0C\1C\0C;+\1B:\0B**\0A\0A\0A\0A\1A\0A9\0A)\0A\0A\0A\0A\0A\0B\0A*\0A\1A\0A\0A\0A\0A\0A\1B\0A:\0A*\0A\0A\0A\0A\0A\1B\0A:\0A*\0A\0A\0A\0A\0A+\0A\0B\0A:\0A\0A\0A\0A\0A+\0A\0B\0A:\0A\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 1
@padc_lookup = internal unnamed_addr constant [16 x %struct.slookup] [%struct.slookup { i16 0, i32 118000 }, %struct.slookup { i16 -100, i32 93600 }, %struct.slookup { i16 -200, i32 74500 }, %struct.slookup { i16 -300, i32 59100 }, %struct.slookup { i16 -400, i32 47000 }, %struct.slookup { i16 -500, i32 37300 }, %struct.slookup { i16 -600, i32 29650 }, %struct.slookup { i16 -700, i32 23520 }, %struct.slookup { i16 -900, i32 14850 }, %struct.slookup { i16 -1100, i32 9380 }, %struct.slookup { i16 -1300, i32 5910 }, %struct.slookup { i16 -1500, i32 3730 }, %struct.slookup { i16 -1700, i32 2354 }, %struct.slookup { i16 -1900, i32 1485 }, %struct.slookup { i16 -2000, i32 1179 }, %struct.slookup { i16 -2100, i32 1000 }], align 4
@s2_sn_lookup = internal unnamed_addr constant [60 x %struct.slookup] [%struct.slookup { i16 -30, i32 13950 }, %struct.slookup { i16 -25, i32 13580 }, %struct.slookup { i16 -20, i32 13150 }, %struct.slookup { i16 -15, i32 12760 }, %struct.slookup { i16 -10, i32 12345 }, %struct.slookup { i16 -5, i32 11900 }, %struct.slookup { i16 0, i32 11520 }, %struct.slookup { i16 5, i32 11080 }, %struct.slookup { i16 10, i32 10630 }, %struct.slookup { i16 15, i32 10210 }, %struct.slookup { i16 20, i32 9790 }, %struct.slookup { i16 25, i32 9390 }, %struct.slookup { i16 30, i32 8970 }, %struct.slookup { i16 35, i32 8575 }, %struct.slookup { i16 40, i32 8180 }, %struct.slookup { i16 45, i32 7800 }, %struct.slookup { i16 50, i32 7430 }, %struct.slookup { i16 55, i32 7080 }, %struct.slookup { i16 60, i32 6720 }, %struct.slookup { i16 65, i32 6320 }, %struct.slookup { i16 70, i32 6060 }, %struct.slookup { i16 75, i32 5760 }, %struct.slookup { i16 80, i32 5480 }, %struct.slookup { i16 85, i32 5200 }, %struct.slookup { i16 90, i32 4930 }, %struct.slookup { i16 95, i32 4680 }, %struct.slookup { i16 100, i32 4425 }, %struct.slookup { i16 105, i32 4210 }, %struct.slookup { i16 110, i32 3980 }, %struct.slookup { i16 115, i32 3765 }, %struct.slookup { i16 120, i32 3570 }, %struct.slookup { i16 125, i32 3315 }, %struct.slookup { i16 130, i32 3140 }, %struct.slookup { i16 135, i32 2980 }, %struct.slookup { i16 140, i32 2820 }, %struct.slookup { i16 145, i32 2670 }, %struct.slookup { i16 150, i32 2535 }, %struct.slookup { i16 160, i32 2270 }, %struct.slookup { i16 170, i32 2035 }, %struct.slookup { i16 180, i32 1825 }, %struct.slookup { i16 190, i32 1650 }, %struct.slookup { i16 200, i32 1485 }, %struct.slookup { i16 210, i32 1340 }, %struct.slookup { i16 220, i32 1212 }, %struct.slookup { i16 230, i32 1100 }, %struct.slookup { i16 240, i32 1000 }, %struct.slookup { i16 250, i32 910 }, %struct.slookup { i16 260, i32 836 }, %struct.slookup { i16 270, i32 772 }, %struct.slookup { i16 280, i32 718 }, %struct.slookup { i16 290, i32 671 }, %struct.slookup { i16 300, i32 635 }, %struct.slookup { i16 310, i32 602 }, %struct.slookup { i16 320, i32 575 }, %struct.slookup { i16 330, i32 550 }, %struct.slookup { i16 350, i32 517 }, %struct.slookup { i16 400, i32 480 }, %struct.slookup { i16 450, i32 466 }, %struct.slookup { i16 500, i32 464 }, %struct.slookup { i16 510, i32 463 }], align 4
@s1_sn_lookup = internal unnamed_addr constant [54 x %struct.slookup] [%struct.slookup { i16 0, i32 9242 }, %struct.slookup { i16 5, i32 9105 }, %struct.slookup { i16 10, i32 8950 }, %struct.slookup { i16 15, i32 8780 }, %struct.slookup { i16 20, i32 8566 }, %struct.slookup { i16 25, i32 8366 }, %struct.slookup { i16 30, i32 8146 }, %struct.slookup { i16 35, i32 7908 }, %struct.slookup { i16 40, i32 7666 }, %struct.slookup { i16 45, i32 7405 }, %struct.slookup { i16 50, i32 7136 }, %struct.slookup { i16 55, i32 6861 }, %struct.slookup { i16 60, i32 6576 }, %struct.slookup { i16 65, i32 6330 }, %struct.slookup { i16 70, i32 6048 }, %struct.slookup { i16 75, i32 5768 }, %struct.slookup { i16 80, i32 5492 }, %struct.slookup { i16 85, i32 5224 }, %struct.slookup { i16 90, i32 4959 }, %struct.slookup { i16 95, i32 4709 }, %struct.slookup { i16 100, i32 4467 }, %struct.slookup { i16 105, i32 4236 }, %struct.slookup { i16 110, i32 4013 }, %struct.slookup { i16 115, i32 3800 }, %struct.slookup { i16 120, i32 3598 }, %struct.slookup { i16 125, i32 3406 }, %struct.slookup { i16 130, i32 3225 }, %struct.slookup { i16 135, i32 3052 }, %struct.slookup { i16 140, i32 2889 }, %struct.slookup { i16 145, i32 2733 }, %struct.slookup { i16 150, i32 2587 }, %struct.slookup { i16 160, i32 2318 }, %struct.slookup { i16 170, i32 2077 }, %struct.slookup { i16 180, i32 1862 }, %struct.slookup { i16 190, i32 1670 }, %struct.slookup { i16 200, i32 1499 }, %struct.slookup { i16 210, i32 1347 }, %struct.slookup { i16 220, i32 1213 }, %struct.slookup { i16 230, i32 1095 }, %struct.slookup { i16 240, i32 992 }, %struct.slookup { i16 250, i32 900 }, %struct.slookup { i16 260, i32 826 }, %struct.slookup { i16 270, i32 758 }, %struct.slookup { i16 280, i32 702 }, %struct.slookup { i16 290, i32 653 }, %struct.slookup { i16 300, i32 613 }, %struct.slookup { i16 310, i32 579 }, %struct.slookup { i16 320, i32 550 }, %struct.slookup { i16 330, i32 526 }, %struct.slookup { i16 350, i32 490 }, %struct.slookup { i16 400, i32 445 }, %struct.slookup { i16 450, i32 430 }, %struct.slookup { i16 500, i32 426 }, %struct.slookup { i16 510, i32 425 }], align 4
@dvbs2_nbch.nbch = internal unnamed_addr constant [29 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 16200, i32 3240], [2 x i32] [i32 21600, i32 5400], [2 x i32] [i32 25920, i32 6480], [2 x i32] [i32 32400, i32 7200], [2 x i32] [i32 38880, i32 9720], [2 x i32] [i32 43200, i32 10800], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 43200, i32 9720], [2 x i32] [i32 48600, i32 10800], [2 x i32] [i32 51840, i32 11880], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 43200, i32 10800], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000], [2 x i32] [i32 48600, i32 11880], [2 x i32] [i32 51840, i32 12600], [2 x i32] [i32 54000, i32 13320], [2 x i32] [i32 57600, i32 14400], [2 x i32] [i32 58320, i32 16000]], align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"drivers/media/dvb-frontends/stv0910.c\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%s() write_reg failure (enable=%d)\0A\00", align 1
@__func__.gate_ctrl = private unnamed_addr constant [10 x i8] c"gate_ctrl\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251, ptr @__ksymtab_stv0910_attach], section "llvm.metadata"
@switch.table.enable_puncture_rate = private unnamed_addr constant [7 x i8] c"\01\02\04/\08/ ", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @stv0910_attach(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [3 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [3 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [3 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [3 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [3 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [3 x i8], align 1
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [3 x i8], align 1
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [3 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [3 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [3 x i8], align 1
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [3 x i8], align 1
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [3 x i8], align 1
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [3 x i8], align 1
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [3 x i8], align 1
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [3 x i8], align 1
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [3 x i8], align 1
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [3 x i8], align 1
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [3 x i8], align 1
  %55 = alloca %struct.i2c_msg, align 4
  %56 = alloca [3 x i8], align 1
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [3 x i8], align 1
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [3 x i8], align 1
  %61 = alloca %struct.i2c_msg, align 4
  %62 = alloca [3 x i8], align 1
  %63 = alloca %struct.i2c_msg, align 4
  %64 = alloca [3 x i8], align 1
  %65 = alloca %struct.i2c_msg, align 4
  %66 = alloca [3 x i8], align 1
  %67 = alloca %struct.i2c_msg, align 4
  %68 = alloca [3 x i8], align 1
  %69 = alloca %struct.i2c_msg, align 4
  %70 = alloca [3 x i8], align 1
  %71 = alloca %struct.i2c_msg, align 4
  %72 = alloca [3 x i8], align 1
  %73 = alloca %struct.i2c_msg, align 4
  %74 = alloca [3 x i8], align 1
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca [3 x i8], align 1
  %77 = alloca %struct.i2c_msg, align 4
  %78 = alloca [3 x i8], align 1
  %79 = alloca %struct.i2c_msg, align 4
  %80 = alloca [3 x i8], align 1
  %81 = alloca %struct.i2c_msg, align 4
  %82 = alloca [3 x i8], align 1
  %83 = alloca %struct.i2c_msg, align 4
  %84 = alloca [3 x i8], align 1
  %85 = alloca %struct.i2c_msg, align 4
  %86 = alloca [3 x i8], align 1
  %87 = alloca %struct.i2c_msg, align 4
  %88 = alloca [3 x i8], align 1
  %89 = alloca %struct.i2c_msg, align 4
  %90 = alloca [3 x i8], align 1
  %91 = alloca %struct.i2c_msg, align 4
  %92 = alloca [3 x i8], align 1
  %93 = alloca %struct.i2c_msg, align 4
  %94 = alloca [3 x i8], align 1
  %95 = alloca %struct.i2c_msg, align 4
  %96 = alloca [3 x i8], align 1
  %97 = alloca %struct.i2c_msg, align 4
  %98 = alloca [3 x i8], align 1
  %99 = alloca %struct.i2c_msg, align 4
  %100 = alloca [3 x i8], align 1
  %101 = alloca %struct.i2c_msg, align 4
  %102 = alloca [2 x i8], align 2
  %103 = alloca [2 x %struct.i2c_msg], align 4
  %104 = alloca i8, align 1
  %105 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %106 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %105, i32 noundef 3520, i32 noundef 1148) #8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %1303, label %108

108:                                              ; preds = %3
  %109 = getelementptr inbounds %struct.stv0910_cfg, ptr %1, i32 0, i32 2
  %110 = load i8, ptr %109, align 1
  %111 = icmp eq i8 %110, 0
  %112 = select i1 %111, i8 96, i8 32
  %113 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 5
  store i8 %112, ptr %113, align 1
  %114 = icmp eq i8 %110, 2
  %115 = select i1 %114, i8 2, i8 0
  %116 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 6
  store i8 %115, ptr %116, align 4
  %117 = getelementptr inbounds %struct.stv0910_cfg, ptr %1, i32 0, i32 3
  %118 = load i8, ptr %117, align 2
  %119 = shl i8 %118, 4
  %120 = and i8 %119, 112
  %121 = or i8 %120, 10
  %122 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 4
  store i8 %121, ptr %122, align 2
  %123 = getelementptr inbounds %struct.stv0910_cfg, ptr %1, i32 0, i32 5
  %124 = load i8, ptr %123, align 4
  %125 = icmp eq i8 %124, 0
  %126 = select i1 %125, i8 40, i8 %124
  %127 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 7
  store i8 %126, ptr %127, align 1
  %128 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 2
  store i32 %2, ptr %128, align 4
  %129 = icmp eq i32 %2, 0
  %130 = select i1 %129, i16 512, i16 0
  %131 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 3
  store i16 %130, ptr %131, align 8
  %132 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 10
  store i32 16000000, ptr %132, align 4
  %133 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 17
  store i8 16, ptr %133, align 8
  %134 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 13
  store i32 0, ptr %134, align 8
  %135 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 27
  store i32 -1, ptr %135, align 8
  %136 = getelementptr inbounds %struct.stv0910_cfg, ptr %1, i32 0, i32 4
  %137 = load i8, ptr %136, align 1
  %138 = icmp ne i8 %137, 0
  %139 = zext i1 %138 to i8
  %140 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 8
  store i8 %139, ptr %140, align 2
  %141 = getelementptr inbounds %struct.stv0910_cfg, ptr %1, i32 0, i32 1
  %142 = load i8, ptr %141, align 4
  %143 = load ptr, ptr @stvlist, align 4
  %144 = icmp eq ptr %143, @stvlist
  br i1 %144, label %163, label %145

145:                                              ; preds = %154, %108
  %146 = phi ptr [ %155, %154 ], [ %143, %108 ]
  %147 = getelementptr inbounds %struct.stv_base, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, %0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.stv_base, ptr %146, i32 0, i32 1
  %152 = load i8, ptr %151, align 4
  %153 = icmp eq i8 %152, %142
  br i1 %153, label %157, label %154

154:                                              ; preds = %150, %145
  %155 = load ptr, ptr %146, align 4
  %156 = icmp eq ptr %155, @stvlist
  br i1 %156, label %163, label %145

157:                                              ; preds = %150
  %158 = icmp eq ptr %146, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.stv_base, ptr %146, i32 0, i32 5
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, 1
  store i32 %162, ptr %160, align 4
  store ptr %146, ptr %106, align 8
  br label %1280

163:                                              ; preds = %157, %154, %108
  %164 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %165 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %164, i32 noundef 3520, i32 noundef 68) #8
  %166 = icmp eq ptr %165, null
  br i1 %166, label %1302, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.stv_base, ptr %165, i32 0, i32 2
  store ptr %0, ptr %168, align 4
  %169 = load i8, ptr %141, align 4
  %170 = getelementptr inbounds %struct.stv_base, ptr %165, i32 0, i32 1
  store i8 %169, ptr %170, align 8
  %171 = getelementptr inbounds %struct.stv_base, ptr %165, i32 0, i32 5
  store i32 1, ptr %171, align 8
  %172 = load i32, ptr %1, align 4
  %173 = icmp eq i32 %172, 0
  %174 = select i1 %173, i32 30000000, i32 %172
  %175 = getelementptr inbounds %struct.stv_base, ptr %165, i32 0, i32 6
  store i32 %174, ptr %175, align 4
  %176 = getelementptr inbounds %struct.stv_base, ptr %165, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %176, ptr noundef nonnull @.str, ptr noundef nonnull @stv0910_attach.__key) #9
  %177 = getelementptr inbounds %struct.stv_base, ptr %165, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %177, ptr noundef nonnull @.str.2, ptr noundef nonnull @stv0910_attach.__key.1) #9
  store ptr %165, ptr %106, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %104) #9
  store i8 0, ptr %104, align 1, !annotation !8
  store i32 0, ptr %134, align 8
  %178 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 11
  store i32 0, ptr %178, align 8
  %179 = load ptr, ptr %168, align 4
  %180 = load i8, ptr %170, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %102) #9
  store i8 -15, ptr %102, align 2
  %181 = getelementptr inbounds i8, ptr %102, i32 1
  store i8 0, ptr %181, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %103) #9
  %182 = getelementptr inbounds i8, ptr %103, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %182, i8 0, i32 16, i1 false) #9, !annotation !8
  %183 = zext i8 %180 to i16
  store i16 %183, ptr %103, align 4
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 1
  store i16 0, ptr %184, align 2
  store i16 2, ptr %182, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 0, i32 3
  store ptr %102, ptr %185, align 4
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1
  store i16 %183, ptr %186, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1, i32 1
  store i16 1, ptr %187, align 2
  %188 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1, i32 2
  store i16 1, ptr %188, align 4
  %189 = getelementptr inbounds %struct.i2c_msg, ptr %103, i32 1, i32 3
  store ptr %104, ptr %189, align 4
  %190 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %103, i32 noundef 2) #9
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %195, label %192

192:                                              ; preds = %167
  %193 = getelementptr inbounds %struct.i2c_adapter, ptr %179, i32 0, i32 9
  %194 = zext i8 %180 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %193, ptr noundef nonnull @.str.5, i32 noundef %194, i32 noundef 61696) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %103) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %102) #9
  br label %1265

195:                                              ; preds = %167
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %103) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %102) #9
  %196 = load i8, ptr %104, align 1
  %197 = icmp eq i8 %196, 81
  br i1 %197, label %198, label %1265

198:                                              ; preds = %195
  %199 = load ptr, ptr %106, align 8
  %200 = getelementptr inbounds %struct.stv_base, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %100) #9
  store i8 -15, ptr %100, align 1
  %202 = getelementptr inbounds i8, ptr %100, i32 1
  store i8 42, ptr %202, align 1
  %203 = getelementptr inbounds i8, ptr %100, i32 2
  store i8 36, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %101) #9
  %204 = getelementptr inbounds i8, ptr %101, i32 4
  store i32 3, ptr %204, align 4, !annotation !8
  %205 = getelementptr inbounds %struct.stv_base, ptr %199, i32 0, i32 1
  %206 = load i8, ptr %205, align 4
  %207 = zext i8 %206 to i16
  store i16 %207, ptr %101, align 4
  %208 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 1
  store i16 0, ptr %208, align 2
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 3
  store ptr %100, ptr %209, align 4
  %210 = call i32 @i2c_transfer(ptr noundef %201, ptr noundef nonnull %101, i32 noundef 1) #9
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %218, label %212

212:                                              ; preds = %198
  %213 = getelementptr inbounds %struct.i2c_adapter, ptr %201, i32 0, i32 9
  %214 = load ptr, ptr %106, align 8
  %215 = getelementptr inbounds %struct.stv_base, ptr %214, i32 0, i32 1
  %216 = load i8, ptr %215, align 4
  %217 = zext i8 %216 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %213, ptr noundef nonnull @.str.6, i32 noundef %217, i32 noundef 61738, i32 noundef 36) #10
  br label %218

218:                                              ; preds = %212, %198
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %101) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %100) #9
  %219 = load ptr, ptr %106, align 8
  %220 = getelementptr inbounds %struct.stv_base, ptr %219, i32 0, i32 2
  %221 = load ptr, ptr %220, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %98) #9
  store i8 -15, ptr %98, align 1
  %222 = getelementptr inbounds i8, ptr %98, i32 1
  store i8 43, ptr %222, align 1
  %223 = getelementptr inbounds i8, ptr %98, i32 2
  store i8 36, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %99) #9
  %224 = getelementptr inbounds i8, ptr %99, i32 4
  store i32 3, ptr %224, align 4, !annotation !8
  %225 = getelementptr inbounds %struct.stv_base, ptr %219, i32 0, i32 1
  %226 = load i8, ptr %225, align 4
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %99, align 4
  %228 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 1
  store i16 0, ptr %228, align 2
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 3
  store ptr %98, ptr %229, align 4
  %230 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %99, i32 noundef 1) #9
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %238, label %232

232:                                              ; preds = %218
  %233 = getelementptr inbounds %struct.i2c_adapter, ptr %221, i32 0, i32 9
  %234 = load ptr, ptr %106, align 8
  %235 = getelementptr inbounds %struct.stv_base, ptr %234, i32 0, i32 1
  %236 = load i8, ptr %235, align 4
  %237 = zext i8 %236 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %233, ptr noundef nonnull @.str.6, i32 noundef %237, i32 noundef 61739, i32 noundef 36) #10
  br label %238

238:                                              ; preds = %232, %218
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %99) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %98) #9
  %239 = load ptr, ptr %106, align 8
  %240 = getelementptr inbounds %struct.stv_base, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %96) #9
  store i8 -15, ptr %96, align 1
  %242 = getelementptr inbounds i8, ptr %96, i32 1
  store i8 41, ptr %242, align 1
  %243 = getelementptr inbounds i8, ptr %96, i32 2
  store i8 -120, ptr %243, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %97) #9
  %244 = getelementptr inbounds i8, ptr %97, i32 4
  store i32 3, ptr %244, align 4, !annotation !8
  %245 = getelementptr inbounds %struct.stv_base, ptr %239, i32 0, i32 1
  %246 = load i8, ptr %245, align 4
  %247 = zext i8 %246 to i16
  store i16 %247, ptr %97, align 4
  %248 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 1
  store i16 0, ptr %248, align 2
  %249 = getelementptr inbounds %struct.i2c_msg, ptr %97, i32 0, i32 3
  store ptr %96, ptr %249, align 4
  %250 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %97, i32 noundef 1) #9
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %258, label %252

252:                                              ; preds = %238
  %253 = getelementptr inbounds %struct.i2c_adapter, ptr %241, i32 0, i32 9
  %254 = load ptr, ptr %106, align 8
  %255 = getelementptr inbounds %struct.stv_base, ptr %254, i32 0, i32 1
  %256 = load i8, ptr %255, align 4
  %257 = zext i8 %256 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %253, ptr noundef nonnull @.str.6, i32 noundef %257, i32 noundef 61737, i32 noundef 136) #10
  br label %258

258:                                              ; preds = %252, %238
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %97) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %96) #9
  %259 = load ptr, ptr %106, align 8
  %260 = getelementptr inbounds %struct.stv_base, ptr %259, i32 0, i32 2
  %261 = load ptr, ptr %260, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %94) #9
  store i8 -15, ptr %94, align 1
  %262 = getelementptr inbounds i8, ptr %94, i32 1
  store i8 28, ptr %262, align 1
  %263 = getelementptr inbounds i8, ptr %94, i32 2
  store i8 0, ptr %263, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %95) #9
  %264 = getelementptr inbounds i8, ptr %95, i32 4
  store i32 3, ptr %264, align 4, !annotation !8
  %265 = getelementptr inbounds %struct.stv_base, ptr %259, i32 0, i32 1
  %266 = load i8, ptr %265, align 4
  %267 = zext i8 %266 to i16
  store i16 %267, ptr %95, align 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 1
  store i16 0, ptr %268, align 2
  %269 = getelementptr inbounds %struct.i2c_msg, ptr %95, i32 0, i32 3
  store ptr %94, ptr %269, align 4
  %270 = call i32 @i2c_transfer(ptr noundef %261, ptr noundef nonnull %95, i32 noundef 1) #9
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %278, label %272

272:                                              ; preds = %258
  %273 = getelementptr inbounds %struct.i2c_adapter, ptr %261, i32 0, i32 9
  %274 = load ptr, ptr %106, align 8
  %275 = getelementptr inbounds %struct.stv_base, ptr %274, i32 0, i32 1
  %276 = load i8, ptr %275, align 4
  %277 = zext i8 %276 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %273, ptr noundef nonnull @.str.6, i32 noundef %277, i32 noundef 61724, i32 noundef 0) #10
  br label %278

278:                                              ; preds = %272, %258
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %95) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %94) #9
  %279 = load ptr, ptr %106, align 8
  %280 = getelementptr inbounds %struct.stv_base, ptr %279, i32 0, i32 2
  %281 = load ptr, ptr %280, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %92) #9
  store i8 -15, ptr %92, align 1
  %282 = getelementptr inbounds i8, ptr %92, i32 1
  store i8 26, ptr %282, align 1
  %283 = getelementptr inbounds i8, ptr %92, i32 2
  store i8 5, ptr %283, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %93) #9
  %284 = getelementptr inbounds i8, ptr %93, i32 4
  store i32 3, ptr %284, align 4, !annotation !8
  %285 = getelementptr inbounds %struct.stv_base, ptr %279, i32 0, i32 1
  %286 = load i8, ptr %285, align 4
  %287 = zext i8 %286 to i16
  store i16 %287, ptr %93, align 4
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 1
  store i16 0, ptr %288, align 2
  %289 = getelementptr inbounds %struct.i2c_msg, ptr %93, i32 0, i32 3
  store ptr %92, ptr %289, align 4
  %290 = call i32 @i2c_transfer(ptr noundef %281, ptr noundef nonnull %93, i32 noundef 1) #9
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %298, label %292

292:                                              ; preds = %278
  %293 = getelementptr inbounds %struct.i2c_adapter, ptr %281, i32 0, i32 9
  %294 = load ptr, ptr %106, align 8
  %295 = getelementptr inbounds %struct.stv_base, ptr %294, i32 0, i32 1
  %296 = load i8, ptr %295, align 4
  %297 = zext i8 %296 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %293, ptr noundef nonnull @.str.6, i32 noundef %297, i32 noundef 61722, i32 noundef 5) #10
  br label %298

298:                                              ; preds = %292, %278
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %93) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %92) #9
  %299 = load ptr, ptr %106, align 8
  %300 = getelementptr inbounds %struct.stv_base, ptr %299, i32 0, i32 2
  %301 = load ptr, ptr %300, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %90) #9
  store i8 -15, ptr %90, align 1
  %302 = getelementptr inbounds i8, ptr %90, i32 1
  store i8 -74, ptr %302, align 1
  %303 = getelementptr inbounds i8, ptr %90, i32 2
  store i8 2, ptr %303, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %91) #9
  %304 = getelementptr inbounds i8, ptr %91, i32 4
  store i32 3, ptr %304, align 4, !annotation !8
  %305 = getelementptr inbounds %struct.stv_base, ptr %299, i32 0, i32 1
  %306 = load i8, ptr %305, align 4
  %307 = zext i8 %306 to i16
  store i16 %307, ptr %91, align 4
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 1
  store i16 0, ptr %308, align 2
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 3
  store ptr %90, ptr %309, align 4
  %310 = call i32 @i2c_transfer(ptr noundef %301, ptr noundef nonnull %91, i32 noundef 1) #9
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %318, label %312

312:                                              ; preds = %298
  %313 = getelementptr inbounds %struct.i2c_adapter, ptr %301, i32 0, i32 9
  %314 = load ptr, ptr %106, align 8
  %315 = getelementptr inbounds %struct.stv_base, ptr %314, i32 0, i32 1
  %316 = load i8, ptr %315, align 4
  %317 = zext i8 %316 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %313, ptr noundef nonnull @.str.6, i32 noundef %317, i32 noundef 61878, i32 noundef 2) #10
  br label %318

318:                                              ; preds = %312, %298
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %91) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %90) #9
  %319 = load i8, ptr %116, align 4
  %320 = load ptr, ptr %106, align 8
  %321 = getelementptr inbounds %struct.stv_base, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %88) #9
  store i8 -10, ptr %88, align 1
  %323 = getelementptr inbounds i8, ptr %88, i32 1
  store i8 48, ptr %323, align 1
  %324 = getelementptr inbounds i8, ptr %88, i32 2
  store i8 %319, ptr %324, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %89) #9
  %325 = getelementptr inbounds i8, ptr %89, i32 4
  store i32 3, ptr %325, align 4, !annotation !8
  %326 = getelementptr inbounds %struct.stv_base, ptr %320, i32 0, i32 1
  %327 = load i8, ptr %326, align 4
  %328 = zext i8 %327 to i16
  store i16 %328, ptr %89, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 1
  store i16 0, ptr %329, align 2
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %89, i32 0, i32 3
  store ptr %88, ptr %330, align 4
  %331 = call i32 @i2c_transfer(ptr noundef %322, ptr noundef nonnull %89, i32 noundef 1) #9
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %340, label %333

333:                                              ; preds = %318
  %334 = getelementptr inbounds %struct.i2c_adapter, ptr %322, i32 0, i32 9
  %335 = load ptr, ptr %106, align 8
  %336 = getelementptr inbounds %struct.stv_base, ptr %335, i32 0, i32 1
  %337 = load i8, ptr %336, align 4
  %338 = zext i8 %337 to i32
  %339 = zext i8 %319 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %334, ptr noundef nonnull @.str.6, i32 noundef %338, i32 noundef 63024, i32 noundef %339) #10
  br label %340

340:                                              ; preds = %333, %318
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %89) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %88) #9
  %341 = load ptr, ptr %106, align 8
  %342 = getelementptr inbounds %struct.stv_base, ptr %341, i32 0, i32 2
  %343 = load ptr, ptr %342, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %86) #9
  store i8 -6, ptr %86, align 1
  %344 = getelementptr inbounds i8, ptr %86, i32 1
  store i8 -128, ptr %344, align 1
  %345 = getelementptr inbounds i8, ptr %86, i32 2
  store i8 2, ptr %345, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %87) #9
  %346 = getelementptr inbounds i8, ptr %87, i32 4
  store i32 3, ptr %346, align 4, !annotation !8
  %347 = getelementptr inbounds %struct.stv_base, ptr %341, i32 0, i32 1
  %348 = load i8, ptr %347, align 4
  %349 = zext i8 %348 to i16
  store i16 %349, ptr %87, align 4
  %350 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 1
  store i16 0, ptr %350, align 2
  %351 = getelementptr inbounds %struct.i2c_msg, ptr %87, i32 0, i32 3
  store ptr %86, ptr %351, align 4
  %352 = call i32 @i2c_transfer(ptr noundef %343, ptr noundef nonnull %87, i32 noundef 1) #9
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %360, label %354

354:                                              ; preds = %340
  %355 = getelementptr inbounds %struct.i2c_adapter, ptr %343, i32 0, i32 9
  %356 = load ptr, ptr %106, align 8
  %357 = getelementptr inbounds %struct.stv_base, ptr %356, i32 0, i32 1
  %358 = load i8, ptr %357, align 4
  %359 = zext i8 %358 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %355, ptr noundef nonnull @.str.6, i32 noundef %359, i32 noundef 64128, i32 noundef 2) #10
  br label %360

360:                                              ; preds = %354, %340
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %87) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %86) #9
  %361 = load i8, ptr %140, align 2
  %362 = icmp eq i8 %361, 0
  %363 = load ptr, ptr %106, align 8
  %364 = getelementptr inbounds %struct.stv_base, ptr %363, i32 0, i32 2
  %365 = load ptr, ptr %364, align 4
  br i1 %362, label %384, label %366

366:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %84) #9
  store i8 -6, ptr %84, align 1
  %367 = getelementptr inbounds i8, ptr %84, i32 1
  store i8 -122, ptr %367, align 1
  %368 = getelementptr inbounds i8, ptr %84, i32 2
  store i8 20, ptr %368, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %85) #9
  %369 = getelementptr inbounds i8, ptr %85, i32 4
  store i32 3, ptr %369, align 4, !annotation !8
  %370 = getelementptr inbounds %struct.stv_base, ptr %363, i32 0, i32 1
  %371 = load i8, ptr %370, align 4
  %372 = zext i8 %371 to i16
  store i16 %372, ptr %85, align 4
  %373 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 1
  store i16 0, ptr %373, align 2
  %374 = getelementptr inbounds %struct.i2c_msg, ptr %85, i32 0, i32 3
  store ptr %84, ptr %374, align 4
  %375 = call i32 @i2c_transfer(ptr noundef %365, ptr noundef nonnull %85, i32 noundef 1) #9
  %376 = icmp eq i32 %375, 1
  br i1 %376, label %383, label %377

377:                                              ; preds = %366
  %378 = getelementptr inbounds %struct.i2c_adapter, ptr %365, i32 0, i32 9
  %379 = load ptr, ptr %106, align 8
  %380 = getelementptr inbounds %struct.stv_base, ptr %379, i32 0, i32 1
  %381 = load i8, ptr %380, align 4
  %382 = zext i8 %381 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %378, ptr noundef nonnull @.str.6, i32 noundef %382, i32 noundef 64134, i32 noundef 20) #10
  br label %383

383:                                              ; preds = %377, %366
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %85) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %84) #9
  br label %402

384:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %82) #9
  store i8 -6, ptr %82, align 1
  %385 = getelementptr inbounds i8, ptr %82, i32 1
  store i8 -122, ptr %385, align 1
  %386 = getelementptr inbounds i8, ptr %82, i32 2
  store i8 21, ptr %386, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %83) #9
  %387 = getelementptr inbounds i8, ptr %83, i32 4
  store i32 3, ptr %387, align 4, !annotation !8
  %388 = getelementptr inbounds %struct.stv_base, ptr %363, i32 0, i32 1
  %389 = load i8, ptr %388, align 4
  %390 = zext i8 %389 to i16
  store i16 %390, ptr %83, align 4
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 1
  store i16 0, ptr %391, align 2
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %83, i32 0, i32 3
  store ptr %82, ptr %392, align 4
  %393 = call i32 @i2c_transfer(ptr noundef %365, ptr noundef nonnull %83, i32 noundef 1) #9
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %401, label %395

395:                                              ; preds = %384
  %396 = getelementptr inbounds %struct.i2c_adapter, ptr %365, i32 0, i32 9
  %397 = load ptr, ptr %106, align 8
  %398 = getelementptr inbounds %struct.stv_base, ptr %397, i32 0, i32 1
  %399 = load i8, ptr %398, align 4
  %400 = zext i8 %399 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %396, ptr noundef nonnull @.str.6, i32 noundef %400, i32 noundef 64134, i32 noundef 21) #10
  br label %401

401:                                              ; preds = %395, %384
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %83) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %82) #9
  br label %402

402:                                              ; preds = %401, %383
  %403 = load ptr, ptr %106, align 8
  %404 = getelementptr inbounds %struct.stv_base, ptr %403, i32 0, i32 2
  %405 = load ptr, ptr %404, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %80) #9
  store i8 -12, ptr %80, align 1
  %406 = getelementptr inbounds i8, ptr %80, i32 1
  store i8 -31, ptr %406, align 1
  %407 = getelementptr inbounds i8, ptr %80, i32 2
  store i8 2, ptr %407, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %81) #9
  %408 = getelementptr inbounds i8, ptr %81, i32 4
  store i32 3, ptr %408, align 4, !annotation !8
  %409 = getelementptr inbounds %struct.stv_base, ptr %403, i32 0, i32 1
  %410 = load i8, ptr %409, align 4
  %411 = zext i8 %410 to i16
  store i16 %411, ptr %81, align 4
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %412, align 2
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %413, align 4
  %414 = call i32 @i2c_transfer(ptr noundef %405, ptr noundef nonnull %81, i32 noundef 1) #9
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %422, label %416

416:                                              ; preds = %402
  %417 = getelementptr inbounds %struct.i2c_adapter, ptr %405, i32 0, i32 9
  %418 = load ptr, ptr %106, align 8
  %419 = getelementptr inbounds %struct.stv_base, ptr %418, i32 0, i32 1
  %420 = load i8, ptr %419, align 4
  %421 = zext i8 %420 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %417, ptr noundef nonnull @.str.6, i32 noundef %421, i32 noundef 62689, i32 noundef 2) #10
  br label %422

422:                                              ; preds = %416, %402
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %81) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %80) #9
  %423 = load ptr, ptr %106, align 8
  %424 = getelementptr inbounds %struct.stv_base, ptr %423, i32 0, i32 2
  %425 = load ptr, ptr %424, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %78) #9
  store i8 -14, ptr %78, align 1
  %426 = getelementptr inbounds i8, ptr %78, i32 1
  store i8 -31, ptr %426, align 1
  %427 = getelementptr inbounds i8, ptr %78, i32 2
  store i8 -126, ptr %427, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %79) #9
  %428 = getelementptr inbounds i8, ptr %79, i32 4
  store i32 3, ptr %428, align 4, !annotation !8
  %429 = getelementptr inbounds %struct.stv_base, ptr %423, i32 0, i32 1
  %430 = load i8, ptr %429, align 4
  %431 = zext i8 %430 to i16
  store i16 %431, ptr %79, align 4
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %432, align 2
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %78, ptr %433, align 4
  %434 = call i32 @i2c_transfer(ptr noundef %425, ptr noundef nonnull %79, i32 noundef 1) #9
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %442, label %436

436:                                              ; preds = %422
  %437 = getelementptr inbounds %struct.i2c_adapter, ptr %425, i32 0, i32 9
  %438 = load ptr, ptr %106, align 8
  %439 = getelementptr inbounds %struct.stv_base, ptr %438, i32 0, i32 1
  %440 = load i8, ptr %439, align 4
  %441 = zext i8 %440 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %437, ptr noundef nonnull @.str.6, i32 noundef %441, i32 noundef 62177, i32 noundef 130) #10
  br label %442

442:                                              ; preds = %436, %422
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %79) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %78) #9
  %443 = load ptr, ptr %106, align 8
  %444 = getelementptr inbounds %struct.stv_base, ptr %443, i32 0, i32 2
  %445 = load ptr, ptr %444, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %76) #9
  store i8 -12, ptr %76, align 1
  %446 = getelementptr inbounds i8, ptr %76, i32 1
  store i8 -110, ptr %446, align 1
  %447 = getelementptr inbounds i8, ptr %76, i32 2
  store i8 2, ptr %447, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %77) #9
  %448 = getelementptr inbounds i8, ptr %77, i32 4
  store i32 3, ptr %448, align 4, !annotation !8
  %449 = getelementptr inbounds %struct.stv_base, ptr %443, i32 0, i32 1
  %450 = load i8, ptr %449, align 4
  %451 = zext i8 %450 to i16
  store i16 %451, ptr %77, align 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 1
  store i16 0, ptr %452, align 2
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 3
  store ptr %76, ptr %453, align 4
  %454 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %77, i32 noundef 1) #9
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %462, label %456

456:                                              ; preds = %442
  %457 = getelementptr inbounds %struct.i2c_adapter, ptr %445, i32 0, i32 9
  %458 = load ptr, ptr %106, align 8
  %459 = getelementptr inbounds %struct.stv_base, ptr %458, i32 0, i32 1
  %460 = load i8, ptr %459, align 4
  %461 = zext i8 %460 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %457, ptr noundef nonnull @.str.6, i32 noundef %461, i32 noundef 62610, i32 noundef 2) #10
  br label %462

462:                                              ; preds = %456, %442
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %77) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %76) #9
  %463 = load ptr, ptr %106, align 8
  %464 = getelementptr inbounds %struct.stv_base, ptr %463, i32 0, i32 2
  %465 = load ptr, ptr %464, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %74) #9
  store i8 -14, ptr %74, align 1
  %466 = getelementptr inbounds i8, ptr %74, i32 1
  store i8 -110, ptr %466, align 1
  %467 = getelementptr inbounds i8, ptr %74, i32 2
  store i8 2, ptr %467, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #9
  %468 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 3, ptr %468, align 4, !annotation !8
  %469 = getelementptr inbounds %struct.stv_base, ptr %463, i32 0, i32 1
  %470 = load i8, ptr %469, align 4
  %471 = zext i8 %470 to i16
  store i16 %471, ptr %75, align 4
  %472 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %472, align 2
  %473 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %473, align 4
  %474 = call i32 @i2c_transfer(ptr noundef %465, ptr noundef nonnull %75, i32 noundef 1) #9
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %482, label %476

476:                                              ; preds = %462
  %477 = getelementptr inbounds %struct.i2c_adapter, ptr %465, i32 0, i32 9
  %478 = load ptr, ptr %106, align 8
  %479 = getelementptr inbounds %struct.stv_base, ptr %478, i32 0, i32 1
  %480 = load i8, ptr %479, align 4
  %481 = zext i8 %480 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %477, ptr noundef nonnull @.str.6, i32 noundef %481, i32 noundef 62098, i32 noundef 2) #10
  br label %482

482:                                              ; preds = %476, %462
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %74) #9
  %483 = load ptr, ptr %106, align 8
  %484 = getelementptr inbounds %struct.stv_base, ptr %483, i32 0, i32 2
  %485 = load ptr, ptr %484, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %72) #9
  store i8 -12, ptr %72, align 1
  %486 = getelementptr inbounds i8, ptr %72, i32 1
  store i8 31, ptr %486, align 1
  %487 = getelementptr inbounds i8, ptr %72, i32 2
  store i8 4, ptr %487, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #9
  %488 = getelementptr inbounds i8, ptr %73, i32 4
  store i32 3, ptr %488, align 4, !annotation !8
  %489 = getelementptr inbounds %struct.stv_base, ptr %483, i32 0, i32 1
  %490 = load i8, ptr %489, align 4
  %491 = zext i8 %490 to i16
  store i16 %491, ptr %73, align 4
  %492 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %492, align 2
  %493 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %72, ptr %493, align 4
  %494 = call i32 @i2c_transfer(ptr noundef %485, ptr noundef nonnull %73, i32 noundef 1) #9
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %502, label %496

496:                                              ; preds = %482
  %497 = getelementptr inbounds %struct.i2c_adapter, ptr %485, i32 0, i32 9
  %498 = load ptr, ptr %106, align 8
  %499 = getelementptr inbounds %struct.stv_base, ptr %498, i32 0, i32 1
  %500 = load i8, ptr %499, align 4
  %501 = zext i8 %500 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %497, ptr noundef nonnull @.str.6, i32 noundef %501, i32 noundef 62495, i32 noundef 4) #10
  br label %502

502:                                              ; preds = %496, %482
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %72) #9
  %503 = load ptr, ptr %106, align 8
  %504 = getelementptr inbounds %struct.stv_base, ptr %503, i32 0, i32 2
  %505 = load ptr, ptr %504, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %70) #9
  store i8 -14, ptr %70, align 1
  %506 = getelementptr inbounds i8, ptr %70, i32 1
  store i8 31, ptr %506, align 1
  %507 = getelementptr inbounds i8, ptr %70, i32 2
  store i8 4, ptr %507, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #9
  %508 = getelementptr inbounds i8, ptr %71, i32 4
  store i32 3, ptr %508, align 4, !annotation !8
  %509 = getelementptr inbounds %struct.stv_base, ptr %503, i32 0, i32 1
  %510 = load i8, ptr %509, align 4
  %511 = zext i8 %510 to i16
  store i16 %511, ptr %71, align 4
  %512 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  store i16 0, ptr %512, align 2
  %513 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  store ptr %70, ptr %513, align 4
  %514 = call i32 @i2c_transfer(ptr noundef %505, ptr noundef nonnull %71, i32 noundef 1) #9
  %515 = icmp eq i32 %514, 1
  br i1 %515, label %522, label %516

516:                                              ; preds = %502
  %517 = getelementptr inbounds %struct.i2c_adapter, ptr %505, i32 0, i32 9
  %518 = load ptr, ptr %106, align 8
  %519 = getelementptr inbounds %struct.stv_base, ptr %518, i32 0, i32 1
  %520 = load i8, ptr %519, align 4
  %521 = zext i8 %520 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %517, ptr noundef nonnull @.str.6, i32 noundef %521, i32 noundef 61983, i32 noundef 4) #10
  br label %522

522:                                              ; preds = %516, %502
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %70) #9
  %523 = load ptr, ptr %106, align 8
  %524 = getelementptr inbounds %struct.stv_base, ptr %523, i32 0, i32 2
  %525 = load ptr, ptr %524, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %68) #9
  store i8 -1, ptr %68, align 1
  %526 = getelementptr inbounds i8, ptr %68, i32 1
  store i8 17, ptr %526, align 1
  %527 = getelementptr inbounds i8, ptr %68, i32 2
  store i8 -128, ptr %527, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #9
  %528 = getelementptr inbounds i8, ptr %69, i32 4
  store i32 3, ptr %528, align 4, !annotation !8
  %529 = getelementptr inbounds %struct.stv_base, ptr %523, i32 0, i32 1
  %530 = load i8, ptr %529, align 4
  %531 = zext i8 %530 to i16
  store i16 %531, ptr %69, align 4
  %532 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  store i16 0, ptr %532, align 2
  %533 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  store ptr %68, ptr %533, align 4
  %534 = call i32 @i2c_transfer(ptr noundef %525, ptr noundef nonnull %69, i32 noundef 1) #9
  %535 = icmp eq i32 %534, 1
  br i1 %535, label %542, label %536

536:                                              ; preds = %522
  %537 = getelementptr inbounds %struct.i2c_adapter, ptr %525, i32 0, i32 9
  %538 = load ptr, ptr %106, align 8
  %539 = getelementptr inbounds %struct.stv_base, ptr %538, i32 0, i32 1
  %540 = load i8, ptr %539, align 4
  %541 = zext i8 %540 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %537, ptr noundef nonnull @.str.6, i32 noundef %541, i32 noundef 65297, i32 noundef 128) #10
  br label %542

542:                                              ; preds = %536, %522
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %68) #9
  %543 = load ptr, ptr %106, align 8
  %544 = getelementptr inbounds %struct.stv_base, ptr %543, i32 0, i32 2
  %545 = load ptr, ptr %544, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %66) #9
  store i8 -1, ptr %66, align 1
  %546 = getelementptr inbounds i8, ptr %66, i32 1
  store i8 17, ptr %546, align 1
  %547 = getelementptr inbounds i8, ptr %66, i32 2
  store i8 0, ptr %547, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #9
  %548 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 3, ptr %548, align 4, !annotation !8
  %549 = getelementptr inbounds %struct.stv_base, ptr %543, i32 0, i32 1
  %550 = load i8, ptr %549, align 4
  %551 = zext i8 %550 to i16
  store i16 %551, ptr %67, align 4
  %552 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  store i16 0, ptr %552, align 2
  %553 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %553, align 4
  %554 = call i32 @i2c_transfer(ptr noundef %545, ptr noundef nonnull %67, i32 noundef 1) #9
  %555 = icmp eq i32 %554, 1
  br i1 %555, label %562, label %556

556:                                              ; preds = %542
  %557 = getelementptr inbounds %struct.i2c_adapter, ptr %545, i32 0, i32 9
  %558 = load ptr, ptr %106, align 8
  %559 = getelementptr inbounds %struct.stv_base, ptr %558, i32 0, i32 1
  %560 = load i8, ptr %559, align 4
  %561 = zext i8 %560 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %557, ptr noundef nonnull @.str.6, i32 noundef %561, i32 noundef 65297, i32 noundef 0) #10
  br label %562

562:                                              ; preds = %556, %542
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %66) #9
  %563 = load ptr, ptr %106, align 8
  %564 = getelementptr inbounds %struct.stv_base, ptr %563, i32 0, i32 2
  %565 = load ptr, ptr %564, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %64) #9
  store i8 -11, ptr %64, align 1
  %566 = getelementptr inbounds i8, ptr %64, i32 1
  store i8 70, ptr %566, align 1
  %567 = getelementptr inbounds i8, ptr %64, i32 2
  store i8 0, ptr %567, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #9
  %568 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 3, ptr %568, align 4, !annotation !8
  %569 = getelementptr inbounds %struct.stv_base, ptr %563, i32 0, i32 1
  %570 = load i8, ptr %569, align 4
  %571 = zext i8 %570 to i16
  store i16 %571, ptr %65, align 4
  %572 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %572, align 2
  %573 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %573, align 4
  %574 = call i32 @i2c_transfer(ptr noundef %565, ptr noundef nonnull %65, i32 noundef 1) #9
  %575 = icmp eq i32 %574, 1
  br i1 %575, label %582, label %576

576:                                              ; preds = %562
  %577 = getelementptr inbounds %struct.i2c_adapter, ptr %565, i32 0, i32 9
  %578 = load ptr, ptr %106, align 8
  %579 = getelementptr inbounds %struct.stv_base, ptr %578, i32 0, i32 1
  %580 = load i8, ptr %579, align 4
  %581 = zext i8 %580 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %577, ptr noundef nonnull @.str.6, i32 noundef %581, i32 noundef 62790, i32 noundef 0) #10
  br label %582

582:                                              ; preds = %576, %562
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %64) #9
  %583 = load ptr, ptr %106, align 8
  %584 = getelementptr inbounds %struct.stv_base, ptr %583, i32 0, i32 2
  %585 = load ptr, ptr %584, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %62) #9
  store i8 -13, ptr %62, align 1
  %586 = getelementptr inbounds i8, ptr %62, i32 1
  store i8 70, ptr %586, align 1
  %587 = getelementptr inbounds i8, ptr %62, i32 2
  store i8 0, ptr %587, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #9
  %588 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 3, ptr %588, align 4, !annotation !8
  %589 = getelementptr inbounds %struct.stv_base, ptr %583, i32 0, i32 1
  %590 = load i8, ptr %589, align 4
  %591 = zext i8 %590 to i16
  store i16 %591, ptr %63, align 4
  %592 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %592, align 2
  %593 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %593, align 4
  %594 = call i32 @i2c_transfer(ptr noundef %585, ptr noundef nonnull %63, i32 noundef 1) #9
  %595 = icmp eq i32 %594, 1
  br i1 %595, label %602, label %596

596:                                              ; preds = %582
  %597 = getelementptr inbounds %struct.i2c_adapter, ptr %585, i32 0, i32 9
  %598 = load ptr, ptr %106, align 8
  %599 = getelementptr inbounds %struct.stv_base, ptr %598, i32 0, i32 1
  %600 = load i8, ptr %599, align 4
  %601 = zext i8 %600 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %597, ptr noundef nonnull @.str.6, i32 noundef %601, i32 noundef 62278, i32 noundef 0) #10
  br label %602

602:                                              ; preds = %596, %582
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %62) #9
  %603 = load ptr, ptr %106, align 8
  %604 = getelementptr inbounds %struct.stv_base, ptr %603, i32 0, i32 2
  %605 = load ptr, ptr %604, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %60) #9
  store i8 -12, ptr %60, align 1
  %606 = getelementptr inbounds i8, ptr %60, i32 1
  store i8 90, ptr %606, align 1
  %607 = getelementptr inbounds i8, ptr %60, i32 2
  store i8 -128, ptr %607, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #9
  %608 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 3, ptr %608, align 4, !annotation !8
  %609 = getelementptr inbounds %struct.stv_base, ptr %603, i32 0, i32 1
  %610 = load i8, ptr %609, align 4
  %611 = zext i8 %610 to i16
  store i16 %611, ptr %61, align 4
  %612 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %612, align 2
  %613 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %613, align 4
  %614 = call i32 @i2c_transfer(ptr noundef %605, ptr noundef nonnull %61, i32 noundef 1) #9
  %615 = icmp eq i32 %614, 1
  br i1 %615, label %622, label %616

616:                                              ; preds = %602
  %617 = getelementptr inbounds %struct.i2c_adapter, ptr %605, i32 0, i32 9
  %618 = load ptr, ptr %106, align 8
  %619 = getelementptr inbounds %struct.stv_base, ptr %618, i32 0, i32 1
  %620 = load i8, ptr %619, align 4
  %621 = zext i8 %620 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %617, ptr noundef nonnull @.str.6, i32 noundef %621, i32 noundef 62554, i32 noundef 128) #10
  br label %622

622:                                              ; preds = %616, %602
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %60) #9
  %623 = load ptr, ptr %106, align 8
  %624 = getelementptr inbounds %struct.stv_base, ptr %623, i32 0, i32 2
  %625 = load ptr, ptr %624, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %58) #9
  store i8 -14, ptr %58, align 1
  %626 = getelementptr inbounds i8, ptr %58, i32 1
  store i8 90, ptr %626, align 1
  %627 = getelementptr inbounds i8, ptr %58, i32 2
  store i8 -128, ptr %627, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #9
  %628 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 3, ptr %628, align 4, !annotation !8
  %629 = getelementptr inbounds %struct.stv_base, ptr %623, i32 0, i32 1
  %630 = load i8, ptr %629, align 4
  %631 = zext i8 %630 to i16
  store i16 %631, ptr %59, align 4
  %632 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %632, align 2
  %633 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %633, align 4
  %634 = call i32 @i2c_transfer(ptr noundef %625, ptr noundef nonnull %59, i32 noundef 1) #9
  %635 = icmp eq i32 %634, 1
  br i1 %635, label %642, label %636

636:                                              ; preds = %622
  %637 = getelementptr inbounds %struct.i2c_adapter, ptr %625, i32 0, i32 9
  %638 = load ptr, ptr %106, align 8
  %639 = getelementptr inbounds %struct.stv_base, ptr %638, i32 0, i32 1
  %640 = load i8, ptr %639, align 4
  %641 = zext i8 %640 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %637, ptr noundef nonnull @.str.6, i32 noundef %641, i32 noundef 62042, i32 noundef 128) #10
  br label %642

642:                                              ; preds = %636, %622
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %58) #9
  %643 = load ptr, ptr %106, align 8
  %644 = getelementptr inbounds %struct.stv_base, ptr %643, i32 0, i32 6
  %645 = load i32, ptr %644, align 4
  %646 = add i32 %645, -8000000
  %647 = icmp ult i32 %646, 70000000
  br i1 %647, label %664, label %648

648:                                              ; preds = %642
  %649 = add i32 %645, -7000000
  %650 = icmp ult i32 %649, 1000000
  br i1 %650, label %664, label %651

651:                                              ; preds = %648
  %652 = add i32 %645, -6000000
  %653 = icmp ult i32 %652, 1000000
  br i1 %653, label %664, label %654

654:                                              ; preds = %651
  %655 = add i32 %645, -5000000
  %656 = icmp ult i32 %655, 1000000
  br i1 %656, label %664, label %657

657:                                              ; preds = %654
  %658 = add i32 %645, -4000000
  %659 = icmp ult i32 %658, 1000000
  br i1 %659, label %664, label %660

660:                                              ; preds = %657
  %661 = add i32 %645, -3000000
  %662 = icmp ult i32 %661, 1000000
  %663 = select i1 %662, i8 -87, i8 57
  br label %664

664:                                              ; preds = %660, %657, %654, %651, %648, %642
  %665 = phi i8 [ 57, %642 ], [ 65, %648 ], [ 81, %651 ], [ 97, %654 ], [ 121, %657 ], [ %663, %660 ]
  %666 = udiv i32 %645, 1000000
  %667 = trunc i32 %666 to i16
  %668 = udiv i16 540, %667
  %669 = getelementptr inbounds %struct.stv_base, ptr %643, i32 0, i32 2
  %670 = load ptr, ptr %669, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %56) #9
  store i8 -15, ptr %56, align 1
  %671 = getelementptr inbounds i8, ptr %56, i32 1
  store i8 -77, ptr %671, align 1
  %672 = getelementptr inbounds i8, ptr %56, i32 2
  store i8 %665, ptr %672, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #9
  %673 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 3, ptr %673, align 4, !annotation !8
  %674 = getelementptr inbounds %struct.stv_base, ptr %643, i32 0, i32 1
  %675 = load i8, ptr %674, align 4
  %676 = zext i8 %675 to i16
  store i16 %676, ptr %57, align 4
  %677 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %677, align 2
  %678 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %678, align 4
  %679 = call i32 @i2c_transfer(ptr noundef %670, ptr noundef nonnull %57, i32 noundef 1) #9
  %680 = icmp eq i32 %679, 1
  br i1 %680, label %688, label %681

681:                                              ; preds = %664
  %682 = getelementptr inbounds %struct.i2c_adapter, ptr %670, i32 0, i32 9
  %683 = load ptr, ptr %106, align 8
  %684 = getelementptr inbounds %struct.stv_base, ptr %683, i32 0, i32 1
  %685 = load i8, ptr %684, align 4
  %686 = zext i8 %685 to i32
  %687 = zext i8 %665 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %682, ptr noundef nonnull @.str.6, i32 noundef %686, i32 noundef 61875, i32 noundef %687) #10
  br label %688

688:                                              ; preds = %681, %664
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %56) #9
  %689 = load ptr, ptr %106, align 8
  %690 = getelementptr inbounds %struct.stv_base, ptr %689, i32 0, i32 2
  %691 = load ptr, ptr %690, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %54) #9
  store i8 -15, ptr %54, align 1
  %692 = getelementptr inbounds i8, ptr %54, i32 1
  store i8 -75, ptr %692, align 1
  %693 = getelementptr inbounds i8, ptr %54, i32 2
  store i8 4, ptr %693, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %55) #9
  %694 = getelementptr inbounds i8, ptr %55, i32 4
  store i32 3, ptr %694, align 4, !annotation !8
  %695 = getelementptr inbounds %struct.stv_base, ptr %689, i32 0, i32 1
  %696 = load i8, ptr %695, align 4
  %697 = zext i8 %696 to i16
  store i16 %697, ptr %55, align 4
  %698 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %698, align 2
  %699 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %699, align 4
  %700 = call i32 @i2c_transfer(ptr noundef %691, ptr noundef nonnull %55, i32 noundef 1) #9
  %701 = icmp eq i32 %700, 1
  br i1 %701, label %708, label %702

702:                                              ; preds = %688
  %703 = getelementptr inbounds %struct.i2c_adapter, ptr %691, i32 0, i32 9
  %704 = load ptr, ptr %106, align 8
  %705 = getelementptr inbounds %struct.stv_base, ptr %704, i32 0, i32 1
  %706 = load i8, ptr %705, align 4
  %707 = zext i8 %706 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %703, ptr noundef nonnull @.str.6, i32 noundef %707, i32 noundef 61877, i32 noundef 4) #10
  br label %708

708:                                              ; preds = %702, %688
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %55) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %54) #9
  %709 = trunc i16 %668 to i8
  %710 = load ptr, ptr %106, align 8
  %711 = getelementptr inbounds %struct.stv_base, ptr %710, i32 0, i32 2
  %712 = load ptr, ptr %711, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %52) #9
  store i8 -15, ptr %52, align 1
  %713 = getelementptr inbounds i8, ptr %52, i32 1
  store i8 -76, ptr %713, align 1
  %714 = getelementptr inbounds i8, ptr %52, i32 2
  store i8 %709, ptr %714, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #9
  %715 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 3, ptr %715, align 4, !annotation !8
  %716 = getelementptr inbounds %struct.stv_base, ptr %710, i32 0, i32 1
  %717 = load i8, ptr %716, align 4
  %718 = zext i8 %717 to i16
  store i16 %718, ptr %53, align 4
  %719 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %719, align 2
  %720 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %720, align 4
  %721 = call i32 @i2c_transfer(ptr noundef %712, ptr noundef nonnull %53, i32 noundef 1) #9
  %722 = icmp eq i32 %721, 1
  br i1 %722, label %731, label %723

723:                                              ; preds = %708
  %724 = getelementptr inbounds %struct.i2c_adapter, ptr %712, i32 0, i32 9
  %725 = load ptr, ptr %106, align 8
  %726 = getelementptr inbounds %struct.stv_base, ptr %725, i32 0, i32 1
  %727 = load i8, ptr %726, align 4
  %728 = zext i8 %727 to i32
  %729 = and i16 %668, 255
  %730 = zext i16 %729 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %724, ptr noundef nonnull @.str.6, i32 noundef %728, i32 noundef 61876, i32 noundef %730) #10
  br label %731

731:                                              ; preds = %723, %708
  %732 = zext i16 %668 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %52) #9
  %733 = shl nuw nsw i32 %666, 1
  %734 = mul nuw nsw i32 %733, %732
  %735 = lshr i32 %734, 3
  %736 = mul i32 %735, 1000000
  %737 = load ptr, ptr %106, align 8
  %738 = getelementptr inbounds %struct.stv_base, ptr %737, i32 0, i32 7
  store i32 %736, ptr %738, align 4
  %739 = load i8, ptr %113, align 1
  %740 = or i8 %739, 1
  %741 = load ptr, ptr %106, align 8
  %742 = getelementptr inbounds %struct.stv_base, ptr %741, i32 0, i32 2
  %743 = load ptr, ptr %742, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %50) #9
  store i8 -11, ptr %50, align 1
  %744 = getelementptr inbounds i8, ptr %50, i32 1
  store i8 114, ptr %744, align 1
  %745 = getelementptr inbounds i8, ptr %50, i32 2
  store i8 %740, ptr %745, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #9
  %746 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 3, ptr %746, align 4, !annotation !8
  %747 = getelementptr inbounds %struct.stv_base, ptr %741, i32 0, i32 1
  %748 = load i8, ptr %747, align 4
  %749 = zext i8 %748 to i16
  store i16 %749, ptr %51, align 4
  %750 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %750, align 2
  %751 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %751, align 4
  %752 = call i32 @i2c_transfer(ptr noundef %743, ptr noundef nonnull %51, i32 noundef 1) #9
  %753 = icmp eq i32 %752, 1
  br i1 %753, label %761, label %754

754:                                              ; preds = %731
  %755 = getelementptr inbounds %struct.i2c_adapter, ptr %743, i32 0, i32 9
  %756 = load ptr, ptr %106, align 8
  %757 = getelementptr inbounds %struct.stv_base, ptr %756, i32 0, i32 1
  %758 = load i8, ptr %757, align 4
  %759 = zext i8 %758 to i32
  %760 = zext i8 %740 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %755, ptr noundef nonnull @.str.6, i32 noundef %759, i32 noundef 62834, i32 noundef %760) #10
  br label %761

761:                                              ; preds = %754, %731
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %50) #9
  %762 = load i8, ptr %113, align 1
  %763 = load ptr, ptr %106, align 8
  %764 = getelementptr inbounds %struct.stv_base, ptr %763, i32 0, i32 2
  %765 = load ptr, ptr %764, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %48) #9
  store i8 -11, ptr %48, align 1
  %766 = getelementptr inbounds i8, ptr %48, i32 1
  store i8 114, ptr %766, align 1
  %767 = getelementptr inbounds i8, ptr %48, i32 2
  store i8 %762, ptr %767, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #9
  %768 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 3, ptr %768, align 4, !annotation !8
  %769 = getelementptr inbounds %struct.stv_base, ptr %763, i32 0, i32 1
  %770 = load i8, ptr %769, align 4
  %771 = zext i8 %770 to i16
  store i16 %771, ptr %49, align 4
  %772 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %772, align 2
  %773 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %773, align 4
  %774 = call i32 @i2c_transfer(ptr noundef %765, ptr noundef nonnull %49, i32 noundef 1) #9
  %775 = icmp eq i32 %774, 1
  br i1 %775, label %783, label %776

776:                                              ; preds = %761
  %777 = getelementptr inbounds %struct.i2c_adapter, ptr %765, i32 0, i32 9
  %778 = load ptr, ptr %106, align 8
  %779 = getelementptr inbounds %struct.stv_base, ptr %778, i32 0, i32 1
  %780 = load i8, ptr %779, align 4
  %781 = zext i8 %780 to i32
  %782 = zext i8 %762 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %777, ptr noundef nonnull @.str.6, i32 noundef %781, i32 noundef 62834, i32 noundef %782) #10
  br label %783

783:                                              ; preds = %776, %761
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %48) #9
  %784 = load ptr, ptr %106, align 8
  %785 = getelementptr inbounds %struct.stv_base, ptr %784, i32 0, i32 2
  %786 = load ptr, ptr %785, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %46) #9
  store i8 -11, ptr %46, align 1
  %787 = getelementptr inbounds i8, ptr %46, i32 1
  store i8 115, ptr %787, align 1
  %788 = getelementptr inbounds i8, ptr %46, i32 2
  store i8 -64, ptr %788, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #9
  %789 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 3, ptr %789, align 4, !annotation !8
  %790 = getelementptr inbounds %struct.stv_base, ptr %784, i32 0, i32 1
  %791 = load i8, ptr %790, align 4
  %792 = zext i8 %791 to i16
  store i16 %792, ptr %47, align 4
  %793 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %793, align 2
  %794 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %794, align 4
  %795 = call i32 @i2c_transfer(ptr noundef %786, ptr noundef nonnull %47, i32 noundef 1) #9
  %796 = icmp eq i32 %795, 1
  br i1 %796, label %803, label %797

797:                                              ; preds = %783
  %798 = getelementptr inbounds %struct.i2c_adapter, ptr %786, i32 0, i32 9
  %799 = load ptr, ptr %106, align 8
  %800 = getelementptr inbounds %struct.stv_base, ptr %799, i32 0, i32 1
  %801 = load i8, ptr %800, align 4
  %802 = zext i8 %801 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %798, ptr noundef nonnull @.str.6, i32 noundef %802, i32 noundef 62835, i32 noundef 192) #10
  br label %803

803:                                              ; preds = %797, %783
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %46) #9
  %804 = load ptr, ptr %106, align 8
  %805 = getelementptr inbounds %struct.stv_base, ptr %804, i32 0, i32 2
  %806 = load ptr, ptr %805, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %44) #9
  store i8 -11, ptr %44, align 1
  %807 = getelementptr inbounds i8, ptr %44, i32 1
  store i8 116, ptr %807, align 1
  %808 = getelementptr inbounds i8, ptr %44, i32 2
  store i8 32, ptr %808, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #9
  %809 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 3, ptr %809, align 4, !annotation !8
  %810 = getelementptr inbounds %struct.stv_base, ptr %804, i32 0, i32 1
  %811 = load i8, ptr %810, align 4
  %812 = zext i8 %811 to i16
  store i16 %812, ptr %45, align 4
  %813 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %813, align 2
  %814 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %814, align 4
  %815 = call i32 @i2c_transfer(ptr noundef %806, ptr noundef nonnull %45, i32 noundef 1) #9
  %816 = icmp eq i32 %815, 1
  br i1 %816, label %823, label %817

817:                                              ; preds = %803
  %818 = getelementptr inbounds %struct.i2c_adapter, ptr %806, i32 0, i32 9
  %819 = load ptr, ptr %106, align 8
  %820 = getelementptr inbounds %struct.stv_base, ptr %819, i32 0, i32 1
  %821 = load i8, ptr %820, align 4
  %822 = zext i8 %821 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %818, ptr noundef nonnull @.str.6, i32 noundef %822, i32 noundef 62836, i32 noundef 32) #10
  br label %823

823:                                              ; preds = %817, %803
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %44) #9
  %824 = load i8, ptr %127, align 1
  %825 = load ptr, ptr %106, align 8
  %826 = getelementptr inbounds %struct.stv_base, ptr %825, i32 0, i32 2
  %827 = load ptr, ptr %826, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %42) #9
  store i8 -11, ptr %42, align 1
  %828 = getelementptr inbounds i8, ptr %42, i32 1
  store i8 -128, ptr %828, align 1
  %829 = getelementptr inbounds i8, ptr %42, i32 2
  store i8 %824, ptr %829, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #9
  %830 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 3, ptr %830, align 4, !annotation !8
  %831 = getelementptr inbounds %struct.stv_base, ptr %825, i32 0, i32 1
  %832 = load i8, ptr %831, align 4
  %833 = zext i8 %832 to i16
  store i16 %833, ptr %43, align 4
  %834 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %834, align 2
  %835 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %835, align 4
  %836 = call i32 @i2c_transfer(ptr noundef %827, ptr noundef nonnull %43, i32 noundef 1) #9
  %837 = icmp eq i32 %836, 1
  br i1 %837, label %845, label %838

838:                                              ; preds = %823
  %839 = getelementptr inbounds %struct.i2c_adapter, ptr %827, i32 0, i32 9
  %840 = load ptr, ptr %106, align 8
  %841 = getelementptr inbounds %struct.stv_base, ptr %840, i32 0, i32 1
  %842 = load i8, ptr %841, align 4
  %843 = zext i8 %842 to i32
  %844 = zext i8 %824 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %839, ptr noundef nonnull @.str.6, i32 noundef %843, i32 noundef 62848, i32 noundef %844) #10
  br label %845

845:                                              ; preds = %838, %823
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %42) #9
  %846 = load i8, ptr %113, align 1
  %847 = or i8 %846, 1
  %848 = load ptr, ptr %106, align 8
  %849 = getelementptr inbounds %struct.stv_base, ptr %848, i32 0, i32 2
  %850 = load ptr, ptr %849, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %40) #9
  store i8 -13, ptr %40, align 1
  %851 = getelementptr inbounds i8, ptr %40, i32 1
  store i8 114, ptr %851, align 1
  %852 = getelementptr inbounds i8, ptr %40, i32 2
  store i8 %847, ptr %852, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #9
  %853 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 3, ptr %853, align 4, !annotation !8
  %854 = getelementptr inbounds %struct.stv_base, ptr %848, i32 0, i32 1
  %855 = load i8, ptr %854, align 4
  %856 = zext i8 %855 to i16
  store i16 %856, ptr %41, align 4
  %857 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %857, align 2
  %858 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %858, align 4
  %859 = call i32 @i2c_transfer(ptr noundef %850, ptr noundef nonnull %41, i32 noundef 1) #9
  %860 = icmp eq i32 %859, 1
  br i1 %860, label %868, label %861

861:                                              ; preds = %845
  %862 = getelementptr inbounds %struct.i2c_adapter, ptr %850, i32 0, i32 9
  %863 = load ptr, ptr %106, align 8
  %864 = getelementptr inbounds %struct.stv_base, ptr %863, i32 0, i32 1
  %865 = load i8, ptr %864, align 4
  %866 = zext i8 %865 to i32
  %867 = zext i8 %847 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %862, ptr noundef nonnull @.str.6, i32 noundef %866, i32 noundef 62322, i32 noundef %867) #10
  br label %868

868:                                              ; preds = %861, %845
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %40) #9
  %869 = load i8, ptr %113, align 1
  %870 = load ptr, ptr %106, align 8
  %871 = getelementptr inbounds %struct.stv_base, ptr %870, i32 0, i32 2
  %872 = load ptr, ptr %871, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %38) #9
  store i8 -13, ptr %38, align 1
  %873 = getelementptr inbounds i8, ptr %38, i32 1
  store i8 114, ptr %873, align 1
  %874 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 %869, ptr %874, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #9
  %875 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 3, ptr %875, align 4, !annotation !8
  %876 = getelementptr inbounds %struct.stv_base, ptr %870, i32 0, i32 1
  %877 = load i8, ptr %876, align 4
  %878 = zext i8 %877 to i16
  store i16 %878, ptr %39, align 4
  %879 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %879, align 2
  %880 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %880, align 4
  %881 = call i32 @i2c_transfer(ptr noundef %872, ptr noundef nonnull %39, i32 noundef 1) #9
  %882 = icmp eq i32 %881, 1
  br i1 %882, label %890, label %883

883:                                              ; preds = %868
  %884 = getelementptr inbounds %struct.i2c_adapter, ptr %872, i32 0, i32 9
  %885 = load ptr, ptr %106, align 8
  %886 = getelementptr inbounds %struct.stv_base, ptr %885, i32 0, i32 1
  %887 = load i8, ptr %886, align 4
  %888 = zext i8 %887 to i32
  %889 = zext i8 %869 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %884, ptr noundef nonnull @.str.6, i32 noundef %888, i32 noundef 62322, i32 noundef %889) #10
  br label %890

890:                                              ; preds = %883, %868
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %38) #9
  %891 = load ptr, ptr %106, align 8
  %892 = getelementptr inbounds %struct.stv_base, ptr %891, i32 0, i32 2
  %893 = load ptr, ptr %892, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %36) #9
  store i8 -13, ptr %36, align 1
  %894 = getelementptr inbounds i8, ptr %36, i32 1
  store i8 115, ptr %894, align 1
  %895 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 -64, ptr %895, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #9
  %896 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 3, ptr %896, align 4, !annotation !8
  %897 = getelementptr inbounds %struct.stv_base, ptr %891, i32 0, i32 1
  %898 = load i8, ptr %897, align 4
  %899 = zext i8 %898 to i16
  store i16 %899, ptr %37, align 4
  %900 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %900, align 2
  %901 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %901, align 4
  %902 = call i32 @i2c_transfer(ptr noundef %893, ptr noundef nonnull %37, i32 noundef 1) #9
  %903 = icmp eq i32 %902, 1
  br i1 %903, label %910, label %904

904:                                              ; preds = %890
  %905 = getelementptr inbounds %struct.i2c_adapter, ptr %893, i32 0, i32 9
  %906 = load ptr, ptr %106, align 8
  %907 = getelementptr inbounds %struct.stv_base, ptr %906, i32 0, i32 1
  %908 = load i8, ptr %907, align 4
  %909 = zext i8 %908 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %905, ptr noundef nonnull @.str.6, i32 noundef %909, i32 noundef 62323, i32 noundef 192) #10
  br label %910

910:                                              ; preds = %904, %890
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %36) #9
  %911 = load ptr, ptr %106, align 8
  %912 = getelementptr inbounds %struct.stv_base, ptr %911, i32 0, i32 2
  %913 = load ptr, ptr %912, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %34) #9
  store i8 -13, ptr %34, align 1
  %914 = getelementptr inbounds i8, ptr %34, i32 1
  store i8 116, ptr %914, align 1
  %915 = getelementptr inbounds i8, ptr %34, i32 2
  store i8 32, ptr %915, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #9
  %916 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 3, ptr %916, align 4, !annotation !8
  %917 = getelementptr inbounds %struct.stv_base, ptr %911, i32 0, i32 1
  %918 = load i8, ptr %917, align 4
  %919 = zext i8 %918 to i16
  store i16 %919, ptr %35, align 4
  %920 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %920, align 2
  %921 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %921, align 4
  %922 = call i32 @i2c_transfer(ptr noundef %913, ptr noundef nonnull %35, i32 noundef 1) #9
  %923 = icmp eq i32 %922, 1
  br i1 %923, label %930, label %924

924:                                              ; preds = %910
  %925 = getelementptr inbounds %struct.i2c_adapter, ptr %913, i32 0, i32 9
  %926 = load ptr, ptr %106, align 8
  %927 = getelementptr inbounds %struct.stv_base, ptr %926, i32 0, i32 1
  %928 = load i8, ptr %927, align 4
  %929 = zext i8 %928 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %925, ptr noundef nonnull @.str.6, i32 noundef %929, i32 noundef 62324, i32 noundef 32) #10
  br label %930

930:                                              ; preds = %924, %910
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %34) #9
  %931 = load i8, ptr %127, align 1
  %932 = load ptr, ptr %106, align 8
  %933 = getelementptr inbounds %struct.stv_base, ptr %932, i32 0, i32 2
  %934 = load ptr, ptr %933, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %32) #9
  store i8 -13, ptr %32, align 1
  %935 = getelementptr inbounds i8, ptr %32, i32 1
  store i8 -128, ptr %935, align 1
  %936 = getelementptr inbounds i8, ptr %32, i32 2
  store i8 %931, ptr %936, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #9
  %937 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 3, ptr %937, align 4, !annotation !8
  %938 = getelementptr inbounds %struct.stv_base, ptr %932, i32 0, i32 1
  %939 = load i8, ptr %938, align 4
  %940 = zext i8 %939 to i16
  store i16 %940, ptr %33, align 4
  %941 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %941, align 2
  %942 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %942, align 4
  %943 = call i32 @i2c_transfer(ptr noundef %934, ptr noundef nonnull %33, i32 noundef 1) #9
  %944 = icmp eq i32 %943, 1
  br i1 %944, label %952, label %945

945:                                              ; preds = %930
  %946 = getelementptr inbounds %struct.i2c_adapter, ptr %934, i32 0, i32 9
  %947 = load ptr, ptr %106, align 8
  %948 = getelementptr inbounds %struct.stv_base, ptr %947, i32 0, i32 1
  %949 = load i8, ptr %948, align 4
  %950 = zext i8 %949 to i32
  %951 = zext i8 %931 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %946, ptr noundef nonnull @.str.6, i32 noundef %950, i32 noundef 62336, i32 noundef %951) #10
  br label %952

952:                                              ; preds = %945, %930
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %32) #9
  %953 = load i8, ptr %113, align 1
  %954 = or i8 %953, 1
  %955 = load ptr, ptr %106, align 8
  %956 = getelementptr inbounds %struct.stv_base, ptr %955, i32 0, i32 2
  %957 = load ptr, ptr %956, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %30) #9
  store i8 -11, ptr %30, align 1
  %958 = getelementptr inbounds i8, ptr %30, i32 1
  store i8 114, ptr %958, align 1
  %959 = getelementptr inbounds i8, ptr %30, i32 2
  store i8 %954, ptr %959, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #9
  %960 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 3, ptr %960, align 4, !annotation !8
  %961 = getelementptr inbounds %struct.stv_base, ptr %955, i32 0, i32 1
  %962 = load i8, ptr %961, align 4
  %963 = zext i8 %962 to i16
  store i16 %963, ptr %31, align 4
  %964 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %964, align 2
  %965 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %965, align 4
  %966 = call i32 @i2c_transfer(ptr noundef %957, ptr noundef nonnull %31, i32 noundef 1) #9
  %967 = icmp eq i32 %966, 1
  br i1 %967, label %975, label %968

968:                                              ; preds = %952
  %969 = getelementptr inbounds %struct.i2c_adapter, ptr %957, i32 0, i32 9
  %970 = load ptr, ptr %106, align 8
  %971 = getelementptr inbounds %struct.stv_base, ptr %970, i32 0, i32 1
  %972 = load i8, ptr %971, align 4
  %973 = zext i8 %972 to i32
  %974 = zext i8 %954 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %969, ptr noundef nonnull @.str.6, i32 noundef %973, i32 noundef 62834, i32 noundef %974) #10
  br label %975

975:                                              ; preds = %968, %952
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %30) #9
  %976 = load i8, ptr %113, align 1
  %977 = or i8 %976, 1
  %978 = load ptr, ptr %106, align 8
  %979 = getelementptr inbounds %struct.stv_base, ptr %978, i32 0, i32 2
  %980 = load ptr, ptr %979, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %28) #9
  store i8 -13, ptr %28, align 1
  %981 = getelementptr inbounds i8, ptr %28, i32 1
  store i8 114, ptr %981, align 1
  %982 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 %977, ptr %982, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #9
  %983 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 3, ptr %983, align 4, !annotation !8
  %984 = getelementptr inbounds %struct.stv_base, ptr %978, i32 0, i32 1
  %985 = load i8, ptr %984, align 4
  %986 = zext i8 %985 to i16
  store i16 %986, ptr %29, align 4
  %987 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %987, align 2
  %988 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %988, align 4
  %989 = call i32 @i2c_transfer(ptr noundef %980, ptr noundef nonnull %29, i32 noundef 1) #9
  %990 = icmp eq i32 %989, 1
  br i1 %990, label %998, label %991

991:                                              ; preds = %975
  %992 = getelementptr inbounds %struct.i2c_adapter, ptr %980, i32 0, i32 9
  %993 = load ptr, ptr %106, align 8
  %994 = getelementptr inbounds %struct.stv_base, ptr %993, i32 0, i32 1
  %995 = load i8, ptr %994, align 4
  %996 = zext i8 %995 to i32
  %997 = zext i8 %977 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %992, ptr noundef nonnull @.str.6, i32 noundef %996, i32 noundef 62322, i32 noundef %997) #10
  br label %998

998:                                              ; preds = %991, %975
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %28) #9
  %999 = load i8, ptr %113, align 1
  %1000 = load ptr, ptr %106, align 8
  %1001 = getelementptr inbounds %struct.stv_base, ptr %1000, i32 0, i32 2
  %1002 = load ptr, ptr %1001, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %26) #9
  store i8 -11, ptr %26, align 1
  %1003 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 114, ptr %1003, align 1
  %1004 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 %999, ptr %1004, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  %1005 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 3, ptr %1005, align 4, !annotation !8
  %1006 = getelementptr inbounds %struct.stv_base, ptr %1000, i32 0, i32 1
  %1007 = load i8, ptr %1006, align 4
  %1008 = zext i8 %1007 to i16
  store i16 %1008, ptr %27, align 4
  %1009 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %1009, align 2
  %1010 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %1010, align 4
  %1011 = call i32 @i2c_transfer(ptr noundef %1002, ptr noundef nonnull %27, i32 noundef 1) #9
  %1012 = icmp eq i32 %1011, 1
  br i1 %1012, label %1020, label %1013

1013:                                             ; preds = %998
  %1014 = getelementptr inbounds %struct.i2c_adapter, ptr %1002, i32 0, i32 9
  %1015 = load ptr, ptr %106, align 8
  %1016 = getelementptr inbounds %struct.stv_base, ptr %1015, i32 0, i32 1
  %1017 = load i8, ptr %1016, align 4
  %1018 = zext i8 %1017 to i32
  %1019 = zext i8 %999 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1014, ptr noundef nonnull @.str.6, i32 noundef %1018, i32 noundef 62834, i32 noundef %1019) #10
  br label %1020

1020:                                             ; preds = %1013, %998
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %26) #9
  %1021 = load i8, ptr %113, align 1
  %1022 = load ptr, ptr %106, align 8
  %1023 = getelementptr inbounds %struct.stv_base, ptr %1022, i32 0, i32 2
  %1024 = load ptr, ptr %1023, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %24) #9
  store i8 -13, ptr %24, align 1
  %1025 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 114, ptr %1025, align 1
  %1026 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 %1021, ptr %1026, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %1027 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 3, ptr %1027, align 4, !annotation !8
  %1028 = getelementptr inbounds %struct.stv_base, ptr %1022, i32 0, i32 1
  %1029 = load i8, ptr %1028, align 4
  %1030 = zext i8 %1029 to i16
  store i16 %1030, ptr %25, align 4
  %1031 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %1031, align 2
  %1032 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %1032, align 4
  %1033 = call i32 @i2c_transfer(ptr noundef %1024, ptr noundef nonnull %25, i32 noundef 1) #9
  %1034 = icmp eq i32 %1033, 1
  br i1 %1034, label %1042, label %1035

1035:                                             ; preds = %1020
  %1036 = getelementptr inbounds %struct.i2c_adapter, ptr %1024, i32 0, i32 9
  %1037 = load ptr, ptr %106, align 8
  %1038 = getelementptr inbounds %struct.stv_base, ptr %1037, i32 0, i32 1
  %1039 = load i8, ptr %1038, align 4
  %1040 = zext i8 %1039 to i32
  %1041 = zext i8 %1021 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1036, ptr noundef nonnull @.str.6, i32 noundef %1040, i32 noundef 62322, i32 noundef %1041) #10
  br label %1042

1042:                                             ; preds = %1035, %1020
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %24) #9
  %1043 = load i8, ptr %122, align 2
  %1044 = load ptr, ptr %106, align 8
  %1045 = getelementptr inbounds %struct.stv_base, ptr %1044, i32 0, i32 2
  %1046 = load ptr, ptr %1045, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %22) #9
  store i8 -15, ptr %22, align 1
  %1047 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 42, ptr %1047, align 1
  %1048 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 %1043, ptr %1048, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %1049 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 3, ptr %1049, align 4, !annotation !8
  %1050 = getelementptr inbounds %struct.stv_base, ptr %1044, i32 0, i32 1
  %1051 = load i8, ptr %1050, align 4
  %1052 = zext i8 %1051 to i16
  store i16 %1052, ptr %23, align 4
  %1053 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %1053, align 2
  %1054 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %1054, align 4
  %1055 = call i32 @i2c_transfer(ptr noundef %1046, ptr noundef nonnull %23, i32 noundef 1) #9
  %1056 = icmp eq i32 %1055, 1
  br i1 %1056, label %1064, label %1057

1057:                                             ; preds = %1042
  %1058 = getelementptr inbounds %struct.i2c_adapter, ptr %1046, i32 0, i32 9
  %1059 = load ptr, ptr %106, align 8
  %1060 = getelementptr inbounds %struct.stv_base, ptr %1059, i32 0, i32 1
  %1061 = load i8, ptr %1060, align 4
  %1062 = zext i8 %1061 to i32
  %1063 = zext i8 %1043 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1058, ptr noundef nonnull @.str.6, i32 noundef %1062, i32 noundef 61738, i32 noundef %1063) #10
  br label %1064

1064:                                             ; preds = %1057, %1042
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %22) #9
  %1065 = load i8, ptr %122, align 2
  %1066 = load ptr, ptr %106, align 8
  %1067 = getelementptr inbounds %struct.stv_base, ptr %1066, i32 0, i32 2
  %1068 = load ptr, ptr %1067, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #9
  store i8 -15, ptr %20, align 1
  %1069 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 43, ptr %1069, align 1
  %1070 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 %1065, ptr %1070, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %1071 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %1071, align 4, !annotation !8
  %1072 = getelementptr inbounds %struct.stv_base, ptr %1066, i32 0, i32 1
  %1073 = load i8, ptr %1072, align 4
  %1074 = zext i8 %1073 to i16
  store i16 %1074, ptr %21, align 4
  %1075 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %1075, align 2
  %1076 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %1076, align 4
  %1077 = call i32 @i2c_transfer(ptr noundef %1068, ptr noundef nonnull %21, i32 noundef 1) #9
  %1078 = icmp eq i32 %1077, 1
  br i1 %1078, label %1086, label %1079

1079:                                             ; preds = %1064
  %1080 = getelementptr inbounds %struct.i2c_adapter, ptr %1068, i32 0, i32 9
  %1081 = load ptr, ptr %106, align 8
  %1082 = getelementptr inbounds %struct.stv_base, ptr %1081, i32 0, i32 1
  %1083 = load i8, ptr %1082, align 4
  %1084 = zext i8 %1083 to i32
  %1085 = zext i8 %1065 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1080, ptr noundef nonnull @.str.6, i32 noundef %1084, i32 noundef 61739, i32 noundef %1085) #10
  br label %1086

1086:                                             ; preds = %1079, %1064
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #9
  %1087 = load ptr, ptr %106, align 8
  %1088 = getelementptr inbounds %struct.stv_base, ptr %1087, i32 0, i32 2
  %1089 = load ptr, ptr %1088, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #9
  store i8 -11, ptr %18, align 1
  %1090 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 119, ptr %1090, align 1
  %1091 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 23, ptr %1091, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %1092 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %1092, align 4, !annotation !8
  %1093 = getelementptr inbounds %struct.stv_base, ptr %1087, i32 0, i32 1
  %1094 = load i8, ptr %1093, align 4
  %1095 = zext i8 %1094 to i16
  store i16 %1095, ptr %19, align 4
  %1096 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %1096, align 2
  %1097 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %1097, align 4
  %1098 = call i32 @i2c_transfer(ptr noundef %1089, ptr noundef nonnull %19, i32 noundef 1) #9
  %1099 = icmp eq i32 %1098, 1
  br i1 %1099, label %1106, label %1100

1100:                                             ; preds = %1086
  %1101 = getelementptr inbounds %struct.i2c_adapter, ptr %1089, i32 0, i32 9
  %1102 = load ptr, ptr %106, align 8
  %1103 = getelementptr inbounds %struct.stv_base, ptr %1102, i32 0, i32 1
  %1104 = load i8, ptr %1103, align 4
  %1105 = zext i8 %1104 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1101, ptr noundef nonnull @.str.6, i32 noundef %1105, i32 noundef 62839, i32 noundef 23) #10
  br label %1106

1106:                                             ; preds = %1100, %1086
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #9
  %1107 = load ptr, ptr %106, align 8
  %1108 = getelementptr inbounds %struct.stv_base, ptr %1107, i32 0, i32 2
  %1109 = load ptr, ptr %1108, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #9
  store i8 -11, ptr %16, align 1
  %1110 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 120, ptr %1110, align 1
  %1111 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 -1, ptr %1111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %1112 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %1112, align 4, !annotation !8
  %1113 = getelementptr inbounds %struct.stv_base, ptr %1107, i32 0, i32 1
  %1114 = load i8, ptr %1113, align 4
  %1115 = zext i8 %1114 to i16
  store i16 %1115, ptr %17, align 4
  %1116 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %1116, align 2
  %1117 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %1117, align 4
  %1118 = call i32 @i2c_transfer(ptr noundef %1109, ptr noundef nonnull %17, i32 noundef 1) #9
  %1119 = icmp eq i32 %1118, 1
  br i1 %1119, label %1126, label %1120

1120:                                             ; preds = %1106
  %1121 = getelementptr inbounds %struct.i2c_adapter, ptr %1109, i32 0, i32 9
  %1122 = load ptr, ptr %106, align 8
  %1123 = getelementptr inbounds %struct.stv_base, ptr %1122, i32 0, i32 1
  %1124 = load i8, ptr %1123, align 4
  %1125 = zext i8 %1124 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1121, ptr noundef nonnull @.str.6, i32 noundef %1125, i32 noundef 62840, i32 noundef 255) #10
  br label %1126

1126:                                             ; preds = %1120, %1106
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #9
  %1127 = load ptr, ptr %106, align 8
  %1128 = getelementptr inbounds %struct.stv_base, ptr %1127, i32 0, i32 2
  %1129 = load ptr, ptr %1128, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #9
  store i8 -13, ptr %14, align 1
  %1130 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 119, ptr %1130, align 1
  %1131 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 23, ptr %1131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %1132 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %1132, align 4, !annotation !8
  %1133 = getelementptr inbounds %struct.stv_base, ptr %1127, i32 0, i32 1
  %1134 = load i8, ptr %1133, align 4
  %1135 = zext i8 %1134 to i16
  store i16 %1135, ptr %15, align 4
  %1136 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %1136, align 2
  %1137 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %1137, align 4
  %1138 = call i32 @i2c_transfer(ptr noundef %1129, ptr noundef nonnull %15, i32 noundef 1) #9
  %1139 = icmp eq i32 %1138, 1
  br i1 %1139, label %1146, label %1140

1140:                                             ; preds = %1126
  %1141 = getelementptr inbounds %struct.i2c_adapter, ptr %1129, i32 0, i32 9
  %1142 = load ptr, ptr %106, align 8
  %1143 = getelementptr inbounds %struct.stv_base, ptr %1142, i32 0, i32 1
  %1144 = load i8, ptr %1143, align 4
  %1145 = zext i8 %1144 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1141, ptr noundef nonnull @.str.6, i32 noundef %1145, i32 noundef 62327, i32 noundef 23) #10
  br label %1146

1146:                                             ; preds = %1140, %1126
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #9
  %1147 = load ptr, ptr %106, align 8
  %1148 = getelementptr inbounds %struct.stv_base, ptr %1147, i32 0, i32 2
  %1149 = load ptr, ptr %1148, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #9
  store i8 -13, ptr %12, align 1
  %1150 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 120, ptr %1150, align 1
  %1151 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 -1, ptr %1151, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %1152 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %1152, align 4, !annotation !8
  %1153 = getelementptr inbounds %struct.stv_base, ptr %1147, i32 0, i32 1
  %1154 = load i8, ptr %1153, align 4
  %1155 = zext i8 %1154 to i16
  store i16 %1155, ptr %13, align 4
  %1156 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %1156, align 2
  %1157 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %1157, align 4
  %1158 = call i32 @i2c_transfer(ptr noundef %1149, ptr noundef nonnull %13, i32 noundef 1) #9
  %1159 = icmp eq i32 %1158, 1
  br i1 %1159, label %1166, label %1160

1160:                                             ; preds = %1146
  %1161 = getelementptr inbounds %struct.i2c_adapter, ptr %1149, i32 0, i32 9
  %1162 = load ptr, ptr %106, align 8
  %1163 = getelementptr inbounds %struct.stv_base, ptr %1162, i32 0, i32 1
  %1164 = load i8, ptr %1163, align 4
  %1165 = zext i8 %1164 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1161, ptr noundef nonnull @.str.6, i32 noundef %1165, i32 noundef 62328, i32 noundef 255) #10
  br label %1166

1166:                                             ; preds = %1160, %1146
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #9
  %1167 = load i32, ptr %128, align 4
  %1168 = icmp eq i32 %1167, 0
  %1169 = load ptr, ptr %106, align 8
  %1170 = getelementptr inbounds %struct.stv_base, ptr %1169, i32 0, i32 7
  %1171 = load i32, ptr %1170, align 4
  %1172 = add i32 %1171, 352000
  %1173 = udiv i32 %1172, 704000
  %1174 = trunc i32 %1173 to i8
  %1175 = select i1 %1168, i16 0, i16 64
  %1176 = or i16 %1175, -2294
  %1177 = getelementptr inbounds %struct.stv_base, ptr %1169, i32 0, i32 2
  %1178 = load ptr, ptr %1177, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #9
  store i8 -9, ptr %10, align 1
  %1179 = getelementptr inbounds i8, ptr %10, i32 1
  %1180 = trunc i16 %1176 to i8
  store i8 %1180, ptr %1179, align 1
  %1181 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 0, ptr %1181, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %1182 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %1182, align 4, !annotation !8
  %1183 = getelementptr inbounds %struct.stv_base, ptr %1169, i32 0, i32 1
  %1184 = load i8, ptr %1183, align 4
  %1185 = zext i8 %1184 to i16
  store i16 %1185, ptr %11, align 4
  %1186 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %1186, align 2
  %1187 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %1187, align 4
  %1188 = call i32 @i2c_transfer(ptr noundef %1178, ptr noundef nonnull %11, i32 noundef 1) #9
  %1189 = icmp eq i32 %1188, 1
  br i1 %1189, label %1197, label %1190

1190:                                             ; preds = %1166
  %1191 = zext i16 %1176 to i32
  %1192 = getelementptr inbounds %struct.i2c_adapter, ptr %1178, i32 0, i32 9
  %1193 = load ptr, ptr %106, align 8
  %1194 = getelementptr inbounds %struct.stv_base, ptr %1193, i32 0, i32 1
  %1195 = load i8, ptr %1194, align 4
  %1196 = zext i8 %1195 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1192, ptr noundef nonnull @.str.6, i32 noundef %1196, i32 noundef %1191, i32 noundef 0) #10
  br label %1197

1197:                                             ; preds = %1190, %1166
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #9
  %1198 = or i16 %1175, -2302
  %1199 = load ptr, ptr %106, align 8
  %1200 = getelementptr inbounds %struct.stv_base, ptr %1199, i32 0, i32 2
  %1201 = load ptr, ptr %1200, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #9
  store i8 -9, ptr %8, align 1
  %1202 = getelementptr inbounds i8, ptr %8, i32 1
  %1203 = trunc i16 %1198 to i8
  store i8 %1203, ptr %1202, align 1
  %1204 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 -70, ptr %1204, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %1205 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %1205, align 4, !annotation !8
  %1206 = getelementptr inbounds %struct.stv_base, ptr %1199, i32 0, i32 1
  %1207 = load i8, ptr %1206, align 4
  %1208 = zext i8 %1207 to i16
  store i16 %1208, ptr %9, align 4
  %1209 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %1209, align 2
  %1210 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %1210, align 4
  %1211 = call i32 @i2c_transfer(ptr noundef %1201, ptr noundef nonnull %9, i32 noundef 1) #9
  %1212 = icmp eq i32 %1211, 1
  br i1 %1212, label %1220, label %1213

1213:                                             ; preds = %1197
  %1214 = zext i16 %1198 to i32
  %1215 = getelementptr inbounds %struct.i2c_adapter, ptr %1201, i32 0, i32 9
  %1216 = load ptr, ptr %106, align 8
  %1217 = getelementptr inbounds %struct.stv_base, ptr %1216, i32 0, i32 1
  %1218 = load i8, ptr %1217, align 4
  %1219 = zext i8 %1218 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1215, ptr noundef nonnull @.str.6, i32 noundef %1219, i32 noundef %1214, i32 noundef 186) #10
  br label %1220

1220:                                             ; preds = %1213, %1197
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #9
  %1221 = load ptr, ptr %106, align 8
  %1222 = getelementptr inbounds %struct.stv_base, ptr %1221, i32 0, i32 2
  %1223 = load ptr, ptr %1222, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  store i8 -9, ptr %6, align 1
  %1224 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %1203, ptr %1224, align 1
  %1225 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 58, ptr %1225, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %1226 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %1226, align 4, !annotation !8
  %1227 = getelementptr inbounds %struct.stv_base, ptr %1221, i32 0, i32 1
  %1228 = load i8, ptr %1227, align 4
  %1229 = zext i8 %1228 to i16
  store i16 %1229, ptr %7, align 4
  %1230 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %1230, align 2
  %1231 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %1231, align 4
  %1232 = call i32 @i2c_transfer(ptr noundef %1223, ptr noundef nonnull %7, i32 noundef 1) #9
  %1233 = icmp eq i32 %1232, 1
  br i1 %1233, label %1241, label %1234

1234:                                             ; preds = %1220
  %1235 = zext i16 %1198 to i32
  %1236 = getelementptr inbounds %struct.i2c_adapter, ptr %1223, i32 0, i32 9
  %1237 = load ptr, ptr %106, align 8
  %1238 = getelementptr inbounds %struct.stv_base, ptr %1237, i32 0, i32 1
  %1239 = load i8, ptr %1238, align 4
  %1240 = zext i8 %1239 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1236, ptr noundef nonnull @.str.6, i32 noundef %1240, i32 noundef %1235, i32 noundef 58) #10
  br label %1241

1241:                                             ; preds = %1234, %1220
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  %1242 = or i16 %1175, -2298
  %1243 = load ptr, ptr %106, align 8
  %1244 = getelementptr inbounds %struct.stv_base, ptr %1243, i32 0, i32 2
  %1245 = load ptr, ptr %1244, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  store i8 -9, ptr %4, align 1
  %1246 = getelementptr inbounds i8, ptr %4, i32 1
  %1247 = trunc i16 %1242 to i8
  store i8 %1247, ptr %1246, align 1
  %1248 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %1174, ptr %1248, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %1249 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %1249, align 4, !annotation !8
  %1250 = getelementptr inbounds %struct.stv_base, ptr %1243, i32 0, i32 1
  %1251 = load i8, ptr %1250, align 4
  %1252 = zext i8 %1251 to i16
  store i16 %1252, ptr %5, align 4
  %1253 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1253, align 2
  %1254 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %1254, align 4
  %1255 = call i32 @i2c_transfer(ptr noundef %1245, ptr noundef nonnull %5, i32 noundef 1) #9
  %1256 = icmp eq i32 %1255, 1
  br i1 %1256, label %1276, label %1257

1257:                                             ; preds = %1241
  %1258 = zext i16 %1242 to i32
  %1259 = getelementptr inbounds %struct.i2c_adapter, ptr %1245, i32 0, i32 9
  %1260 = load ptr, ptr %106, align 8
  %1261 = getelementptr inbounds %struct.stv_base, ptr %1260, i32 0, i32 1
  %1262 = load i8, ptr %1261, align 4
  %1263 = zext i8 %1262 to i32
  %1264 = and i32 %1173, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1259, ptr noundef nonnull @.str.6, i32 noundef %1263, i32 noundef %1258, i32 noundef %1264) #10
  br label %1276

1265:                                             ; preds = %195, %192
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %104) #9
  %1266 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %1267 = load i8, ptr %141, align 4
  %1268 = zext i8 %1267 to i32
  %1269 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 3
  %1270 = load ptr, ptr %1269, align 4
  %1271 = icmp eq ptr %1270, null
  br i1 %1271, label %1272, label %1274

1272:                                             ; preds = %1265
  %1273 = load ptr, ptr %1266, align 4
  br label %1274

1274:                                             ; preds = %1272, %1265
  %1275 = phi ptr [ %1273, %1272 ], [ %1270, %1265 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1266, ptr noundef nonnull @.str.3, i32 noundef %1268, ptr noundef %1275) #10
  call void @kfree(ptr noundef nonnull %165) #9
  br label %1302

1276:                                             ; preds = %1257, %1241
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %104) #9
  %1277 = load ptr, ptr @stvlist, align 4
  %1278 = getelementptr inbounds %struct.list_head, ptr %1277, i32 0, i32 1
  store ptr %165, ptr %1278, align 4
  store ptr %1277, ptr %165, align 8
  %1279 = getelementptr inbounds %struct.list_head, ptr %165, i32 0, i32 1
  store ptr @stvlist, ptr %1279, align 4
  store volatile ptr %165, ptr @stvlist, align 4
  br label %1280

1280:                                             ; preds = %1276, %159
  %1281 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1
  %1282 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %1282, ptr noundef nonnull align 4 dereferenceable(544) @stv0910_ops, i32 544, i1 false)
  %1283 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 3
  store ptr %106, ptr %1283, align 4
  store i32 %2, ptr %128, align 4
  %1284 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %1285 = load i8, ptr %141, align 4
  %1286 = zext i8 %1285 to i32
  %1287 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 3
  %1288 = load ptr, ptr %1287, align 4
  %1289 = icmp eq ptr %1288, null
  br i1 %1289, label %1290, label %1292

1290:                                             ; preds = %1280
  %1291 = load ptr, ptr %1284, align 4
  br label %1292

1292:                                             ; preds = %1290, %1280
  %1293 = phi ptr [ %1291, %1290 ], [ %1288, %1280 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1284, ptr noundef nonnull @.str.4, ptr noundef %1282, i32 noundef %1286, ptr noundef %1293) #10
  %1294 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 42
  store i8 1, ptr %1294, align 8
  %1295 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 42, i32 1
  store i8 0, ptr %1295, align 1
  %1296 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 43
  store i8 1, ptr %1296, align 1
  %1297 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 43, i32 1
  store i8 0, ptr %1297, align 2
  %1298 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 44
  store i8 1, ptr %1298, align 2
  %1299 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 44, i32 1
  store i8 0, ptr %1299, align 1
  %1300 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 45
  store i8 1, ptr %1300, align 1
  %1301 = getelementptr inbounds %struct.stv, ptr %106, i32 0, i32 1, i32 8, i32 45, i32 1
  store i8 0, ptr %1301, align 8
  br label %1303

1302:                                             ; preds = %1274, %163
  call void @kfree(ptr noundef nonnull %106) #9
  br label %1303

1303:                                             ; preds = %1302, %1292, %3
  %1304 = phi ptr [ %1281, %1292 ], [ null, %1302 ], [ null, %3 ]
  ret ptr %1304
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.stv_base, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  %9 = lshr i16 %1, 8
  %10 = trunc i16 %9 to i8
  store i8 %10, ptr %4, align 1
  %11 = getelementptr inbounds i8, ptr %4, i32 1
  %12 = trunc i16 %1 to i8
  store i8 %12, ptr %11, align 1
  %13 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %14 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %14, align 4, !annotation !8
  %15 = getelementptr inbounds %struct.stv_base, ptr %6, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %5, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %8, ptr noundef nonnull %5, i32 noundef 1) #9
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = zext i16 %1 to i32
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 9
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.stv_base, ptr %26, i32 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = zext i8 %2 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %29, i32 noundef %24, i32 noundef %30) #10
  br label %31

31:                                               ; preds = %23, %3
  %32 = phi i32 [ -5, %23 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stv_base, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.stv_base, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %13, align 4
  %17 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %17) #9
  br label %18

18:                                               ; preds = %12, %1
  tail call void @kfree(ptr noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  tail call fastcc void @stop(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  br i1 %1, label %8, label %14

8:                                                ; preds = %5
  %9 = tail call i32 @set_parameters(ptr noundef %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.stv, ptr %7, i32 0, i32 9
  store i32 %12, ptr %13, align 4
  br label %14

14:                                               ; preds = %11, %5
  %15 = tail call i32 @read_status(ptr noundef %0, ptr noundef %4)
  %16 = load i32, ptr %4, align 4
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 100, ptr %3, align 4
  br label %20

20:                                               ; preds = %19, %14, %8
  %21 = phi i32 [ 0, %19 ], [ %9, %8 ], [ 0, %14 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @get_algo(ptr nocapture noundef readnone %0) #7 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_parameters(ptr noundef %0) #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [3 x i8], align 1
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca [3 x i8], align 1
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [3 x i8], align 1
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca [3 x i8], align 1
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca [3 x i8], align 1
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca [3 x i8], align 1
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca [3 x i8], align 1
  %31 = alloca %struct.i2c_msg, align 4
  %32 = alloca [3 x i8], align 1
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [3 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [3 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [3 x i8], align 1
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [3 x i8], align 1
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [3 x i8], align 1
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [3 x i8], align 1
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [3 x i8], align 1
  %47 = alloca %struct.i2c_msg, align 4
  %48 = alloca [3 x i8], align 1
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [3 x i8], align 1
  %51 = alloca %struct.i2c_msg, align 4
  %52 = alloca [3 x i8], align 1
  %53 = alloca %struct.i2c_msg, align 4
  %54 = alloca [2 x i8], align 2
  %55 = alloca [2 x %struct.i2c_msg], align 4
  %56 = alloca [3 x i8], align 1
  %57 = alloca %struct.i2c_msg, align 4
  %58 = alloca [3 x i8], align 1
  %59 = alloca %struct.i2c_msg, align 4
  %60 = alloca [3 x i8], align 1
  %61 = alloca %struct.i2c_msg, align 4
  %62 = alloca [3 x i8], align 1
  %63 = alloca %struct.i2c_msg, align 4
  %64 = alloca [3 x i8], align 1
  %65 = alloca %struct.i2c_msg, align 4
  %66 = alloca [3 x i8], align 1
  %67 = alloca %struct.i2c_msg, align 4
  %68 = alloca [3 x i8], align 1
  %69 = alloca %struct.i2c_msg, align 4
  %70 = alloca [3 x i8], align 1
  %71 = alloca %struct.i2c_msg, align 4
  %72 = alloca [3 x i8], align 1
  %73 = alloca %struct.i2c_msg, align 4
  %74 = alloca [3 x i8], align 1
  %75 = alloca %struct.i2c_msg, align 4
  %76 = alloca i8, align 1
  %77 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  tail call fastcc void @stop(ptr noundef %78)
  %79 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %1
  %83 = tail call i32 %80(ptr noundef %0) #9
  br label %84

84:                                               ; preds = %82, %1
  %85 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 10
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 18
  store i32 %86, ptr %87, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %76) #9
  store i8 0, ptr %76, align 1, !annotation !8
  %88 = load i32, ptr %85, align 4
  %89 = add i32 %88, -70000001
  %90 = icmp ult i32 %89, -69900001
  br i1 %90, label %1205, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 13
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 12
  store i32 0, ptr %93, align 4
  %94 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 11
  %95 = load i32, ptr %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %125, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 3
  %99 = load i16, ptr %98, align 4
  %100 = add i16 %99, -3562
  %101 = load ptr, ptr %78, align 4
  %102 = getelementptr inbounds %struct.stv_base, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %74) #9
  %104 = lshr i16 %100, 8
  %105 = trunc i16 %104 to i8
  store i8 %105, ptr %74, align 1
  %106 = getelementptr inbounds i8, ptr %74, i32 1
  %107 = trunc i16 %100 to i8
  store i8 %107, ptr %106, align 1
  %108 = getelementptr inbounds i8, ptr %74, i32 2
  store i8 92, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %75) #9
  %109 = getelementptr inbounds i8, ptr %75, i32 4
  store i32 3, ptr %109, align 4, !annotation !8
  %110 = getelementptr inbounds %struct.stv_base, ptr %101, i32 0, i32 1
  %111 = load i8, ptr %110, align 4
  %112 = zext i8 %111 to i16
  store i16 %112, ptr %75, align 4
  %113 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 1
  store i16 0, ptr %113, align 2
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 3
  store ptr %74, ptr %114, align 4
  %115 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %75, i32 noundef 1) #9
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %124, label %117

117:                                              ; preds = %97
  %118 = zext i16 %100 to i32
  %119 = getelementptr inbounds %struct.i2c_adapter, ptr %103, i32 0, i32 9
  %120 = load ptr, ptr %78, align 4
  %121 = getelementptr inbounds %struct.stv_base, ptr %120, i32 0, i32 1
  %122 = load i8, ptr %121, align 4
  %123 = zext i8 %122 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %119, ptr noundef nonnull @.str.6, i32 noundef %123, i32 noundef %118, i32 noundef 92) #10
  br label %124

124:                                              ; preds = %117, %97
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %75) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %74) #9
  br label %125

125:                                              ; preds = %124, %91
  %126 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i32 -179212160, i32 -212766592
  call fastcc void @write_field(ptr noundef %78, i32 noundef %129, i8 noundef zeroext 0) #9
  %130 = load i32, ptr %126, align 4
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, i32 -179236862, i32 -212791294
  call fastcc void @write_field(ptr noundef %78, i32 noundef %132, i8 noundef zeroext 0) #9
  %133 = load i32, ptr %126, align 4
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 -179285984, i32 -212840416
  call fastcc void @write_field(ptr noundef %78, i32 noundef %135, i8 noundef zeroext 0) #9
  %136 = load i32, ptr %126, align 4
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i32 -177209343, i32 -210763775
  call fastcc void @write_field(ptr noundef %78, i32 noundef %138, i8 noundef zeroext 0) #9
  %139 = load i32, ptr %126, align 4
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 -176939004, i32 -210493436
  call fastcc void @write_field(ptr noundef %78, i32 noundef %141, i8 noundef zeroext 0) #9
  %142 = load i32, ptr %126, align 4
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %143, i32 -176787328, i32 -210341760
  call fastcc void @write_field(ptr noundef %78, i32 noundef %144, i8 noundef zeroext 0) #9
  %145 = load i32, ptr %126, align 4
  %146 = icmp eq i32 %145, 0
  %147 = select i1 %146, i16 -2728, i16 -3240
  %148 = load ptr, ptr %78, align 4
  %149 = getelementptr inbounds %struct.stv_base, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %72) #9
  %151 = lshr i16 %147, 8
  %152 = trunc i16 %151 to i8
  store i8 %152, ptr %72, align 1
  %153 = getelementptr inbounds i8, ptr %72, i32 1
  store i8 88, ptr %153, align 1
  %154 = getelementptr inbounds i8, ptr %72, i32 2
  store i8 -32, ptr %154, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %73) #9
  %155 = getelementptr inbounds i8, ptr %73, i32 4
  store i32 3, ptr %155, align 4, !annotation !8
  %156 = getelementptr inbounds %struct.stv_base, ptr %148, i32 0, i32 1
  %157 = load i8, ptr %156, align 4
  %158 = zext i8 %157 to i16
  store i16 %158, ptr %73, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 1
  store i16 0, ptr %159, align 2
  %160 = getelementptr inbounds %struct.i2c_msg, ptr %73, i32 0, i32 3
  store ptr %72, ptr %160, align 4
  %161 = call i32 @i2c_transfer(ptr noundef %150, ptr noundef nonnull %73, i32 noundef 1) #9
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %170, label %163

163:                                              ; preds = %125
  %164 = zext i16 %147 to i32
  %165 = getelementptr inbounds %struct.i2c_adapter, ptr %150, i32 0, i32 9
  %166 = load ptr, ptr %78, align 4
  %167 = getelementptr inbounds %struct.stv_base, ptr %166, i32 0, i32 1
  %168 = load i8, ptr %167, align 4
  %169 = zext i8 %168 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %165, ptr noundef nonnull @.str.6, i32 noundef %169, i32 noundef %164, i32 noundef 224) #10
  br label %170

170:                                              ; preds = %163, %125
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %73) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %72) #9
  %171 = load i32, ptr %126, align 4
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 -176738296, i32 -210292728
  call fastcc void @write_field(ptr noundef %78, i32 noundef %173, i8 noundef zeroext 0) #9
  %174 = load i32, ptr %126, align 4
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 -174964688, i32 -208519120
  call fastcc void @write_field(ptr noundef %78, i32 noundef %176, i8 noundef zeroext 0) #9
  %177 = load i32, ptr %126, align 4
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 -179355600, i32 -212910032
  call fastcc void @write_field(ptr noundef %78, i32 noundef %179, i8 noundef zeroext 1) #9
  %180 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 24
  %181 = load i32, ptr %180, align 4
  switch i32 %181, label %189 [
    i32 -1, label %255
    i32 -2147483648, label %182
  ]

182:                                              ; preds = %170
  %183 = load i32, ptr %126, align 4
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, i32 -179212160, i32 -212766592
  call fastcc void @write_field(ptr noundef %78, i32 noundef %185, i8 noundef zeroext 1) #9
  %186 = load i32, ptr %126, align 4
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, i32 -177209343, i32 -210763775
  call fastcc void @write_field(ptr noundef %78, i32 noundef %188, i8 noundef zeroext 1) #9
  br label %248

189:                                              ; preds = %170
  %190 = load i32, ptr %126, align 4
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 -179285984, i32 -212840416
  call fastcc void @write_field(ptr noundef %78, i32 noundef %192, i8 noundef zeroext 1) #9
  %193 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 3
  %194 = load i16, ptr %193, align 4
  %195 = add i16 %194, -3234
  %196 = trunc i32 %181 to i8
  %197 = load ptr, ptr %78, align 4
  %198 = getelementptr inbounds %struct.stv_base, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %70) #9
  %200 = lshr i16 %195, 8
  %201 = trunc i16 %200 to i8
  store i8 %201, ptr %70, align 1
  %202 = getelementptr inbounds i8, ptr %70, i32 1
  %203 = trunc i16 %195 to i8
  store i8 %203, ptr %202, align 1
  %204 = getelementptr inbounds i8, ptr %70, i32 2
  store i8 %196, ptr %204, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %71) #9
  %205 = getelementptr inbounds i8, ptr %71, i32 4
  store i32 3, ptr %205, align 4, !annotation !8
  %206 = getelementptr inbounds %struct.stv_base, ptr %197, i32 0, i32 1
  %207 = load i8, ptr %206, align 4
  %208 = zext i8 %207 to i16
  store i16 %208, ptr %71, align 4
  %209 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 1
  store i16 0, ptr %209, align 2
  %210 = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 3
  store ptr %70, ptr %210, align 4
  %211 = call i32 @i2c_transfer(ptr noundef %199, ptr noundef nonnull %71, i32 noundef 1) #9
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %221, label %213

213:                                              ; preds = %189
  %214 = zext i16 %195 to i32
  %215 = getelementptr inbounds %struct.i2c_adapter, ptr %199, i32 0, i32 9
  %216 = load ptr, ptr %78, align 4
  %217 = getelementptr inbounds %struct.stv_base, ptr %216, i32 0, i32 1
  %218 = load i8, ptr %217, align 4
  %219 = zext i8 %218 to i32
  %220 = and i32 %181, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %215, ptr noundef nonnull @.str.6, i32 noundef %219, i32 noundef %214, i32 noundef %220) #10
  br label %221

221:                                              ; preds = %213, %189
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %71) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %70) #9
  %222 = load i16, ptr %193, align 4
  %223 = add i16 %222, -3233
  %224 = load ptr, ptr %78, align 4
  %225 = getelementptr inbounds %struct.stv_base, ptr %224, i32 0, i32 2
  %226 = load ptr, ptr %225, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %68) #9
  %227 = lshr i16 %223, 8
  %228 = trunc i16 %227 to i8
  store i8 %228, ptr %68, align 1
  %229 = getelementptr inbounds i8, ptr %68, i32 1
  %230 = trunc i16 %223 to i8
  store i8 %230, ptr %229, align 1
  %231 = getelementptr inbounds i8, ptr %68, i32 2
  store i8 -1, ptr %231, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %69) #9
  %232 = getelementptr inbounds i8, ptr %69, i32 4
  store i32 3, ptr %232, align 4, !annotation !8
  %233 = getelementptr inbounds %struct.stv_base, ptr %224, i32 0, i32 1
  %234 = load i8, ptr %233, align 4
  %235 = zext i8 %234 to i16
  store i16 %235, ptr %69, align 4
  %236 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 1
  store i16 0, ptr %236, align 2
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %69, i32 0, i32 3
  store ptr %68, ptr %237, align 4
  %238 = call i32 @i2c_transfer(ptr noundef %226, ptr noundef nonnull %69, i32 noundef 1) #9
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %247, label %240

240:                                              ; preds = %221
  %241 = zext i16 %223 to i32
  %242 = getelementptr inbounds %struct.i2c_adapter, ptr %226, i32 0, i32 9
  %243 = load ptr, ptr %78, align 4
  %244 = getelementptr inbounds %struct.stv_base, ptr %243, i32 0, i32 1
  %245 = load i8, ptr %244, align 4
  %246 = zext i8 %245 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %242, ptr noundef nonnull @.str.6, i32 noundef %246, i32 noundef %241, i32 noundef 255) #10
  br label %247

247:                                              ; preds = %240, %221
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %69) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %68) #9
  br label %248

248:                                              ; preds = %247, %182
  %249 = load i32, ptr %126, align 4
  %250 = icmp eq i32 %249, 0
  %251 = select i1 %250, i32 -179306495, i32 -212860927
  call fastcc void @write_field(ptr noundef %78, i32 noundef %251, i8 noundef zeroext 1) #9
  %252 = load i32, ptr %126, align 4
  %253 = icmp eq i32 %252, 0
  %254 = select i1 %253, i32 -179306495, i32 -212860927
  call fastcc void @write_field(ptr noundef %78, i32 noundef %254, i8 noundef zeroext 0) #9
  br label %255

255:                                              ; preds = %248, %170
  %256 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 25
  %257 = load i32, ptr %256, align 4
  %258 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 27
  %259 = load i32, ptr %258, align 4
  %260 = icmp eq i32 %259, %257
  br i1 %260, label %351, label %261

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 3
  %263 = load i16, ptr %262, align 4
  %264 = add i16 %263, -3410
  %265 = trunc i32 %257 to i8
  %266 = load ptr, ptr %78, align 4
  %267 = getelementptr inbounds %struct.stv_base, ptr %266, i32 0, i32 2
  %268 = load ptr, ptr %267, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %66) #9
  %269 = lshr i16 %264, 8
  %270 = trunc i16 %269 to i8
  store i8 %270, ptr %66, align 1
  %271 = getelementptr inbounds i8, ptr %66, i32 1
  %272 = trunc i16 %264 to i8
  store i8 %272, ptr %271, align 1
  %273 = getelementptr inbounds i8, ptr %66, i32 2
  store i8 %265, ptr %273, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %67) #9
  %274 = getelementptr inbounds i8, ptr %67, i32 4
  store i32 3, ptr %274, align 4, !annotation !8
  %275 = getelementptr inbounds %struct.stv_base, ptr %266, i32 0, i32 1
  %276 = load i8, ptr %275, align 4
  %277 = zext i8 %276 to i16
  store i16 %277, ptr %67, align 4
  %278 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 1
  store i16 0, ptr %278, align 2
  %279 = getelementptr inbounds %struct.i2c_msg, ptr %67, i32 0, i32 3
  store ptr %66, ptr %279, align 4
  %280 = call i32 @i2c_transfer(ptr noundef %268, ptr noundef nonnull %67, i32 noundef 1) #9
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %290, label %282

282:                                              ; preds = %261
  %283 = zext i16 %264 to i32
  %284 = getelementptr inbounds %struct.i2c_adapter, ptr %268, i32 0, i32 9
  %285 = load ptr, ptr %78, align 4
  %286 = getelementptr inbounds %struct.stv_base, ptr %285, i32 0, i32 1
  %287 = load i8, ptr %286, align 4
  %288 = zext i8 %287 to i32
  %289 = and i32 %257, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %284, ptr noundef nonnull @.str.6, i32 noundef %288, i32 noundef %283, i32 noundef %289) #10
  br label %290

290:                                              ; preds = %282, %261
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %67) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %66) #9
  %291 = load i16, ptr %262, align 4
  %292 = add i16 %291, -3411
  %293 = lshr i32 %257, 8
  %294 = trunc i32 %293 to i8
  %295 = load ptr, ptr %78, align 4
  %296 = getelementptr inbounds %struct.stv_base, ptr %295, i32 0, i32 2
  %297 = load ptr, ptr %296, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %64) #9
  %298 = lshr i16 %292, 8
  %299 = trunc i16 %298 to i8
  store i8 %299, ptr %64, align 1
  %300 = getelementptr inbounds i8, ptr %64, i32 1
  %301 = trunc i16 %292 to i8
  store i8 %301, ptr %300, align 1
  %302 = getelementptr inbounds i8, ptr %64, i32 2
  store i8 %294, ptr %302, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %65) #9
  %303 = getelementptr inbounds i8, ptr %65, i32 4
  store i32 3, ptr %303, align 4, !annotation !8
  %304 = getelementptr inbounds %struct.stv_base, ptr %295, i32 0, i32 1
  %305 = load i8, ptr %304, align 4
  %306 = zext i8 %305 to i16
  store i16 %306, ptr %65, align 4
  %307 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 1
  store i16 0, ptr %307, align 2
  %308 = getelementptr inbounds %struct.i2c_msg, ptr %65, i32 0, i32 3
  store ptr %64, ptr %308, align 4
  %309 = call i32 @i2c_transfer(ptr noundef %297, ptr noundef nonnull %65, i32 noundef 1) #9
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %319, label %311

311:                                              ; preds = %290
  %312 = zext i16 %292 to i32
  %313 = getelementptr inbounds %struct.i2c_adapter, ptr %297, i32 0, i32 9
  %314 = load ptr, ptr %78, align 4
  %315 = getelementptr inbounds %struct.stv_base, ptr %314, i32 0, i32 1
  %316 = load i8, ptr %315, align 4
  %317 = zext i8 %316 to i32
  %318 = and i32 %293, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %313, ptr noundef nonnull @.str.6, i32 noundef %317, i32 noundef %312, i32 noundef %318) #10
  br label %319

319:                                              ; preds = %311, %290
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %65) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %64) #9
  %320 = load i16, ptr %262, align 4
  %321 = add i16 %320, -3412
  %322 = lshr i32 %257, 16
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 3
  %325 = or i8 %324, 4
  %326 = load ptr, ptr %78, align 4
  %327 = getelementptr inbounds %struct.stv_base, ptr %326, i32 0, i32 2
  %328 = load ptr, ptr %327, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %62) #9
  %329 = lshr i16 %321, 8
  %330 = trunc i16 %329 to i8
  store i8 %330, ptr %62, align 1
  %331 = getelementptr inbounds i8, ptr %62, i32 1
  %332 = trunc i16 %321 to i8
  store i8 %332, ptr %331, align 1
  %333 = getelementptr inbounds i8, ptr %62, i32 2
  store i8 %325, ptr %333, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %63) #9
  %334 = getelementptr inbounds i8, ptr %63, i32 4
  store i32 3, ptr %334, align 4, !annotation !8
  %335 = getelementptr inbounds %struct.stv_base, ptr %326, i32 0, i32 1
  %336 = load i8, ptr %335, align 4
  %337 = zext i8 %336 to i16
  store i16 %337, ptr %63, align 4
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 1
  store i16 0, ptr %338, align 2
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %63, i32 0, i32 3
  store ptr %62, ptr %339, align 4
  %340 = call i32 @i2c_transfer(ptr noundef %328, ptr noundef nonnull %63, i32 noundef 1) #9
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %350, label %342

342:                                              ; preds = %319
  %343 = zext i16 %321 to i32
  %344 = getelementptr inbounds %struct.i2c_adapter, ptr %328, i32 0, i32 9
  %345 = load ptr, ptr %78, align 4
  %346 = getelementptr inbounds %struct.stv_base, ptr %345, i32 0, i32 1
  %347 = load i8, ptr %346, align 4
  %348 = zext i8 %347 to i32
  %349 = zext i8 %325 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %344, ptr noundef nonnull @.str.6, i32 noundef %348, i32 noundef %343, i32 noundef %349) #10
  br label %350

350:                                              ; preds = %342, %319
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %63) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %62) #9
  store i32 %257, ptr %258, align 4
  br label %351

351:                                              ; preds = %350, %255
  %352 = load i32, ptr %85, align 4
  %353 = icmp ult i32 %352, 1000001
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 14
  store i32 3000, ptr %355, align 4
  br label %373

356:                                              ; preds = %351
  %357 = icmp ult i32 %352, 2000001
  br i1 %357, label %358, label %360

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 14
  store i32 2500, ptr %359, align 4
  br label %373

360:                                              ; preds = %356
  %361 = icmp ult i32 %352, 5000001
  br i1 %361, label %362, label %364

362:                                              ; preds = %360
  %363 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 14
  store i32 1000, ptr %363, align 4
  br label %373

364:                                              ; preds = %360
  %365 = icmp ult i32 %352, 10000001
  br i1 %365, label %366, label %368

366:                                              ; preds = %364
  %367 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 14
  store i32 700, ptr %367, align 4
  br label %373

368:                                              ; preds = %364
  %369 = icmp ult i32 %352, 20000000
  %370 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 14
  br i1 %369, label %371, label %372

371:                                              ; preds = %368
  store i32 400, ptr %370, align 4
  br label %373

372:                                              ; preds = %368
  store i32 300, ptr %370, align 4
  br label %373

373:                                              ; preds = %372, %371, %366, %362, %358, %354
  %374 = phi i32 [ 1300, %358 ], [ 350, %366 ], [ 200, %372 ], [ 200, %371 ], [ 650, %362 ], [ 2000, %354 ]
  %375 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 15
  store i32 %374, ptr %375, align 4
  %376 = load i32, ptr %85, align 4
  %377 = load ptr, ptr %78, align 4
  %378 = getelementptr inbounds %struct.stv_base, ptr %377, i32 0, i32 7
  %379 = load i32, ptr %378, align 4
  %380 = zext i32 %376 to i64
  %381 = shl nuw nsw i64 %380, 16
  %382 = icmp ult i32 %376, 65536
  br i1 %382, label %383, label %386, !prof !9

383:                                              ; preds = %373
  %384 = trunc i64 %381 to i32
  %385 = udiv i32 %384, %379
  br label %390

386:                                              ; preds = %373
  %387 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %379, i64 %381) #11, !srcloc !10
  %388 = extractvalue { i64, i64 } %387, 1
  %389 = trunc i64 %388 to i32
  br label %390

390:                                              ; preds = %386, %383
  %391 = phi i32 [ %385, %383 ], [ %389, %386 ]
  %392 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 3
  %393 = load i16, ptr %392, align 4
  %394 = add i16 %393, -3490
  %395 = lshr i32 %391, 8
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 127
  %398 = getelementptr inbounds %struct.stv_base, ptr %377, i32 0, i32 2
  %399 = load ptr, ptr %398, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %60) #9
  %400 = lshr i16 %394, 8
  %401 = trunc i16 %400 to i8
  store i8 %401, ptr %60, align 1
  %402 = getelementptr inbounds i8, ptr %60, i32 1
  %403 = trunc i16 %394 to i8
  store i8 %403, ptr %402, align 1
  %404 = getelementptr inbounds i8, ptr %60, i32 2
  store i8 %397, ptr %404, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %61) #9
  %405 = getelementptr inbounds i8, ptr %61, i32 4
  store i32 3, ptr %405, align 4, !annotation !8
  %406 = getelementptr inbounds %struct.stv_base, ptr %377, i32 0, i32 1
  %407 = load i8, ptr %406, align 4
  %408 = zext i8 %407 to i16
  store i16 %408, ptr %61, align 4
  %409 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 1
  store i16 0, ptr %409, align 2
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  store ptr %60, ptr %410, align 4
  %411 = call i32 @i2c_transfer(ptr noundef %399, ptr noundef nonnull %61, i32 noundef 1) #9
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %421, label %413

413:                                              ; preds = %390
  %414 = zext i16 %394 to i32
  %415 = getelementptr inbounds %struct.i2c_adapter, ptr %399, i32 0, i32 9
  %416 = load ptr, ptr %78, align 4
  %417 = getelementptr inbounds %struct.stv_base, ptr %416, i32 0, i32 1
  %418 = load i8, ptr %417, align 4
  %419 = zext i8 %418 to i32
  %420 = zext i8 %397 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %415, ptr noundef nonnull @.str.6, i32 noundef %419, i32 noundef %414, i32 noundef %420) #10
  br label %421

421:                                              ; preds = %413, %390
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %61) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %60) #9
  %422 = load i16, ptr %392, align 4
  %423 = add i16 %422, -3489
  %424 = trunc i32 %391 to i8
  %425 = load ptr, ptr %78, align 4
  %426 = getelementptr inbounds %struct.stv_base, ptr %425, i32 0, i32 2
  %427 = load ptr, ptr %426, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %58) #9
  %428 = lshr i16 %423, 8
  %429 = trunc i16 %428 to i8
  store i8 %429, ptr %58, align 1
  %430 = getelementptr inbounds i8, ptr %58, i32 1
  %431 = trunc i16 %423 to i8
  store i8 %431, ptr %430, align 1
  %432 = getelementptr inbounds i8, ptr %58, i32 2
  store i8 %424, ptr %432, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %59) #9
  %433 = getelementptr inbounds i8, ptr %59, i32 4
  store i32 3, ptr %433, align 4, !annotation !8
  %434 = getelementptr inbounds %struct.stv_base, ptr %425, i32 0, i32 1
  %435 = load i8, ptr %434, align 4
  %436 = zext i8 %435 to i16
  store i16 %436, ptr %59, align 4
  %437 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 1
  store i16 0, ptr %437, align 2
  %438 = getelementptr inbounds %struct.i2c_msg, ptr %59, i32 0, i32 3
  store ptr %58, ptr %438, align 4
  %439 = call i32 @i2c_transfer(ptr noundef %427, ptr noundef nonnull %59, i32 noundef 1) #9
  %440 = icmp eq i32 %439, 1
  br i1 %440, label %449, label %441

441:                                              ; preds = %421
  %442 = zext i16 %423 to i32
  %443 = getelementptr inbounds %struct.i2c_adapter, ptr %427, i32 0, i32 9
  %444 = load ptr, ptr %78, align 4
  %445 = getelementptr inbounds %struct.stv_base, ptr %444, i32 0, i32 1
  %446 = load i8, ptr %445, align 4
  %447 = zext i8 %446 to i32
  %448 = and i32 %391, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %443, ptr noundef nonnull @.str.6, i32 noundef %447, i32 noundef %442, i32 noundef %448) #10
  br label %449

449:                                              ; preds = %441, %421
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %59) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %58) #9
  %450 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 17
  %451 = load i8, ptr %450, align 4
  %452 = or i8 %451, -128
  store i8 %452, ptr %450, align 4
  %453 = load i16, ptr %392, align 4
  %454 = add i16 %453, -3568
  %455 = load ptr, ptr %78, align 4
  %456 = getelementptr inbounds %struct.stv_base, ptr %455, i32 0, i32 2
  %457 = load ptr, ptr %456, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %56) #9
  %458 = lshr i16 %454, 8
  %459 = trunc i16 %458 to i8
  store i8 %459, ptr %56, align 1
  %460 = getelementptr inbounds i8, ptr %56, i32 1
  %461 = trunc i16 %454 to i8
  store i8 %461, ptr %460, align 1
  %462 = getelementptr inbounds i8, ptr %56, i32 2
  store i8 %452, ptr %462, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %57) #9
  %463 = getelementptr inbounds i8, ptr %57, i32 4
  store i32 3, ptr %463, align 4, !annotation !8
  %464 = getelementptr inbounds %struct.stv_base, ptr %455, i32 0, i32 1
  %465 = load i8, ptr %464, align 4
  %466 = zext i8 %465 to i16
  store i16 %466, ptr %57, align 4
  %467 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 1
  store i16 0, ptr %467, align 2
  %468 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 3
  store ptr %56, ptr %468, align 4
  %469 = call i32 @i2c_transfer(ptr noundef %457, ptr noundef nonnull %57, i32 noundef 1) #9
  %470 = icmp eq i32 %469, 1
  br i1 %470, label %479, label %471

471:                                              ; preds = %449
  %472 = zext i16 %454 to i32
  %473 = getelementptr inbounds %struct.i2c_adapter, ptr %457, i32 0, i32 9
  %474 = load ptr, ptr %78, align 4
  %475 = getelementptr inbounds %struct.stv_base, ptr %474, i32 0, i32 1
  %476 = load i8, ptr %475, align 4
  %477 = zext i8 %476 to i32
  %478 = zext i8 %452 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %473, ptr noundef nonnull @.str.6, i32 noundef %477, i32 noundef %472, i32 noundef %478) #10
  br label %479

479:                                              ; preds = %471, %449
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %57) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %56) #9
  %480 = load i16, ptr %392, align 4
  %481 = add i16 %480, -3564
  %482 = load ptr, ptr %78, align 4
  %483 = getelementptr inbounds %struct.stv_base, ptr %482, i32 0, i32 2
  %484 = load ptr, ptr %483, align 4
  %485 = getelementptr inbounds %struct.stv_base, ptr %482, i32 0, i32 1
  %486 = load i8, ptr %485, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %54) #9
  %487 = lshr i16 %481, 8
  %488 = trunc i16 %487 to i8
  store i8 %488, ptr %54, align 2
  %489 = getelementptr inbounds i8, ptr %54, i32 1
  %490 = trunc i16 %481 to i8
  store i8 %490, ptr %489, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %55) #9
  %491 = getelementptr inbounds i8, ptr %55, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %491, i8 0, i32 16, i1 false) #9, !annotation !8
  %492 = zext i8 %486 to i16
  store i16 %492, ptr %55, align 4
  %493 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 1
  store i16 0, ptr %493, align 2
  store i16 2, ptr %491, align 4
  %494 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 0, i32 3
  store ptr %54, ptr %494, align 4
  %495 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 1
  store i16 %492, ptr %495, align 4
  %496 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 1, i32 1
  store i16 1, ptr %496, align 2
  %497 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 1, i32 2
  store i16 1, ptr %497, align 4
  %498 = getelementptr inbounds %struct.i2c_msg, ptr %55, i32 1, i32 3
  store ptr %76, ptr %498, align 4
  %499 = call i32 @i2c_transfer(ptr noundef %484, ptr noundef nonnull %55, i32 noundef 2) #9
  %500 = icmp eq i32 %499, 2
  br i1 %500, label %505, label %501

501:                                              ; preds = %479
  %502 = zext i16 %481 to i32
  %503 = getelementptr inbounds %struct.i2c_adapter, ptr %484, i32 0, i32 9
  %504 = zext i8 %486 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %503, ptr noundef nonnull @.str.5, i32 noundef %504, i32 noundef %502) #10
  br label %505

505:                                              ; preds = %501, %479
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %55) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %54) #9
  %506 = load i16, ptr %392, align 4
  %507 = add i16 %506, -3564
  %508 = load i8, ptr %76, align 1
  %509 = or i8 %508, -64
  store i8 %509, ptr %76, align 1
  %510 = load ptr, ptr %78, align 4
  %511 = getelementptr inbounds %struct.stv_base, ptr %510, i32 0, i32 2
  %512 = load ptr, ptr %511, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %52) #9
  %513 = lshr i16 %507, 8
  %514 = trunc i16 %513 to i8
  store i8 %514, ptr %52, align 1
  %515 = getelementptr inbounds i8, ptr %52, i32 1
  %516 = trunc i16 %507 to i8
  store i8 %516, ptr %515, align 1
  %517 = getelementptr inbounds i8, ptr %52, i32 2
  store i8 %509, ptr %517, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %53) #9
  %518 = getelementptr inbounds i8, ptr %53, i32 4
  store i32 3, ptr %518, align 4, !annotation !8
  %519 = getelementptr inbounds %struct.stv_base, ptr %510, i32 0, i32 1
  %520 = load i8, ptr %519, align 4
  %521 = zext i8 %520 to i16
  store i16 %521, ptr %53, align 4
  %522 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 1
  store i16 0, ptr %522, align 2
  %523 = getelementptr inbounds %struct.i2c_msg, ptr %53, i32 0, i32 3
  store ptr %52, ptr %523, align 4
  %524 = call i32 @i2c_transfer(ptr noundef %512, ptr noundef nonnull %53, i32 noundef 1) #9
  %525 = icmp eq i32 %524, 1
  br i1 %525, label %534, label %526

526:                                              ; preds = %505
  %527 = zext i16 %507 to i32
  %528 = getelementptr inbounds %struct.i2c_adapter, ptr %512, i32 0, i32 9
  %529 = load ptr, ptr %78, align 4
  %530 = getelementptr inbounds %struct.stv_base, ptr %529, i32 0, i32 1
  %531 = load i8, ptr %530, align 4
  %532 = zext i8 %531 to i32
  %533 = zext i8 %509 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %528, ptr noundef nonnull @.str.6, i32 noundef %532, i32 noundef %527, i32 noundef %533) #10
  br label %534

534:                                              ; preds = %526, %505
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %53) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %52) #9
  %535 = load i32, ptr %126, align 4
  %536 = icmp eq i32 %535, 0
  %537 = select i1 %536, i8 1, i8 2
  call fastcc void @write_shared_reg(ptr noundef %78, i8 noundef zeroext %537, i8 noundef zeroext 0) #9
  %538 = load i16, ptr %392, align 4
  %539 = add i16 %538, -3277
  %540 = load ptr, ptr %78, align 4
  %541 = getelementptr inbounds %struct.stv_base, ptr %540, i32 0, i32 2
  %542 = load ptr, ptr %541, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %50) #9
  %543 = lshr i16 %539, 8
  %544 = trunc i16 %543 to i8
  store i8 %544, ptr %50, align 1
  %545 = getelementptr inbounds i8, ptr %50, i32 1
  %546 = trunc i16 %539 to i8
  store i8 %546, ptr %545, align 1
  %547 = getelementptr inbounds i8, ptr %50, i32 2
  store i8 0, ptr %547, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #9
  %548 = getelementptr inbounds i8, ptr %51, i32 4
  store i32 3, ptr %548, align 4, !annotation !8
  %549 = getelementptr inbounds %struct.stv_base, ptr %540, i32 0, i32 1
  %550 = load i8, ptr %549, align 4
  %551 = zext i8 %550 to i16
  store i16 %551, ptr %51, align 4
  %552 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %552, align 2
  %553 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %553, align 4
  %554 = call i32 @i2c_transfer(ptr noundef %542, ptr noundef nonnull %51, i32 noundef 1) #9
  %555 = icmp eq i32 %554, 1
  br i1 %555, label %563, label %556

556:                                              ; preds = %534
  %557 = zext i16 %539 to i32
  %558 = getelementptr inbounds %struct.i2c_adapter, ptr %542, i32 0, i32 9
  %559 = load ptr, ptr %78, align 4
  %560 = getelementptr inbounds %struct.stv_base, ptr %559, i32 0, i32 1
  %561 = load i8, ptr %560, align 4
  %562 = zext i8 %561 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %558, ptr noundef nonnull @.str.6, i32 noundef %562, i32 noundef %557, i32 noundef 0) #10
  br label %563

563:                                              ; preds = %556, %534
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %50) #9
  %564 = load i16, ptr %392, align 4
  %565 = add i16 %564, -3268
  %566 = load ptr, ptr %78, align 4
  %567 = getelementptr inbounds %struct.stv_base, ptr %566, i32 0, i32 2
  %568 = load ptr, ptr %567, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %48) #9
  %569 = lshr i16 %565, 8
  %570 = trunc i16 %569 to i8
  store i8 %570, ptr %48, align 1
  %571 = getelementptr inbounds i8, ptr %48, i32 1
  %572 = trunc i16 %565 to i8
  store i8 %572, ptr %571, align 1
  %573 = getelementptr inbounds i8, ptr %48, i32 2
  store i8 47, ptr %573, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #9
  %574 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 3, ptr %574, align 4, !annotation !8
  %575 = getelementptr inbounds %struct.stv_base, ptr %566, i32 0, i32 1
  %576 = load i8, ptr %575, align 4
  %577 = zext i8 %576 to i16
  store i16 %577, ptr %49, align 4
  %578 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %578, align 2
  %579 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %579, align 4
  %580 = call i32 @i2c_transfer(ptr noundef %568, ptr noundef nonnull %49, i32 noundef 1) #9
  %581 = icmp eq i32 %580, 1
  br i1 %581, label %589, label %582

582:                                              ; preds = %563
  %583 = zext i16 %565 to i32
  %584 = getelementptr inbounds %struct.i2c_adapter, ptr %568, i32 0, i32 9
  %585 = load ptr, ptr %78, align 4
  %586 = getelementptr inbounds %struct.stv_base, ptr %585, i32 0, i32 1
  %587 = load i8, ptr %586, align 4
  %588 = zext i8 %587 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %584, ptr noundef nonnull @.str.6, i32 noundef %588, i32 noundef %583, i32 noundef 47) #10
  br label %589

589:                                              ; preds = %582, %563
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %48) #9
  %590 = load i16, ptr %392, align 4
  %591 = add i16 %590, -3268
  %592 = load ptr, ptr %78, align 4
  %593 = getelementptr inbounds %struct.stv_base, ptr %592, i32 0, i32 2
  %594 = load ptr, ptr %593, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %46) #9
  %595 = lshr i16 %591, 8
  %596 = trunc i16 %595 to i8
  store i8 %596, ptr %46, align 1
  %597 = getelementptr inbounds i8, ptr %46, i32 1
  %598 = trunc i16 %591 to i8
  store i8 %598, ptr %597, align 1
  %599 = getelementptr inbounds i8, ptr %46, i32 2
  store i8 47, ptr %599, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %47) #9
  %600 = getelementptr inbounds i8, ptr %47, i32 4
  store i32 3, ptr %600, align 4, !annotation !8
  %601 = getelementptr inbounds %struct.stv_base, ptr %592, i32 0, i32 1
  %602 = load i8, ptr %601, align 4
  %603 = zext i8 %602 to i16
  store i16 %603, ptr %47, align 4
  %604 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %604, align 2
  %605 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %605, align 4
  %606 = call i32 @i2c_transfer(ptr noundef %594, ptr noundef nonnull %47, i32 noundef 1) #9
  %607 = icmp eq i32 %606, 1
  br i1 %607, label %615, label %608

608:                                              ; preds = %589
  %609 = zext i16 %591 to i32
  %610 = getelementptr inbounds %struct.i2c_adapter, ptr %594, i32 0, i32 9
  %611 = load ptr, ptr %78, align 4
  %612 = getelementptr inbounds %struct.stv_base, ptr %611, i32 0, i32 1
  %613 = load i8, ptr %612, align 4
  %614 = zext i8 %613 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %610, ptr noundef nonnull @.str.6, i32 noundef %614, i32 noundef %609, i32 noundef 47) #10
  br label %615

615:                                              ; preds = %608, %589
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %47) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %46) #9
  %616 = load i16, ptr %392, align 4
  %617 = add i16 %616, -3433
  %618 = load ptr, ptr %78, align 4
  %619 = getelementptr inbounds %struct.stv_base, ptr %618, i32 0, i32 2
  %620 = load ptr, ptr %619, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %44) #9
  %621 = lshr i16 %617, 8
  %622 = trunc i16 %621 to i8
  store i8 %622, ptr %44, align 1
  %623 = getelementptr inbounds i8, ptr %44, i32 1
  %624 = trunc i16 %617 to i8
  store i8 %624, ptr %623, align 1
  %625 = getelementptr inbounds i8, ptr %44, i32 2
  store i8 11, ptr %625, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #9
  %626 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 3, ptr %626, align 4, !annotation !8
  %627 = getelementptr inbounds %struct.stv_base, ptr %618, i32 0, i32 1
  %628 = load i8, ptr %627, align 4
  %629 = zext i8 %628 to i16
  store i16 %629, ptr %45, align 4
  %630 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %630, align 2
  %631 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %631, align 4
  %632 = call i32 @i2c_transfer(ptr noundef %620, ptr noundef nonnull %45, i32 noundef 1) #9
  %633 = icmp eq i32 %632, 1
  br i1 %633, label %641, label %634

634:                                              ; preds = %615
  %635 = zext i16 %617 to i32
  %636 = getelementptr inbounds %struct.i2c_adapter, ptr %620, i32 0, i32 9
  %637 = load ptr, ptr %78, align 4
  %638 = getelementptr inbounds %struct.stv_base, ptr %637, i32 0, i32 1
  %639 = load i8, ptr %638, align 4
  %640 = zext i8 %639 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %636, ptr noundef nonnull @.str.6, i32 noundef %640, i32 noundef %635, i32 noundef 11) #10
  br label %641

641:                                              ; preds = %634, %615
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %44) #9
  %642 = load i16, ptr %392, align 4
  %643 = add i16 %642, -3432
  %644 = load ptr, ptr %78, align 4
  %645 = getelementptr inbounds %struct.stv_base, ptr %644, i32 0, i32 2
  %646 = load ptr, ptr %645, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %42) #9
  %647 = lshr i16 %643, 8
  %648 = trunc i16 %647 to i8
  store i8 %648, ptr %42, align 1
  %649 = getelementptr inbounds i8, ptr %42, i32 1
  %650 = trunc i16 %643 to i8
  store i8 %650, ptr %649, align 1
  %651 = getelementptr inbounds i8, ptr %42, i32 2
  store i8 10, ptr %651, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #9
  %652 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 3, ptr %652, align 4, !annotation !8
  %653 = getelementptr inbounds %struct.stv_base, ptr %644, i32 0, i32 1
  %654 = load i8, ptr %653, align 4
  %655 = zext i8 %654 to i16
  store i16 %655, ptr %43, align 4
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %656, align 2
  %657 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %657, align 4
  %658 = call i32 @i2c_transfer(ptr noundef %646, ptr noundef nonnull %43, i32 noundef 1) #9
  %659 = icmp eq i32 %658, 1
  br i1 %659, label %667, label %660

660:                                              ; preds = %641
  %661 = zext i16 %643 to i32
  %662 = getelementptr inbounds %struct.i2c_adapter, ptr %646, i32 0, i32 9
  %663 = load ptr, ptr %78, align 4
  %664 = getelementptr inbounds %struct.stv_base, ptr %663, i32 0, i32 1
  %665 = load i8, ptr %664, align 4
  %666 = zext i8 %665 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %662, ptr noundef nonnull @.str.6, i32 noundef %666, i32 noundef %661, i32 noundef 10) #10
  br label %667

667:                                              ; preds = %660, %641
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %42) #9
  %668 = load i16, ptr %392, align 4
  %669 = add i16 %668, -3428
  %670 = load ptr, ptr %78, align 4
  %671 = getelementptr inbounds %struct.stv_base, ptr %670, i32 0, i32 2
  %672 = load ptr, ptr %671, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %40) #9
  %673 = lshr i16 %669, 8
  %674 = trunc i16 %673 to i8
  store i8 %674, ptr %40, align 1
  %675 = getelementptr inbounds i8, ptr %40, i32 1
  %676 = trunc i16 %669 to i8
  store i8 %676, ptr %675, align 1
  %677 = getelementptr inbounds i8, ptr %40, i32 2
  store i8 -124, ptr %677, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #9
  %678 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 3, ptr %678, align 4, !annotation !8
  %679 = getelementptr inbounds %struct.stv_base, ptr %670, i32 0, i32 1
  %680 = load i8, ptr %679, align 4
  %681 = zext i8 %680 to i16
  store i16 %681, ptr %41, align 4
  %682 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %682, align 2
  %683 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %683, align 4
  %684 = call i32 @i2c_transfer(ptr noundef %672, ptr noundef nonnull %41, i32 noundef 1) #9
  %685 = icmp eq i32 %684, 1
  br i1 %685, label %693, label %686

686:                                              ; preds = %667
  %687 = zext i16 %669 to i32
  %688 = getelementptr inbounds %struct.i2c_adapter, ptr %672, i32 0, i32 9
  %689 = load ptr, ptr %78, align 4
  %690 = getelementptr inbounds %struct.stv_base, ptr %689, i32 0, i32 1
  %691 = load i8, ptr %690, align 4
  %692 = zext i8 %691 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %688, ptr noundef nonnull @.str.6, i32 noundef %692, i32 noundef %687, i32 noundef 132) #10
  br label %693

693:                                              ; preds = %686, %667
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %40) #9
  %694 = load i16, ptr %392, align 4
  %695 = add i16 %694, -3427
  %696 = load ptr, ptr %78, align 4
  %697 = getelementptr inbounds %struct.stv_base, ptr %696, i32 0, i32 2
  %698 = load ptr, ptr %697, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %38) #9
  %699 = lshr i16 %695, 8
  %700 = trunc i16 %699 to i8
  store i8 %700, ptr %38, align 1
  %701 = getelementptr inbounds i8, ptr %38, i32 1
  %702 = trunc i16 %695 to i8
  store i8 %702, ptr %701, align 1
  %703 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 -124, ptr %703, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #9
  %704 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 3, ptr %704, align 4, !annotation !8
  %705 = getelementptr inbounds %struct.stv_base, ptr %696, i32 0, i32 1
  %706 = load i8, ptr %705, align 4
  %707 = zext i8 %706 to i16
  store i16 %707, ptr %39, align 4
  %708 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %708, align 2
  %709 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %709, align 4
  %710 = call i32 @i2c_transfer(ptr noundef %698, ptr noundef nonnull %39, i32 noundef 1) #9
  %711 = icmp eq i32 %710, 1
  br i1 %711, label %719, label %712

712:                                              ; preds = %693
  %713 = zext i16 %695 to i32
  %714 = getelementptr inbounds %struct.i2c_adapter, ptr %698, i32 0, i32 9
  %715 = load ptr, ptr %78, align 4
  %716 = getelementptr inbounds %struct.stv_base, ptr %715, i32 0, i32 1
  %717 = load i8, ptr %716, align 4
  %718 = zext i8 %717 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %714, ptr noundef nonnull @.str.6, i32 noundef %718, i32 noundef %713, i32 noundef 132) #10
  br label %719

719:                                              ; preds = %712, %693
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %38) #9
  %720 = load i16, ptr %392, align 4
  %721 = add i16 %720, -3522
  %722 = load ptr, ptr %78, align 4
  %723 = getelementptr inbounds %struct.stv_base, ptr %722, i32 0, i32 2
  %724 = load ptr, ptr %723, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %36) #9
  %725 = lshr i16 %721, 8
  %726 = trunc i16 %725 to i8
  store i8 %726, ptr %36, align 1
  %727 = getelementptr inbounds i8, ptr %36, i32 1
  %728 = trunc i16 %721 to i8
  store i8 %728, ptr %727, align 1
  %729 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 28, ptr %729, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #9
  %730 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 3, ptr %730, align 4, !annotation !8
  %731 = getelementptr inbounds %struct.stv_base, ptr %722, i32 0, i32 1
  %732 = load i8, ptr %731, align 4
  %733 = zext i8 %732 to i16
  store i16 %733, ptr %37, align 4
  %734 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %734, align 2
  %735 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %735, align 4
  %736 = call i32 @i2c_transfer(ptr noundef %724, ptr noundef nonnull %37, i32 noundef 1) #9
  %737 = icmp eq i32 %736, 1
  br i1 %737, label %745, label %738

738:                                              ; preds = %719
  %739 = zext i16 %721 to i32
  %740 = getelementptr inbounds %struct.i2c_adapter, ptr %724, i32 0, i32 9
  %741 = load ptr, ptr %78, align 4
  %742 = getelementptr inbounds %struct.stv_base, ptr %741, i32 0, i32 1
  %743 = load i8, ptr %742, align 4
  %744 = zext i8 %743 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %740, ptr noundef nonnull @.str.6, i32 noundef %744, i32 noundef %739, i32 noundef 28) #10
  br label %745

745:                                              ; preds = %738, %719
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %36) #9
  %746 = load i16, ptr %392, align 4
  %747 = add i16 %746, -3523
  %748 = load ptr, ptr %78, align 4
  %749 = getelementptr inbounds %struct.stv_base, ptr %748, i32 0, i32 2
  %750 = load ptr, ptr %749, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %34) #9
  %751 = lshr i16 %747, 8
  %752 = trunc i16 %751 to i8
  store i8 %752, ptr %34, align 1
  %753 = getelementptr inbounds i8, ptr %34, i32 1
  %754 = trunc i16 %747 to i8
  store i8 %754, ptr %753, align 1
  %755 = getelementptr inbounds i8, ptr %34, i32 2
  store i8 121, ptr %755, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #9
  %756 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 3, ptr %756, align 4, !annotation !8
  %757 = getelementptr inbounds %struct.stv_base, ptr %748, i32 0, i32 1
  %758 = load i8, ptr %757, align 4
  %759 = zext i8 %758 to i16
  store i16 %759, ptr %35, align 4
  %760 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %760, align 2
  %761 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %761, align 4
  %762 = call i32 @i2c_transfer(ptr noundef %750, ptr noundef nonnull %35, i32 noundef 1) #9
  %763 = icmp eq i32 %762, 1
  br i1 %763, label %771, label %764

764:                                              ; preds = %745
  %765 = zext i16 %747 to i32
  %766 = getelementptr inbounds %struct.i2c_adapter, ptr %750, i32 0, i32 9
  %767 = load ptr, ptr %78, align 4
  %768 = getelementptr inbounds %struct.stv_base, ptr %767, i32 0, i32 1
  %769 = load i8, ptr %768, align 4
  %770 = zext i8 %769 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %766, ptr noundef nonnull @.str.6, i32 noundef %770, i32 noundef %765, i32 noundef 121) #10
  br label %771

771:                                              ; preds = %764, %745
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %34) #9
  %772 = load i16, ptr %392, align 4
  %773 = add i16 %772, -3431
  %774 = load ptr, ptr %78, align 4
  %775 = getelementptr inbounds %struct.stv_base, ptr %774, i32 0, i32 2
  %776 = load ptr, ptr %775, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %32) #9
  %777 = lshr i16 %773, 8
  %778 = trunc i16 %777 to i8
  store i8 %778, ptr %32, align 1
  %779 = getelementptr inbounds i8, ptr %32, i32 1
  %780 = trunc i16 %773 to i8
  store i8 %780, ptr %779, align 1
  %781 = getelementptr inbounds i8, ptr %32, i32 2
  store i8 41, ptr %781, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #9
  %782 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 3, ptr %782, align 4, !annotation !8
  %783 = getelementptr inbounds %struct.stv_base, ptr %774, i32 0, i32 1
  %784 = load i8, ptr %783, align 4
  %785 = zext i8 %784 to i16
  store i16 %785, ptr %33, align 4
  %786 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %786, align 2
  %787 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %787, align 4
  %788 = call i32 @i2c_transfer(ptr noundef %776, ptr noundef nonnull %33, i32 noundef 1) #9
  %789 = icmp eq i32 %788, 1
  br i1 %789, label %797, label %790

790:                                              ; preds = %771
  %791 = zext i16 %773 to i32
  %792 = getelementptr inbounds %struct.i2c_adapter, ptr %776, i32 0, i32 9
  %793 = load ptr, ptr %78, align 4
  %794 = getelementptr inbounds %struct.stv_base, ptr %793, i32 0, i32 1
  %795 = load i8, ptr %794, align 4
  %796 = zext i8 %795 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %792, ptr noundef nonnull @.str.6, i32 noundef %796, i32 noundef %791, i32 noundef 41) #10
  br label %797

797:                                              ; preds = %790, %771
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %32) #9
  %798 = load i16, ptr %392, align 4
  %799 = add i16 %798, -3430
  %800 = load ptr, ptr %78, align 4
  %801 = getelementptr inbounds %struct.stv_base, ptr %800, i32 0, i32 2
  %802 = load ptr, ptr %801, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %30) #9
  %803 = lshr i16 %799, 8
  %804 = trunc i16 %803 to i8
  store i8 %804, ptr %30, align 1
  %805 = getelementptr inbounds i8, ptr %30, i32 1
  %806 = trunc i16 %799 to i8
  store i8 %806, ptr %805, align 1
  %807 = getelementptr inbounds i8, ptr %30, i32 2
  store i8 9, ptr %807, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #9
  %808 = getelementptr inbounds i8, ptr %31, i32 4
  store i32 3, ptr %808, align 4, !annotation !8
  %809 = getelementptr inbounds %struct.stv_base, ptr %800, i32 0, i32 1
  %810 = load i8, ptr %809, align 4
  %811 = zext i8 %810 to i16
  store i16 %811, ptr %31, align 4
  %812 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 1
  store i16 0, ptr %812, align 2
  %813 = getelementptr inbounds %struct.i2c_msg, ptr %31, i32 0, i32 3
  store ptr %30, ptr %813, align 4
  %814 = call i32 @i2c_transfer(ptr noundef %802, ptr noundef nonnull %31, i32 noundef 1) #9
  %815 = icmp eq i32 %814, 1
  br i1 %815, label %823, label %816

816:                                              ; preds = %797
  %817 = zext i16 %799 to i32
  %818 = getelementptr inbounds %struct.i2c_adapter, ptr %802, i32 0, i32 9
  %819 = load ptr, ptr %78, align 4
  %820 = getelementptr inbounds %struct.stv_base, ptr %819, i32 0, i32 1
  %821 = load i8, ptr %820, align 4
  %822 = zext i8 %821 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %818, ptr noundef nonnull @.str.6, i32 noundef %822, i32 noundef %817, i32 noundef 9) #10
  br label %823

823:                                              ; preds = %816, %797
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %30) #9
  %824 = load i16, ptr %392, align 4
  %825 = add i16 %824, -3426
  %826 = load ptr, ptr %78, align 4
  %827 = getelementptr inbounds %struct.stv_base, ptr %826, i32 0, i32 2
  %828 = load ptr, ptr %827, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %28) #9
  %829 = lshr i16 %825, 8
  %830 = trunc i16 %829 to i8
  store i8 %830, ptr %28, align 1
  %831 = getelementptr inbounds i8, ptr %28, i32 1
  %832 = trunc i16 %825 to i8
  store i8 %832, ptr %831, align 1
  %833 = getelementptr inbounds i8, ptr %28, i32 2
  store i8 -124, ptr %833, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #9
  %834 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 3, ptr %834, align 4, !annotation !8
  %835 = getelementptr inbounds %struct.stv_base, ptr %826, i32 0, i32 1
  %836 = load i8, ptr %835, align 4
  %837 = zext i8 %836 to i16
  store i16 %837, ptr %29, align 4
  %838 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %838, align 2
  %839 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr %28, ptr %839, align 4
  %840 = call i32 @i2c_transfer(ptr noundef %828, ptr noundef nonnull %29, i32 noundef 1) #9
  %841 = icmp eq i32 %840, 1
  br i1 %841, label %849, label %842

842:                                              ; preds = %823
  %843 = zext i16 %825 to i32
  %844 = getelementptr inbounds %struct.i2c_adapter, ptr %828, i32 0, i32 9
  %845 = load ptr, ptr %78, align 4
  %846 = getelementptr inbounds %struct.stv_base, ptr %845, i32 0, i32 1
  %847 = load i8, ptr %846, align 4
  %848 = zext i8 %847 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %844, ptr noundef nonnull @.str.6, i32 noundef %848, i32 noundef %843, i32 noundef 132) #10
  br label %849

849:                                              ; preds = %842, %823
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %28) #9
  %850 = load i16, ptr %392, align 4
  %851 = add i16 %850, -3425
  %852 = load ptr, ptr %78, align 4
  %853 = getelementptr inbounds %struct.stv_base, ptr %852, i32 0, i32 2
  %854 = load ptr, ptr %853, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %26) #9
  %855 = lshr i16 %851, 8
  %856 = trunc i16 %855 to i8
  store i8 %856, ptr %26, align 1
  %857 = getelementptr inbounds i8, ptr %26, i32 1
  %858 = trunc i16 %851 to i8
  store i8 %858, ptr %857, align 1
  %859 = getelementptr inbounds i8, ptr %26, i32 2
  store i8 -124, ptr %859, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  %860 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 3, ptr %860, align 4, !annotation !8
  %861 = getelementptr inbounds %struct.stv_base, ptr %852, i32 0, i32 1
  %862 = load i8, ptr %861, align 4
  %863 = zext i8 %862 to i16
  store i16 %863, ptr %27, align 4
  %864 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %864, align 2
  %865 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %865, align 4
  %866 = call i32 @i2c_transfer(ptr noundef %854, ptr noundef nonnull %27, i32 noundef 1) #9
  %867 = icmp eq i32 %866, 1
  br i1 %867, label %875, label %868

868:                                              ; preds = %849
  %869 = zext i16 %851 to i32
  %870 = getelementptr inbounds %struct.i2c_adapter, ptr %854, i32 0, i32 9
  %871 = load ptr, ptr %78, align 4
  %872 = getelementptr inbounds %struct.stv_base, ptr %871, i32 0, i32 1
  %873 = load i8, ptr %872, align 4
  %874 = zext i8 %873 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %870, ptr noundef nonnull @.str.6, i32 noundef %874, i32 noundef %869, i32 noundef 132) #10
  br label %875

875:                                              ; preds = %868, %849
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %26) #9
  %876 = load i32, ptr %126, align 4
  %877 = icmp eq i32 %876, 0
  %878 = select i1 %877, i8 8, i8 4
  %879 = load ptr, ptr %78, align 4
  %880 = getelementptr inbounds %struct.stv_base, ptr %879, i32 0, i32 2
  %881 = load ptr, ptr %880, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %24) #9
  store i8 -1, ptr %24, align 1
  %882 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 17, ptr %882, align 1
  %883 = getelementptr inbounds i8, ptr %24, i32 2
  store i8 %878, ptr %883, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  %884 = getelementptr inbounds i8, ptr %25, i32 4
  store i32 3, ptr %884, align 4, !annotation !8
  %885 = getelementptr inbounds %struct.stv_base, ptr %879, i32 0, i32 1
  %886 = load i8, ptr %885, align 4
  %887 = zext i8 %886 to i16
  store i16 %887, ptr %25, align 4
  %888 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %888, align 2
  %889 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %889, align 4
  %890 = call i32 @i2c_transfer(ptr noundef %881, ptr noundef nonnull %25, i32 noundef 1) #9
  %891 = icmp eq i32 %890, 1
  br i1 %891, label %899, label %892

892:                                              ; preds = %875
  %893 = getelementptr inbounds %struct.i2c_adapter, ptr %881, i32 0, i32 9
  %894 = load ptr, ptr %78, align 4
  %895 = getelementptr inbounds %struct.stv_base, ptr %894, i32 0, i32 1
  %896 = load i8, ptr %895, align 4
  %897 = zext i8 %896 to i32
  %898 = zext i8 %878 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %893, ptr noundef nonnull @.str.6, i32 noundef %897, i32 noundef 65297, i32 noundef %898) #10
  br label %899

899:                                              ; preds = %892, %875
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %24) #9
  %900 = load ptr, ptr %78, align 4
  %901 = getelementptr inbounds %struct.stv_base, ptr %900, i32 0, i32 2
  %902 = load ptr, ptr %901, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %22) #9
  store i8 -1, ptr %22, align 1
  %903 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 17, ptr %903, align 1
  %904 = getelementptr inbounds i8, ptr %22, i32 2
  store i8 0, ptr %904, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  %905 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 3, ptr %905, align 4, !annotation !8
  %906 = getelementptr inbounds %struct.stv_base, ptr %900, i32 0, i32 1
  %907 = load i8, ptr %906, align 4
  %908 = zext i8 %907 to i16
  store i16 %908, ptr %23, align 4
  %909 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %909, align 2
  %910 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %910, align 4
  %911 = call i32 @i2c_transfer(ptr noundef %902, ptr noundef nonnull %23, i32 noundef 1) #9
  %912 = icmp eq i32 %911, 1
  br i1 %912, label %919, label %913

913:                                              ; preds = %899
  %914 = getelementptr inbounds %struct.i2c_adapter, ptr %902, i32 0, i32 9
  %915 = load ptr, ptr %78, align 4
  %916 = getelementptr inbounds %struct.stv_base, ptr %915, i32 0, i32 1
  %917 = load i8, ptr %916, align 4
  %918 = zext i8 %917 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %914, ptr noundef nonnull @.str.6, i32 noundef %918, i32 noundef 65297, i32 noundef 0) #10
  br label %919

919:                                              ; preds = %913, %899
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %22) #9
  call fastcc void @set_vth_default(ptr noundef %78) #9
  %920 = load i16, ptr %392, align 4
  %921 = add i16 %920, -3562
  %922 = load ptr, ptr %78, align 4
  %923 = getelementptr inbounds %struct.stv_base, ptr %922, i32 0, i32 2
  %924 = load ptr, ptr %923, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %20) #9
  %925 = lshr i16 %921, 8
  %926 = trunc i16 %925 to i8
  store i8 %926, ptr %20, align 1
  %927 = getelementptr inbounds i8, ptr %20, i32 1
  %928 = trunc i16 %921 to i8
  store i8 %928, ptr %927, align 1
  %929 = getelementptr inbounds i8, ptr %20, i32 2
  store i8 31, ptr %929, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  %930 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 3, ptr %930, align 4, !annotation !8
  %931 = getelementptr inbounds %struct.stv_base, ptr %922, i32 0, i32 1
  %932 = load i8, ptr %931, align 4
  %933 = zext i8 %932 to i16
  store i16 %933, ptr %21, align 4
  %934 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %934, align 2
  %935 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %935, align 4
  %936 = call i32 @i2c_transfer(ptr noundef %924, ptr noundef nonnull %21, i32 noundef 1) #9
  %937 = icmp eq i32 %936, 1
  br i1 %937, label %945, label %938

938:                                              ; preds = %919
  %939 = zext i16 %921 to i32
  %940 = getelementptr inbounds %struct.i2c_adapter, ptr %924, i32 0, i32 9
  %941 = load ptr, ptr %78, align 4
  %942 = getelementptr inbounds %struct.stv_base, ptr %941, i32 0, i32 1
  %943 = load i8, ptr %942, align 4
  %944 = zext i8 %943 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %940, ptr noundef nonnull @.str.6, i32 noundef %944, i32 noundef %939, i32 noundef 31) #10
  br label %945

945:                                              ; preds = %938, %919
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %20) #9
  %946 = load i16, ptr %392, align 4
  %947 = add i16 %946, -3528
  %948 = load ptr, ptr %78, align 4
  %949 = getelementptr inbounds %struct.stv_base, ptr %948, i32 0, i32 2
  %950 = load ptr, ptr %949, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #9
  %951 = lshr i16 %947, 8
  %952 = trunc i16 %951 to i8
  store i8 %952, ptr %18, align 1
  %953 = getelementptr inbounds i8, ptr %18, i32 1
  %954 = trunc i16 %947 to i8
  store i8 %954, ptr %953, align 1
  %955 = getelementptr inbounds i8, ptr %18, i32 2
  store i8 70, ptr %955, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  %956 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 3, ptr %956, align 4, !annotation !8
  %957 = getelementptr inbounds %struct.stv_base, ptr %948, i32 0, i32 1
  %958 = load i8, ptr %957, align 4
  %959 = zext i8 %958 to i16
  store i16 %959, ptr %19, align 4
  %960 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %960, align 2
  %961 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %961, align 4
  %962 = call i32 @i2c_transfer(ptr noundef %950, ptr noundef nonnull %19, i32 noundef 1) #9
  %963 = icmp eq i32 %962, 1
  br i1 %963, label %971, label %964

964:                                              ; preds = %945
  %965 = zext i16 %947 to i32
  %966 = getelementptr inbounds %struct.i2c_adapter, ptr %950, i32 0, i32 9
  %967 = load ptr, ptr %78, align 4
  %968 = getelementptr inbounds %struct.stv_base, ptr %967, i32 0, i32 1
  %969 = load i8, ptr %968, align 4
  %970 = zext i8 %969 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %966, ptr noundef nonnull @.str.6, i32 noundef %970, i32 noundef %965, i32 noundef 70) #10
  br label %971

971:                                              ; preds = %964, %945
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #9
  %972 = load i32, ptr %85, align 4
  %973 = icmp ult i32 %972, 5000001
  %974 = getelementptr inbounds %struct.stv, ptr %78, i32 0, i32 10
  %975 = load i32, ptr %974, align 4
  %976 = sdiv i32 %975, 2000
  %977 = select i1 %973, i32 80, i32 1600
  %978 = add nsw i32 %976, %977
  %979 = shl i32 %978, 16
  %980 = load ptr, ptr %78, align 4
  %981 = getelementptr inbounds %struct.stv_base, ptr %980, i32 0, i32 7
  %982 = load i32, ptr %981, align 4
  %983 = udiv i32 %982, 1000
  %984 = udiv i32 %979, %983
  %985 = load i16, ptr %392, align 4
  %986 = add i16 %985, -3518
  %987 = lshr i32 %984, 8
  %988 = trunc i32 %987 to i8
  %989 = getelementptr inbounds %struct.stv_base, ptr %980, i32 0, i32 2
  %990 = load ptr, ptr %989, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #9
  %991 = lshr i16 %986, 8
  %992 = trunc i16 %991 to i8
  store i8 %992, ptr %16, align 1
  %993 = getelementptr inbounds i8, ptr %16, i32 1
  %994 = trunc i16 %986 to i8
  store i8 %994, ptr %993, align 1
  %995 = getelementptr inbounds i8, ptr %16, i32 2
  store i8 %988, ptr %995, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  %996 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 3, ptr %996, align 4, !annotation !8
  %997 = getelementptr inbounds %struct.stv_base, ptr %980, i32 0, i32 1
  %998 = load i8, ptr %997, align 4
  %999 = zext i8 %998 to i16
  store i16 %999, ptr %17, align 4
  %1000 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %1000, align 2
  %1001 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %1001, align 4
  %1002 = call i32 @i2c_transfer(ptr noundef %990, ptr noundef nonnull %17, i32 noundef 1) #9
  %1003 = icmp eq i32 %1002, 1
  br i1 %1003, label %1012, label %1004

1004:                                             ; preds = %971
  %1005 = zext i16 %986 to i32
  %1006 = getelementptr inbounds %struct.i2c_adapter, ptr %990, i32 0, i32 9
  %1007 = load ptr, ptr %78, align 4
  %1008 = getelementptr inbounds %struct.stv_base, ptr %1007, i32 0, i32 1
  %1009 = load i8, ptr %1008, align 4
  %1010 = zext i8 %1009 to i32
  %1011 = and i32 %987, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1006, ptr noundef nonnull @.str.6, i32 noundef %1010, i32 noundef %1005, i32 noundef %1011) #10
  br label %1012

1012:                                             ; preds = %1004, %971
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #9
  %1013 = load i16, ptr %392, align 4
  %1014 = add i16 %1013, -3517
  %1015 = trunc i32 %984 to i8
  %1016 = load ptr, ptr %78, align 4
  %1017 = getelementptr inbounds %struct.stv_base, ptr %1016, i32 0, i32 2
  %1018 = load ptr, ptr %1017, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %14) #9
  %1019 = lshr i16 %1014, 8
  %1020 = trunc i16 %1019 to i8
  store i8 %1020, ptr %14, align 1
  %1021 = getelementptr inbounds i8, ptr %14, i32 1
  %1022 = trunc i16 %1014 to i8
  store i8 %1022, ptr %1021, align 1
  %1023 = getelementptr inbounds i8, ptr %14, i32 2
  store i8 %1015, ptr %1023, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  %1024 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 3, ptr %1024, align 4, !annotation !8
  %1025 = getelementptr inbounds %struct.stv_base, ptr %1016, i32 0, i32 1
  %1026 = load i8, ptr %1025, align 4
  %1027 = zext i8 %1026 to i16
  store i16 %1027, ptr %15, align 4
  %1028 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %1028, align 2
  %1029 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %1029, align 4
  %1030 = call i32 @i2c_transfer(ptr noundef %1018, ptr noundef nonnull %15, i32 noundef 1) #9
  %1031 = icmp eq i32 %1030, 1
  br i1 %1031, label %1040, label %1032

1032:                                             ; preds = %1012
  %1033 = zext i16 %1014 to i32
  %1034 = getelementptr inbounds %struct.i2c_adapter, ptr %1018, i32 0, i32 9
  %1035 = load ptr, ptr %78, align 4
  %1036 = getelementptr inbounds %struct.stv_base, ptr %1035, i32 0, i32 1
  %1037 = load i8, ptr %1036, align 4
  %1038 = zext i8 %1037 to i32
  %1039 = and i32 %984, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1034, ptr noundef nonnull @.str.6, i32 noundef %1038, i32 noundef %1033, i32 noundef %1039) #10
  br label %1040

1040:                                             ; preds = %1032, %1012
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %14) #9
  %1041 = sub i32 0, %984
  %1042 = load i16, ptr %392, align 4
  %1043 = add i16 %1042, -3514
  %1044 = lshr i32 %1041, 8
  %1045 = trunc i32 %1044 to i8
  %1046 = load ptr, ptr %78, align 4
  %1047 = getelementptr inbounds %struct.stv_base, ptr %1046, i32 0, i32 2
  %1048 = load ptr, ptr %1047, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #9
  %1049 = lshr i16 %1043, 8
  %1050 = trunc i16 %1049 to i8
  store i8 %1050, ptr %12, align 1
  %1051 = getelementptr inbounds i8, ptr %12, i32 1
  %1052 = trunc i16 %1043 to i8
  store i8 %1052, ptr %1051, align 1
  %1053 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 %1045, ptr %1053, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %1054 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %1054, align 4, !annotation !8
  %1055 = getelementptr inbounds %struct.stv_base, ptr %1046, i32 0, i32 1
  %1056 = load i8, ptr %1055, align 4
  %1057 = zext i8 %1056 to i16
  store i16 %1057, ptr %13, align 4
  %1058 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %1058, align 2
  %1059 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %1059, align 4
  %1060 = call i32 @i2c_transfer(ptr noundef %1048, ptr noundef nonnull %13, i32 noundef 1) #9
  %1061 = icmp eq i32 %1060, 1
  br i1 %1061, label %1070, label %1062

1062:                                             ; preds = %1040
  %1063 = zext i16 %1043 to i32
  %1064 = getelementptr inbounds %struct.i2c_adapter, ptr %1048, i32 0, i32 9
  %1065 = load ptr, ptr %78, align 4
  %1066 = getelementptr inbounds %struct.stv_base, ptr %1065, i32 0, i32 1
  %1067 = load i8, ptr %1066, align 4
  %1068 = zext i8 %1067 to i32
  %1069 = and i32 %1044, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1064, ptr noundef nonnull @.str.6, i32 noundef %1068, i32 noundef %1063, i32 noundef %1069) #10
  br label %1070

1070:                                             ; preds = %1062, %1040
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #9
  %1071 = load i16, ptr %392, align 4
  %1072 = add i16 %1071, -3513
  %1073 = trunc i32 %1041 to i8
  %1074 = load ptr, ptr %78, align 4
  %1075 = getelementptr inbounds %struct.stv_base, ptr %1074, i32 0, i32 2
  %1076 = load ptr, ptr %1075, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #9
  %1077 = lshr i16 %1072, 8
  %1078 = trunc i16 %1077 to i8
  store i8 %1078, ptr %10, align 1
  %1079 = getelementptr inbounds i8, ptr %10, i32 1
  %1080 = trunc i16 %1072 to i8
  store i8 %1080, ptr %1079, align 1
  %1081 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 %1073, ptr %1081, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %1082 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %1082, align 4, !annotation !8
  %1083 = getelementptr inbounds %struct.stv_base, ptr %1074, i32 0, i32 1
  %1084 = load i8, ptr %1083, align 4
  %1085 = zext i8 %1084 to i16
  store i16 %1085, ptr %11, align 4
  %1086 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %1086, align 2
  %1087 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %1087, align 4
  %1088 = call i32 @i2c_transfer(ptr noundef %1076, ptr noundef nonnull %11, i32 noundef 1) #9
  %1089 = icmp eq i32 %1088, 1
  br i1 %1089, label %1098, label %1090

1090:                                             ; preds = %1070
  %1091 = zext i16 %1072 to i32
  %1092 = getelementptr inbounds %struct.i2c_adapter, ptr %1076, i32 0, i32 9
  %1093 = load ptr, ptr %78, align 4
  %1094 = getelementptr inbounds %struct.stv_base, ptr %1093, i32 0, i32 1
  %1095 = load i8, ptr %1094, align 4
  %1096 = zext i8 %1095 to i32
  %1097 = and i32 %1041, 255
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1092, ptr noundef nonnull @.str.6, i32 noundef %1096, i32 noundef %1091, i32 noundef %1097) #10
  br label %1098

1098:                                             ; preds = %1090, %1070
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #9
  %1099 = load i16, ptr %392, align 4
  %1100 = add i16 %1099, -3512
  %1101 = load ptr, ptr %78, align 4
  %1102 = getelementptr inbounds %struct.stv_base, ptr %1101, i32 0, i32 2
  %1103 = load ptr, ptr %1102, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #9
  %1104 = lshr i16 %1100, 8
  %1105 = trunc i16 %1104 to i8
  store i8 %1105, ptr %8, align 1
  %1106 = getelementptr inbounds i8, ptr %8, i32 1
  %1107 = trunc i16 %1100 to i8
  store i8 %1107, ptr %1106, align 1
  %1108 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 0, ptr %1108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %1109 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %1109, align 4, !annotation !8
  %1110 = getelementptr inbounds %struct.stv_base, ptr %1101, i32 0, i32 1
  %1111 = load i8, ptr %1110, align 4
  %1112 = zext i8 %1111 to i16
  store i16 %1112, ptr %9, align 4
  %1113 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %1113, align 2
  %1114 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %1114, align 4
  %1115 = call i32 @i2c_transfer(ptr noundef %1103, ptr noundef nonnull %9, i32 noundef 1) #9
  %1116 = icmp eq i32 %1115, 1
  br i1 %1116, label %1124, label %1117

1117:                                             ; preds = %1098
  %1118 = zext i16 %1100 to i32
  %1119 = getelementptr inbounds %struct.i2c_adapter, ptr %1103, i32 0, i32 9
  %1120 = load ptr, ptr %78, align 4
  %1121 = getelementptr inbounds %struct.stv_base, ptr %1120, i32 0, i32 1
  %1122 = load i8, ptr %1121, align 4
  %1123 = zext i8 %1122 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1119, ptr noundef nonnull @.str.6, i32 noundef %1123, i32 noundef %1118, i32 noundef 0) #10
  br label %1124

1124:                                             ; preds = %1117, %1098
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #9
  %1125 = load i16, ptr %392, align 4
  %1126 = add i16 %1125, -3511
  %1127 = load ptr, ptr %78, align 4
  %1128 = getelementptr inbounds %struct.stv_base, ptr %1127, i32 0, i32 2
  %1129 = load ptr, ptr %1128, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  %1130 = lshr i16 %1126, 8
  %1131 = trunc i16 %1130 to i8
  store i8 %1131, ptr %6, align 1
  %1132 = getelementptr inbounds i8, ptr %6, i32 1
  %1133 = trunc i16 %1126 to i8
  store i8 %1133, ptr %1132, align 1
  %1134 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 0, ptr %1134, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %1135 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %1135, align 4, !annotation !8
  %1136 = getelementptr inbounds %struct.stv_base, ptr %1127, i32 0, i32 1
  %1137 = load i8, ptr %1136, align 4
  %1138 = zext i8 %1137 to i16
  store i16 %1138, ptr %7, align 4
  %1139 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %1139, align 2
  %1140 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %1140, align 4
  %1141 = call i32 @i2c_transfer(ptr noundef %1129, ptr noundef nonnull %7, i32 noundef 1) #9
  %1142 = icmp eq i32 %1141, 1
  br i1 %1142, label %1150, label %1143

1143:                                             ; preds = %1124
  %1144 = zext i16 %1126 to i32
  %1145 = getelementptr inbounds %struct.i2c_adapter, ptr %1129, i32 0, i32 9
  %1146 = load ptr, ptr %78, align 4
  %1147 = getelementptr inbounds %struct.stv_base, ptr %1146, i32 0, i32 1
  %1148 = load i8, ptr %1147, align 4
  %1149 = zext i8 %1148 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1145, ptr noundef nonnull @.str.6, i32 noundef %1149, i32 noundef %1144, i32 noundef 0) #10
  br label %1150

1150:                                             ; preds = %1143, %1124
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  %1151 = load i16, ptr %392, align 4
  %1152 = add i16 %1151, -3562
  %1153 = load ptr, ptr %78, align 4
  %1154 = getelementptr inbounds %struct.stv_base, ptr %1153, i32 0, i32 2
  %1155 = load ptr, ptr %1154, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  %1156 = lshr i16 %1152, 8
  %1157 = trunc i16 %1156 to i8
  store i8 %1157, ptr %4, align 1
  %1158 = getelementptr inbounds i8, ptr %4, i32 1
  %1159 = trunc i16 %1152 to i8
  store i8 %1159, ptr %1158, align 1
  %1160 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 31, ptr %1160, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %1161 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %1161, align 4, !annotation !8
  %1162 = getelementptr inbounds %struct.stv_base, ptr %1153, i32 0, i32 1
  %1163 = load i8, ptr %1162, align 4
  %1164 = zext i8 %1163 to i16
  store i16 %1164, ptr %5, align 4
  %1165 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %1165, align 2
  %1166 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %1166, align 4
  %1167 = call i32 @i2c_transfer(ptr noundef %1155, ptr noundef nonnull %5, i32 noundef 1) #9
  %1168 = icmp eq i32 %1167, 1
  br i1 %1168, label %1176, label %1169

1169:                                             ; preds = %1150
  %1170 = zext i16 %1152 to i32
  %1171 = getelementptr inbounds %struct.i2c_adapter, ptr %1155, i32 0, i32 9
  %1172 = load ptr, ptr %78, align 4
  %1173 = getelementptr inbounds %struct.stv_base, ptr %1172, i32 0, i32 1
  %1174 = load i8, ptr %1173, align 4
  %1175 = zext i8 %1174 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1171, ptr noundef nonnull @.str.6, i32 noundef %1175, i32 noundef %1170, i32 noundef 31) #10
  br label %1176

1176:                                             ; preds = %1169, %1150
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  %1177 = load i16, ptr %392, align 4
  %1178 = add i16 %1177, -3562
  %1179 = load ptr, ptr %78, align 4
  %1180 = getelementptr inbounds %struct.stv_base, ptr %1179, i32 0, i32 2
  %1181 = load ptr, ptr %1180, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  %1182 = lshr i16 %1178, 8
  %1183 = trunc i16 %1182 to i8
  store i8 %1183, ptr %2, align 1
  %1184 = getelementptr inbounds i8, ptr %2, i32 1
  %1185 = trunc i16 %1178 to i8
  store i8 %1185, ptr %1184, align 1
  %1186 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 21, ptr %1186, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %1187 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %1187, align 4, !annotation !8
  %1188 = getelementptr inbounds %struct.stv_base, ptr %1179, i32 0, i32 1
  %1189 = load i8, ptr %1188, align 4
  %1190 = zext i8 %1189 to i16
  store i16 %1190, ptr %3, align 4
  %1191 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %1191, align 2
  %1192 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %1192, align 4
  %1193 = call i32 @i2c_transfer(ptr noundef %1181, ptr noundef nonnull %3, i32 noundef 1) #9
  %1194 = icmp eq i32 %1193, 1
  br i1 %1194, label %1202, label %1195

1195:                                             ; preds = %1176
  %1196 = zext i16 %1178 to i32
  %1197 = getelementptr inbounds %struct.i2c_adapter, ptr %1181, i32 0, i32 9
  %1198 = load ptr, ptr %78, align 4
  %1199 = getelementptr inbounds %struct.stv_base, ptr %1198, i32 0, i32 1
  %1200 = load i8, ptr %1199, align 4
  %1201 = zext i8 %1200 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1197, ptr noundef nonnull @.str.6, i32 noundef %1201, i32 noundef %1196, i32 noundef 21) #10
  br label %1202

1202:                                             ; preds = %1195, %1176
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  %1203 = load i32, ptr %93, align 4
  %1204 = add i32 %1203, 200
  store i32 %1204, ptr %93, align 4
  store i32 1, ptr %94, align 4
  br label %1205

1205:                                             ; preds = %1202, %84
  %1206 = phi i32 [ 0, %1202 ], [ -22, %84 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %76) #9
  ret i32 %1206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x %struct.i2c_msg], align 4
  %15 = alloca [2 x i8], align 2
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca [2 x i8], align 2
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca [2 x %struct.i2c_msg], align 4
  %28 = alloca i8, align 1
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %28) #9
  store i8 0, ptr %28, align 1, !annotation !8
  %31 = getelementptr inbounds %struct.stv, ptr %30, i32 0, i32 13
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %116 [
    i32 2, label %33
    i32 1, label %74
  ]

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.stv, ptr %30, i32 0, i32 3
  %35 = load i16, ptr %34, align 4
  %36 = add i16 %35, -3567
  %37 = load ptr, ptr %30, align 4
  %38 = getelementptr inbounds %struct.stv_base, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.stv_base, ptr %37, i32 0, i32 1
  %41 = load i8, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  %42 = lshr i16 %36, 8
  %43 = trunc i16 %42 to i8
  store i8 %43, ptr %26, align 2
  %44 = getelementptr inbounds i8, ptr %26, i32 1
  %45 = trunc i16 %36 to i8
  store i8 %45, ptr %44, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %27) #9
  %46 = getelementptr inbounds i8, ptr %27, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %46, i8 0, i32 16, i1 false) #9, !annotation !8
  %47 = zext i8 %41 to i16
  store i16 %47, ptr %27, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %48, align 2
  store i16 2, ptr %46, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %49, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1
  store i16 %47, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 1
  store i16 1, ptr %51, align 2
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 2
  store i16 1, ptr %52, align 4
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 1, i32 3
  store ptr %28, ptr %53, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %27, i32 noundef 2) #9
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %60, label %56

56:                                               ; preds = %33
  %57 = zext i16 %36 to i32
  %58 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %59 = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.5, i32 noundef %59, i32 noundef %57) #10
  br label %60

60:                                               ; preds = %56, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  %61 = load i8, ptr %28, align 1
  %62 = zext i8 %61 to i32
  %63 = lshr i32 %62, 2
  %64 = and i32 %63, 31
  %65 = and i32 %62, 1
  %66 = xor i32 %65, 1
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 13
  store i32 %66, ptr %67, align 4
  %68 = getelementptr [32 x i32], ptr @__const.get_frontend.modcod2mod, i32 0, i32 %64
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %69, ptr %70, align 4
  %71 = getelementptr [32 x i32], ptr @__const.get_frontend.modcod2fec, i32 0, i32 %64
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %72, ptr %73, align 4
  br label %114

74:                                               ; preds = %2
  %75 = getelementptr inbounds %struct.stv, ptr %30, i32 0, i32 3
  %76 = load i16, ptr %75, align 4
  %77 = add i16 %76, -3270
  %78 = load ptr, ptr %30, align 4
  %79 = getelementptr inbounds %struct.stv_base, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.stv_base, ptr %78, i32 0, i32 1
  %82 = load i8, ptr %81, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  %83 = lshr i16 %77, 8
  %84 = trunc i16 %83 to i8
  store i8 %84, ptr %24, align 2
  %85 = getelementptr inbounds i8, ptr %24, i32 1
  %86 = trunc i16 %77 to i8
  store i8 %86, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #9
  %87 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %87, i8 0, i32 16, i1 false) #9, !annotation !8
  %88 = zext i8 %82 to i16
  store i16 %88, ptr %25, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %89, align 2
  store i16 2, ptr %87, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %90, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  store i16 %88, ptr %91, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  store i16 1, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  store i16 1, ptr %93, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  store ptr %28, ptr %94, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %25, i32 noundef 2) #9
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %101, label %97

97:                                               ; preds = %74
  %98 = zext i16 %77 to i32
  %99 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9
  %100 = zext i8 %82 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %99, ptr noundef nonnull @.str.5, i32 noundef %100, i32 noundef %98) #10
  br label %101

101:                                              ; preds = %97, %74
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  %102 = load i8, ptr %28, align 1
  %103 = and i8 %102, 31
  %104 = zext i8 %103 to i32
  switch i32 %104, label %109 [
    i32 13, label %110
    i32 18, label %105
    i32 21, label %106
    i32 24, label %107
    i32 26, label %108
  ]

105:                                              ; preds = %101
  br label %110

106:                                              ; preds = %101
  br label %110

107:                                              ; preds = %101
  br label %110

108:                                              ; preds = %101
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %108, %107, %106, %105, %101
  %111 = phi i32 [ 0, %109 ], [ 7, %108 ], [ 5, %107 ], [ 3, %106 ], [ 2, %105 ], [ 1, %101 ]
  %112 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 5
  store i32 %111, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 14
  store i32 0, ptr %113, align 4
  br label %114

114:                                              ; preds = %110, %60
  %115 = load i32, ptr %31, align 4
  br label %116

116:                                              ; preds = %114, %2
  %117 = phi i32 [ %115, %114 ], [ %32, %2 ]
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %351, label %119

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #9
  store i8 0, ptr %17, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #9
  store i8 0, ptr %18, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #9
  store i8 0, ptr %19, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #9
  store i8 0, ptr %20, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #9
  store i8 0, ptr %21, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #9
  store i8 0, ptr %22, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23) #9
  store i8 0, ptr %23, align 1, !annotation !8
  %120 = getelementptr inbounds %struct.stv, ptr %30, i32 0, i32 11
  %121 = load i32, ptr %120, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %348, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.stv, ptr %30, i32 0, i32 3
  %125 = load i16, ptr %124, align 4
  %126 = add i16 %125, -3484
  %127 = load ptr, ptr %30, align 4
  %128 = getelementptr inbounds %struct.stv_base, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.stv_base, ptr %127, i32 0, i32 1
  %131 = load i8, ptr %130, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #9
  %132 = lshr i16 %126, 8
  %133 = trunc i16 %132 to i8
  store i8 %133, ptr %15, align 2
  %134 = getelementptr inbounds i8, ptr %15, i32 1
  %135 = trunc i16 %126 to i8
  store i8 %135, ptr %134, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #9
  %136 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %136, i8 0, i32 16, i1 false) #9, !annotation !8
  %137 = zext i8 %131 to i16
  store i16 %137, ptr %16, align 4
  %138 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %138, align 2
  store i16 2, ptr %136, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %15, ptr %139, align 4
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  store i16 %137, ptr %140, align 4
  %141 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %141, align 2
  %142 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %142, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr %20, ptr %143, align 4
  %144 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %16, i32 noundef 2) #9
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %150, label %146

146:                                              ; preds = %123
  %147 = zext i16 %126 to i32
  %148 = getelementptr inbounds %struct.i2c_adapter, ptr %129, i32 0, i32 9
  %149 = zext i8 %131 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %148, ptr noundef nonnull @.str.5, i32 noundef %149, i32 noundef %147) #10
  br label %150

150:                                              ; preds = %146, %123
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #9
  %151 = load i16, ptr %124, align 4
  %152 = add i16 %151, -3483
  %153 = load ptr, ptr %30, align 4
  %154 = getelementptr inbounds %struct.stv_base, ptr %153, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.stv_base, ptr %153, i32 0, i32 1
  %157 = load i8, ptr %156, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #9
  %158 = lshr i16 %152, 8
  %159 = trunc i16 %158 to i8
  store i8 %159, ptr %13, align 2
  %160 = getelementptr inbounds i8, ptr %13, i32 1
  %161 = trunc i16 %152 to i8
  store i8 %161, ptr %160, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #9
  %162 = getelementptr inbounds i8, ptr %14, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %162, i8 0, i32 16, i1 false) #9, !annotation !8
  %163 = zext i8 %157 to i16
  store i16 %163, ptr %14, align 4
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %164, align 2
  store i16 2, ptr %162, align 4
  %165 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr %13, ptr %165, align 4
  %166 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1
  store i16 %163, ptr %166, align 4
  %167 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 1
  store i16 1, ptr %167, align 2
  %168 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 2
  store i16 1, ptr %168, align 4
  %169 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 1, i32 3
  store ptr %19, ptr %169, align 4
  %170 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %14, i32 noundef 2) #9
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %176, label %172

172:                                              ; preds = %150
  %173 = zext i16 %152 to i32
  %174 = getelementptr inbounds %struct.i2c_adapter, ptr %155, i32 0, i32 9
  %175 = zext i8 %157 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %174, ptr noundef nonnull @.str.5, i32 noundef %175, i32 noundef %173) #10
  br label %176

176:                                              ; preds = %172, %150
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #9
  %177 = load i16, ptr %124, align 4
  %178 = add i16 %177, -3482
  %179 = load ptr, ptr %30, align 4
  %180 = getelementptr inbounds %struct.stv_base, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.stv_base, ptr %179, i32 0, i32 1
  %183 = load i8, ptr %182, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  %184 = lshr i16 %178, 8
  %185 = trunc i16 %184 to i8
  store i8 %185, ptr %11, align 2
  %186 = getelementptr inbounds i8, ptr %11, i32 1
  %187 = trunc i16 %178 to i8
  store i8 %187, ptr %186, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #9
  %188 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %188, i8 0, i32 16, i1 false) #9, !annotation !8
  %189 = zext i8 %183 to i16
  store i16 %189, ptr %12, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %190, align 2
  store i16 2, ptr %188, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %191, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %189, ptr %192, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %193, align 2
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %194, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %18, ptr %195, align 4
  %196 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %12, i32 noundef 2) #9
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %202, label %198

198:                                              ; preds = %176
  %199 = zext i16 %178 to i32
  %200 = getelementptr inbounds %struct.i2c_adapter, ptr %181, i32 0, i32 9
  %201 = zext i8 %183 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %200, ptr noundef nonnull @.str.5, i32 noundef %201, i32 noundef %199) #10
  br label %202

202:                                              ; preds = %198, %176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  %203 = load i16, ptr %124, align 4
  %204 = add i16 %203, -3481
  %205 = load ptr, ptr %30, align 4
  %206 = getelementptr inbounds %struct.stv_base, ptr %205, i32 0, i32 2
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.stv_base, ptr %205, i32 0, i32 1
  %209 = load i8, ptr %208, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #9
  %210 = lshr i16 %204, 8
  %211 = trunc i16 %210 to i8
  store i8 %211, ptr %9, align 2
  %212 = getelementptr inbounds i8, ptr %9, i32 1
  %213 = trunc i16 %204 to i8
  store i8 %213, ptr %212, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %214 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %214, i8 0, i32 16, i1 false) #9, !annotation !8
  %215 = zext i8 %209 to i16
  store i16 %215, ptr %10, align 4
  %216 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %216, align 2
  store i16 2, ptr %214, align 4
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %217, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %215, ptr %218, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %219, align 2
  %220 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %220, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %17, ptr %221, align 4
  %222 = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %10, i32 noundef 2) #9
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %228, label %224

224:                                              ; preds = %202
  %225 = zext i16 %204 to i32
  %226 = getelementptr inbounds %struct.i2c_adapter, ptr %207, i32 0, i32 9
  %227 = zext i8 %209 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %226, ptr noundef nonnull @.str.5, i32 noundef %227, i32 noundef %225) #10
  br label %228

228:                                              ; preds = %224, %202
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #9
  %229 = load i16, ptr %124, align 4
  %230 = add i16 %229, -3480
  %231 = load ptr, ptr %30, align 4
  %232 = getelementptr inbounds %struct.stv_base, ptr %231, i32 0, i32 2
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.stv_base, ptr %231, i32 0, i32 1
  %235 = load i8, ptr %234, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  %236 = lshr i16 %230, 8
  %237 = trunc i16 %236 to i8
  store i8 %237, ptr %7, align 2
  %238 = getelementptr inbounds i8, ptr %7, i32 1
  %239 = trunc i16 %230 to i8
  store i8 %239, ptr %238, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %240 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %240, i8 0, i32 16, i1 false) #9, !annotation !8
  %241 = zext i8 %235 to i16
  store i16 %241, ptr %8, align 4
  %242 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %242, align 2
  store i16 2, ptr %240, align 4
  %243 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %243, align 4
  %244 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %241, ptr %244, align 4
  %245 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %245, align 2
  %246 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %246, align 4
  %247 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %23, ptr %247, align 4
  %248 = call i32 @i2c_transfer(ptr noundef %233, ptr noundef nonnull %8, i32 noundef 2) #9
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %254, label %250

250:                                              ; preds = %228
  %251 = zext i16 %230 to i32
  %252 = getelementptr inbounds %struct.i2c_adapter, ptr %233, i32 0, i32 9
  %253 = zext i8 %235 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %252, ptr noundef nonnull @.str.5, i32 noundef %253, i32 noundef %251) #10
  br label %254

254:                                              ; preds = %250, %228
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  %255 = load i16, ptr %124, align 4
  %256 = add i16 %255, -3479
  %257 = load ptr, ptr %30, align 4
  %258 = getelementptr inbounds %struct.stv_base, ptr %257, i32 0, i32 2
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.stv_base, ptr %257, i32 0, i32 1
  %261 = load i8, ptr %260, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  %262 = lshr i16 %256, 8
  %263 = trunc i16 %262 to i8
  store i8 %263, ptr %5, align 2
  %264 = getelementptr inbounds i8, ptr %5, i32 1
  %265 = trunc i16 %256 to i8
  store i8 %265, ptr %264, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %266 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %266, i8 0, i32 16, i1 false) #9, !annotation !8
  %267 = zext i8 %261 to i16
  store i16 %267, ptr %6, align 4
  %268 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %268, align 2
  store i16 2, ptr %266, align 4
  %269 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %269, align 4
  %270 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %267, ptr %270, align 4
  %271 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %271, align 2
  %272 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %272, align 4
  %273 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %22, ptr %273, align 4
  %274 = call i32 @i2c_transfer(ptr noundef %259, ptr noundef nonnull %6, i32 noundef 2) #9
  %275 = icmp eq i32 %274, 2
  br i1 %275, label %280, label %276

276:                                              ; preds = %254
  %277 = zext i16 %256 to i32
  %278 = getelementptr inbounds %struct.i2c_adapter, ptr %259, i32 0, i32 9
  %279 = zext i8 %261 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %278, ptr noundef nonnull @.str.5, i32 noundef %279, i32 noundef %277) #10
  br label %280

280:                                              ; preds = %276, %254
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  %281 = load i16, ptr %124, align 4
  %282 = add i16 %281, -3478
  %283 = load ptr, ptr %30, align 4
  %284 = getelementptr inbounds %struct.stv_base, ptr %283, i32 0, i32 2
  %285 = load ptr, ptr %284, align 4
  %286 = getelementptr inbounds %struct.stv_base, ptr %283, i32 0, i32 1
  %287 = load i8, ptr %286, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  %288 = lshr i16 %282, 8
  %289 = trunc i16 %288 to i8
  store i8 %289, ptr %3, align 2
  %290 = getelementptr inbounds i8, ptr %3, i32 1
  %291 = trunc i16 %282 to i8
  store i8 %291, ptr %290, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %292 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %292, i8 0, i32 16, i1 false) #9, !annotation !8
  %293 = zext i8 %287 to i16
  store i16 %293, ptr %4, align 4
  %294 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %294, align 2
  store i16 2, ptr %292, align 4
  %295 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %295, align 4
  %296 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %293, ptr %296, align 4
  %297 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %297, align 2
  %298 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %298, align 4
  %299 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %21, ptr %299, align 4
  %300 = call i32 @i2c_transfer(ptr noundef %285, ptr noundef nonnull %4, i32 noundef 2) #9
  %301 = icmp eq i32 %300, 2
  br i1 %301, label %306, label %302

302:                                              ; preds = %280
  %303 = zext i16 %282 to i32
  %304 = getelementptr inbounds %struct.i2c_adapter, ptr %285, i32 0, i32 9
  %305 = zext i8 %287 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %304, ptr noundef nonnull @.str.5, i32 noundef %305, i32 noundef %303) #10
  br label %306

306:                                              ; preds = %302, %280
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  %307 = load i8, ptr %20, align 1
  %308 = zext i8 %307 to i32
  %309 = shl nuw i32 %308, 24
  %310 = load i8, ptr %19, align 1
  %311 = zext i8 %310 to i32
  %312 = shl nuw nsw i32 %311, 16
  %313 = or i32 %312, %309
  %314 = load i8, ptr %18, align 1
  %315 = zext i8 %314 to i32
  %316 = shl nuw nsw i32 %315, 8
  %317 = or i32 %313, %316
  %318 = load i8, ptr %17, align 1
  %319 = zext i8 %318 to i32
  %320 = or i32 %317, %319
  %321 = load i8, ptr %23, align 1
  %322 = zext i8 %321 to i32
  %323 = shl nuw nsw i32 %322, 16
  %324 = load i8, ptr %22, align 1
  %325 = zext i8 %324 to i32
  %326 = shl nuw nsw i32 %325, 8
  %327 = or i32 %326, %323
  %328 = load i8, ptr %21, align 1
  %329 = zext i8 %328 to i32
  %330 = or i32 %327, %329
  %331 = and i32 %322, 128
  %332 = icmp eq i32 %331, 0
  %333 = or i32 %330, -16777216
  %334 = select i1 %332, i32 %330, i32 %333
  %335 = zext i32 %320 to i64
  %336 = load ptr, ptr %30, align 4
  %337 = getelementptr inbounds %struct.stv_base, ptr %336, i32 0, i32 7
  %338 = load i32, ptr %337, align 4
  %339 = zext i32 %338 to i64
  %340 = mul nuw i64 %339, %335
  %341 = lshr i64 %340, 32
  %342 = trunc i64 %341 to i32
  %343 = sext i32 %334 to i64
  %344 = mul nsw i64 %341, %343
  %345 = lshr i64 %344, 29
  %346 = trunc i64 %345 to i32
  %347 = add i32 %346, %342
  br label %348

348:                                              ; preds = %306, %119
  %349 = phi i32 [ 0, %119 ], [ %347, %306 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #9
  %350 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 10
  store i32 %349, ptr %350, align 4
  br label %351

351:                                              ; preds = %348, %116
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %28) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = alloca [2 x i8], align 2
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [3 x i8], align 1
  %17 = alloca [2 x i8], align 2
  %18 = alloca [2 x %struct.i2c_msg], align 4
  %19 = alloca [2 x i8], align 2
  %20 = alloca [2 x %struct.i2c_msg], align 4
  %21 = alloca [2 x i8], align 2
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca [2 x %struct.i2c_msg], align 4
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca [2 x i8], align 2
  %28 = alloca [2 x %struct.i2c_msg], align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x %struct.i2c_msg], align 4
  %31 = alloca [2 x i8], align 2
  %32 = alloca [2 x i8], align 2
  %33 = alloca [2 x %struct.i2c_msg], align 4
  %34 = alloca [3 x i8], align 1
  %35 = alloca %struct.i2c_msg, align 4
  %36 = alloca [3 x i8], align 1
  %37 = alloca %struct.i2c_msg, align 4
  %38 = alloca [3 x i8], align 1
  %39 = alloca %struct.i2c_msg, align 4
  %40 = alloca [3 x i8], align 1
  %41 = alloca %struct.i2c_msg, align 4
  %42 = alloca [3 x i8], align 1
  %43 = alloca %struct.i2c_msg, align 4
  %44 = alloca [3 x i8], align 1
  %45 = alloca %struct.i2c_msg, align 4
  %46 = alloca [2 x i8], align 2
  %47 = alloca [2 x %struct.i2c_msg], align 4
  %48 = alloca [3 x i8], align 1
  %49 = alloca %struct.i2c_msg, align 4
  %50 = alloca [2 x i8], align 2
  %51 = alloca [2 x %struct.i2c_msg], align 4
  %52 = alloca [2 x i8], align 2
  %53 = alloca [2 x i8], align 2
  %54 = alloca [2 x %struct.i2c_msg], align 4
  %55 = alloca [2 x i8], align 2
  %56 = alloca [2 x %struct.i2c_msg], align 4
  %57 = alloca [3 x i8], align 1
  %58 = alloca %struct.i2c_msg, align 4
  %59 = alloca [3 x i8], align 1
  %60 = alloca %struct.i2c_msg, align 4
  %61 = alloca [3 x i8], align 1
  %62 = alloca %struct.i2c_msg, align 4
  %63 = alloca [3 x i8], align 1
  %64 = alloca %struct.i2c_msg, align 4
  %65 = alloca [3 x i8], align 1
  %66 = alloca %struct.i2c_msg, align 4
  %67 = alloca [3 x i8], align 1
  %68 = alloca %struct.i2c_msg, align 4
  %69 = alloca [3 x i8], align 1
  %70 = alloca %struct.i2c_msg, align 4
  %71 = alloca [3 x i8], align 1
  %72 = alloca %struct.i2c_msg, align 4
  %73 = alloca [3 x i8], align 1
  %74 = alloca %struct.i2c_msg, align 4
  %75 = alloca [2 x i8], align 2
  %76 = alloca [2 x %struct.i2c_msg], align 4
  %77 = alloca i8, align 1
  %78 = alloca [2 x i8], align 2
  %79 = alloca [2 x %struct.i2c_msg], align 4
  %80 = alloca [2 x i8], align 2
  %81 = alloca [2 x %struct.i2c_msg], align 4
  %82 = alloca i8, align 1
  %83 = alloca [3 x i8], align 1
  %84 = alloca %struct.i2c_msg, align 4
  %85 = alloca [3 x i8], align 1
  %86 = alloca %struct.i2c_msg, align 4
  %87 = alloca [3 x i8], align 1
  %88 = alloca %struct.i2c_msg, align 4
  %89 = alloca [3 x i8], align 1
  %90 = alloca %struct.i2c_msg, align 4
  %91 = alloca [3 x i8], align 1
  %92 = alloca %struct.i2c_msg, align 4
  %93 = alloca [3 x i8], align 1
  %94 = alloca %struct.i2c_msg, align 4
  %95 = alloca [2 x i8], align 2
  %96 = alloca [2 x %struct.i2c_msg], align 4
  %97 = alloca [2 x i8], align 2
  %98 = alloca [2 x i8], align 2
  %99 = alloca [2 x %struct.i2c_msg], align 4
  %100 = alloca [2 x i8], align 2
  %101 = alloca [2 x %struct.i2c_msg], align 4
  %102 = alloca i8, align 1
  %103 = alloca i8, align 1
  %104 = alloca i8, align 1
  %105 = alloca i8, align 1
  %106 = alloca i8, align 1
  %107 = alloca i8, align 1
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %109 = load ptr, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %102) #9
  store i8 0, ptr %102, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %103) #9
  store i8 0, ptr %103, align 1
  store i32 0, ptr %1, align 4
  %110 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 3
  %111 = load i16, ptr %110, align 4
  %112 = add i16 %111, -3557
  %113 = load ptr, ptr %109, align 4
  %114 = getelementptr inbounds %struct.stv_base, ptr %113, i32 0, i32 2
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.stv_base, ptr %113, i32 0, i32 1
  %117 = load i8, ptr %116, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %100) #9
  %118 = lshr i16 %112, 8
  %119 = trunc i16 %118 to i8
  store i8 %119, ptr %100, align 2
  %120 = getelementptr inbounds i8, ptr %100, i32 1
  %121 = trunc i16 %112 to i8
  store i8 %121, ptr %120, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %101) #9
  %122 = getelementptr inbounds i8, ptr %101, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %122, i8 0, i32 16, i1 false) #9, !annotation !8
  %123 = zext i8 %117 to i16
  store i16 %123, ptr %101, align 4
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 1
  store i16 0, ptr %124, align 2
  store i16 2, ptr %122, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 3
  store ptr %100, ptr %125, align 4
  %126 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 1
  store i16 %123, ptr %126, align 4
  %127 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 1, i32 1
  store i16 1, ptr %127, align 2
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 1, i32 2
  store i16 1, ptr %128, align 4
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 1, i32 3
  store ptr %102, ptr %129, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %115, ptr noundef nonnull %101, i32 noundef 2) #9
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %136, label %132

132:                                              ; preds = %2
  %133 = zext i16 %112 to i32
  %134 = getelementptr inbounds %struct.i2c_adapter, ptr %115, i32 0, i32 9
  %135 = zext i8 %117 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %134, ptr noundef nonnull @.str.5, i32 noundef %135, i32 noundef %133) #10
  br label %136

136:                                              ; preds = %132, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %101) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %100) #9
  %137 = load i8, ptr %102, align 1
  %138 = and i8 %137, 64
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %179, label %140

140:                                              ; preds = %136
  %141 = load i16, ptr %110, align 4
  %142 = add i16 %141, -3566
  %143 = load ptr, ptr %109, align 4
  %144 = getelementptr inbounds %struct.stv_base, ptr %143, i32 0, i32 2
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.stv_base, ptr %143, i32 0, i32 1
  %147 = load i8, ptr %146, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %98) #9
  %148 = lshr i16 %142, 8
  %149 = trunc i16 %148 to i8
  store i8 %149, ptr %98, align 2
  %150 = getelementptr inbounds i8, ptr %98, i32 1
  %151 = trunc i16 %142 to i8
  store i8 %151, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %99) #9
  %152 = getelementptr inbounds i8, ptr %99, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %152, i8 0, i32 16, i1 false) #9, !annotation !8
  %153 = zext i8 %147 to i16
  store i16 %153, ptr %99, align 4
  %154 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 1
  store i16 0, ptr %154, align 2
  store i16 2, ptr %152, align 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 0, i32 3
  store ptr %98, ptr %155, align 4
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 1
  store i16 %153, ptr %156, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 1, i32 1
  store i16 1, ptr %157, align 2
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 1, i32 2
  store i16 1, ptr %158, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %99, i32 1, i32 3
  store ptr %103, ptr %159, align 4
  %160 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %99, i32 noundef 2) #9
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %166, label %162

162:                                              ; preds = %140
  %163 = zext i16 %142 to i32
  %164 = getelementptr inbounds %struct.i2c_adapter, ptr %145, i32 0, i32 9
  %165 = zext i8 %147 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.5, i32 noundef %165, i32 noundef %163) #10
  br label %166

166:                                              ; preds = %162, %140
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %99) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %98) #9
  %167 = load i8, ptr %103, align 1
  %168 = and i8 %167, 8
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %179, label %170

170:                                              ; preds = %166
  %171 = load i8, ptr %102, align 1
  %172 = and i8 %171, 32
  %173 = icmp eq i8 %172, 0
  %174 = load i32, ptr %1, align 4
  %175 = or i32 %174, 15
  store i32 %175, ptr %1, align 4
  %176 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 13
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %466, label %904

179:                                              ; preds = %166, %136
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %97) #9
  store i16 0, ptr %97, align 2, !annotation !8
  %180 = load i16, ptr %110, align 4
  %181 = add i16 %180, -3456
  %182 = load ptr, ptr %109, align 4
  %183 = getelementptr inbounds %struct.stv_base, ptr %182, i32 0, i32 2
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.stv_base, ptr %182, i32 0, i32 1
  %186 = load i8, ptr %185, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %95) #9
  %187 = lshr i16 %181, 8
  %188 = trunc i16 %187 to i8
  store i8 %188, ptr %95, align 2
  %189 = getelementptr inbounds i8, ptr %95, i32 1
  %190 = trunc i16 %181 to i8
  store i8 %190, ptr %189, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %96) #9
  %191 = getelementptr inbounds i8, ptr %96, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %191, i8 0, i32 16, i1 false) #9, !annotation !8
  %192 = zext i8 %186 to i16
  store i16 %192, ptr %96, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 1
  store i16 0, ptr %193, align 2
  store i16 2, ptr %191, align 4
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 0, i32 3
  store ptr %95, ptr %194, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1
  store i16 %192, ptr %195, align 4
  %196 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1, i32 1
  store i16 1, ptr %196, align 2
  %197 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1, i32 2
  store i16 2, ptr %197, align 4
  %198 = getelementptr inbounds %struct.i2c_msg, ptr %96, i32 1, i32 3
  store ptr %97, ptr %198, align 4
  %199 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %96, i32 noundef 2) #9
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %205, label %201

201:                                              ; preds = %179
  %202 = zext i16 %181 to i32
  %203 = getelementptr inbounds %struct.i2c_adapter, ptr %184, i32 0, i32 9
  %204 = zext i8 %186 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %203, ptr noundef nonnull @.str.5, i32 noundef %204, i32 noundef %202) #10
  br label %205

205:                                              ; preds = %201, %179
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %96) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %95) #9
  %206 = load i8, ptr %97, align 2
  %207 = zext i8 %206 to i32
  %208 = shl nuw nsw i32 %207, 8
  %209 = getelementptr inbounds [2 x i8], ptr %97, i32 0, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = zext i8 %210 to i32
  %212 = or i32 %208, %211
  %213 = icmp ult i32 %212, 8780
  br i1 %213, label %214, label %255

214:                                              ; preds = %205
  %215 = icmp ugt i32 %212, 4236
  br i1 %215, label %216, label %255

216:                                              ; preds = %233, %214
  %217 = phi i32 [ %235, %233 ], [ 8780, %214 ]
  %218 = phi i32 [ %230, %233 ], [ 4, %214 ]
  %219 = phi i32 [ %229, %233 ], [ 0, %214 ]
  %220 = add i32 %219, %218
  %221 = sdiv i32 %220, 2
  %222 = icmp ult i32 %217, %212
  br i1 %222, label %227, label %223

223:                                              ; preds = %216
  %224 = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %221, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = icmp ugt i32 %225, %212
  br i1 %226, label %227, label %228

227:                                              ; preds = %223, %216
  br label %228

228:                                              ; preds = %227, %223
  %229 = phi i32 [ %221, %227 ], [ %219, %223 ]
  %230 = phi i32 [ %218, %227 ], [ %221, %223 ]
  %231 = sub i32 %230, %229
  %232 = icmp sgt i32 %231, 1
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %229, i32 1
  %235 = load i32, ptr %234, align 4
  br label %216

236:                                              ; preds = %228
  %237 = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %230, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %229, i32 1
  %240 = load i32, ptr %239, align 4
  %241 = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %229
  %242 = load i16, ptr %241, align 4
  %243 = sext i16 %242 to i32
  %244 = icmp eq i32 %238, %240
  br i1 %244, label %255, label %245

245:                                              ; preds = %236
  %246 = sub i32 %238, %240
  %247 = getelementptr %struct.slookup, ptr @set_vth.vthlookup_table, i32 %230
  %248 = sub i32 %212, %240
  %249 = load i16, ptr %247, align 4
  %250 = sext i16 %249 to i32
  %251 = sub nsw i32 %250, %243
  %252 = mul i32 %251, %248
  %253 = sdiv i32 %252, %246
  %254 = add i32 %253, %243
  br label %255

255:                                              ; preds = %245, %236, %214, %205
  %256 = phi i32 [ %254, %245 ], [ %243, %236 ], [ 250, %205 ], [ 5, %214 ]
  %257 = trunc i32 %256 to i8
  %258 = getelementptr %struct.stv, ptr %109, i32 0, i32 31, i32 0
  %259 = load i8, ptr %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp slt i32 %256, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  store i8 %257, ptr %258, align 1
  br label %263

263:                                              ; preds = %262, %255
  %264 = phi i8 [ %259, %255 ], [ %257, %262 ]
  %265 = getelementptr %struct.stv, ptr %109, i32 0, i32 31, i32 1
  %266 = load i8, ptr %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp slt i32 %256, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  store i8 %257, ptr %265, align 1
  br label %270

270:                                              ; preds = %269, %263
  %271 = getelementptr %struct.stv, ptr %109, i32 0, i32 31, i32 2
  %272 = load i8, ptr %271, align 1
  %273 = zext i8 %272 to i32
  %274 = icmp slt i32 %256, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  store i8 %257, ptr %271, align 1
  br label %276

276:                                              ; preds = %275, %270
  %277 = getelementptr %struct.stv, ptr %109, i32 0, i32 31, i32 3
  %278 = load i8, ptr %277, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp slt i32 %256, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %276
  store i8 %257, ptr %277, align 1
  br label %282

282:                                              ; preds = %281, %276
  %283 = getelementptr %struct.stv, ptr %109, i32 0, i32 31, i32 4
  %284 = load i8, ptr %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp slt i32 %256, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  store i8 %257, ptr %283, align 1
  br label %288

288:                                              ; preds = %287, %282
  %289 = getelementptr %struct.stv, ptr %109, i32 0, i32 31, i32 5
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  %292 = icmp slt i32 %256, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %288
  store i8 %257, ptr %289, align 1
  br label %294

294:                                              ; preds = %293, %288
  %295 = load i16, ptr %110, align 4
  %296 = add i16 %295, -3276
  %297 = load ptr, ptr %109, align 4
  %298 = getelementptr inbounds %struct.stv_base, ptr %297, i32 0, i32 2
  %299 = load ptr, ptr %298, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %93) #9
  %300 = lshr i16 %296, 8
  %301 = trunc i16 %300 to i8
  store i8 %301, ptr %93, align 1
  %302 = getelementptr inbounds i8, ptr %93, i32 1
  %303 = trunc i16 %296 to i8
  store i8 %303, ptr %302, align 1
  %304 = getelementptr inbounds i8, ptr %93, i32 2
  store i8 %264, ptr %304, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %94) #9
  %305 = getelementptr inbounds i8, ptr %94, i32 4
  store i32 3, ptr %305, align 4, !annotation !8
  %306 = getelementptr inbounds %struct.stv_base, ptr %297, i32 0, i32 1
  %307 = load i8, ptr %306, align 4
  %308 = zext i8 %307 to i16
  store i16 %308, ptr %94, align 4
  %309 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 1
  store i16 0, ptr %309, align 2
  %310 = getelementptr inbounds %struct.i2c_msg, ptr %94, i32 0, i32 3
  store ptr %93, ptr %310, align 4
  %311 = call i32 @i2c_transfer(ptr noundef %299, ptr noundef nonnull %94, i32 noundef 1) #9
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %321, label %313

313:                                              ; preds = %294
  %314 = zext i16 %296 to i32
  %315 = getelementptr inbounds %struct.i2c_adapter, ptr %299, i32 0, i32 9
  %316 = load ptr, ptr %109, align 4
  %317 = getelementptr inbounds %struct.stv_base, ptr %316, i32 0, i32 1
  %318 = load i8, ptr %317, align 4
  %319 = zext i8 %318 to i32
  %320 = zext i8 %264 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %315, ptr noundef nonnull @.str.6, i32 noundef %319, i32 noundef %314, i32 noundef %320) #10
  br label %321

321:                                              ; preds = %313, %294
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %94) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %93) #9
  %322 = load i16, ptr %110, align 4
  %323 = add i16 %322, -3275
  %324 = load i8, ptr %265, align 1
  %325 = load ptr, ptr %109, align 4
  %326 = getelementptr inbounds %struct.stv_base, ptr %325, i32 0, i32 2
  %327 = load ptr, ptr %326, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %91) #9
  %328 = lshr i16 %323, 8
  %329 = trunc i16 %328 to i8
  store i8 %329, ptr %91, align 1
  %330 = getelementptr inbounds i8, ptr %91, i32 1
  %331 = trunc i16 %323 to i8
  store i8 %331, ptr %330, align 1
  %332 = getelementptr inbounds i8, ptr %91, i32 2
  store i8 %324, ptr %332, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %92) #9
  %333 = getelementptr inbounds i8, ptr %92, i32 4
  store i32 3, ptr %333, align 4, !annotation !8
  %334 = getelementptr inbounds %struct.stv_base, ptr %325, i32 0, i32 1
  %335 = load i8, ptr %334, align 4
  %336 = zext i8 %335 to i16
  store i16 %336, ptr %92, align 4
  %337 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 1
  store i16 0, ptr %337, align 2
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %92, i32 0, i32 3
  store ptr %91, ptr %338, align 4
  %339 = call i32 @i2c_transfer(ptr noundef %327, ptr noundef nonnull %92, i32 noundef 1) #9
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %349, label %341

341:                                              ; preds = %321
  %342 = zext i16 %323 to i32
  %343 = getelementptr inbounds %struct.i2c_adapter, ptr %327, i32 0, i32 9
  %344 = load ptr, ptr %109, align 4
  %345 = getelementptr inbounds %struct.stv_base, ptr %344, i32 0, i32 1
  %346 = load i8, ptr %345, align 4
  %347 = zext i8 %346 to i32
  %348 = zext i8 %324 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %343, ptr noundef nonnull @.str.6, i32 noundef %347, i32 noundef %342, i32 noundef %348) #10
  br label %349

349:                                              ; preds = %341, %321
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %92) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %91) #9
  %350 = load i16, ptr %110, align 4
  %351 = add i16 %350, -3274
  %352 = load i8, ptr %271, align 1
  %353 = load ptr, ptr %109, align 4
  %354 = getelementptr inbounds %struct.stv_base, ptr %353, i32 0, i32 2
  %355 = load ptr, ptr %354, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %89) #9
  %356 = lshr i16 %351, 8
  %357 = trunc i16 %356 to i8
  store i8 %357, ptr %89, align 1
  %358 = getelementptr inbounds i8, ptr %89, i32 1
  %359 = trunc i16 %351 to i8
  store i8 %359, ptr %358, align 1
  %360 = getelementptr inbounds i8, ptr %89, i32 2
  store i8 %352, ptr %360, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %90) #9
  %361 = getelementptr inbounds i8, ptr %90, i32 4
  store i32 3, ptr %361, align 4, !annotation !8
  %362 = getelementptr inbounds %struct.stv_base, ptr %353, i32 0, i32 1
  %363 = load i8, ptr %362, align 4
  %364 = zext i8 %363 to i16
  store i16 %364, ptr %90, align 4
  %365 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 1
  store i16 0, ptr %365, align 2
  %366 = getelementptr inbounds %struct.i2c_msg, ptr %90, i32 0, i32 3
  store ptr %89, ptr %366, align 4
  %367 = call i32 @i2c_transfer(ptr noundef %355, ptr noundef nonnull %90, i32 noundef 1) #9
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %377, label %369

369:                                              ; preds = %349
  %370 = zext i16 %351 to i32
  %371 = getelementptr inbounds %struct.i2c_adapter, ptr %355, i32 0, i32 9
  %372 = load ptr, ptr %109, align 4
  %373 = getelementptr inbounds %struct.stv_base, ptr %372, i32 0, i32 1
  %374 = load i8, ptr %373, align 4
  %375 = zext i8 %374 to i32
  %376 = zext i8 %352 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %371, ptr noundef nonnull @.str.6, i32 noundef %375, i32 noundef %370, i32 noundef %376) #10
  br label %377

377:                                              ; preds = %369, %349
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %90) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %89) #9
  %378 = load i16, ptr %110, align 4
  %379 = add i16 %378, -3273
  %380 = load i8, ptr %277, align 1
  %381 = load ptr, ptr %109, align 4
  %382 = getelementptr inbounds %struct.stv_base, ptr %381, i32 0, i32 2
  %383 = load ptr, ptr %382, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %87) #9
  %384 = lshr i16 %379, 8
  %385 = trunc i16 %384 to i8
  store i8 %385, ptr %87, align 1
  %386 = getelementptr inbounds i8, ptr %87, i32 1
  %387 = trunc i16 %379 to i8
  store i8 %387, ptr %386, align 1
  %388 = getelementptr inbounds i8, ptr %87, i32 2
  store i8 %380, ptr %388, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %88) #9
  %389 = getelementptr inbounds i8, ptr %88, i32 4
  store i32 3, ptr %389, align 4, !annotation !8
  %390 = getelementptr inbounds %struct.stv_base, ptr %381, i32 0, i32 1
  %391 = load i8, ptr %390, align 4
  %392 = zext i8 %391 to i16
  store i16 %392, ptr %88, align 4
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 1
  store i16 0, ptr %393, align 2
  %394 = getelementptr inbounds %struct.i2c_msg, ptr %88, i32 0, i32 3
  store ptr %87, ptr %394, align 4
  %395 = call i32 @i2c_transfer(ptr noundef %383, ptr noundef nonnull %88, i32 noundef 1) #9
  %396 = icmp eq i32 %395, 1
  br i1 %396, label %405, label %397

397:                                              ; preds = %377
  %398 = zext i16 %379 to i32
  %399 = getelementptr inbounds %struct.i2c_adapter, ptr %383, i32 0, i32 9
  %400 = load ptr, ptr %109, align 4
  %401 = getelementptr inbounds %struct.stv_base, ptr %400, i32 0, i32 1
  %402 = load i8, ptr %401, align 4
  %403 = zext i8 %402 to i32
  %404 = zext i8 %380 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %399, ptr noundef nonnull @.str.6, i32 noundef %403, i32 noundef %398, i32 noundef %404) #10
  br label %405

405:                                              ; preds = %397, %377
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %88) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %87) #9
  %406 = load i16, ptr %110, align 4
  %407 = add i16 %406, -3272
  %408 = load i8, ptr %283, align 1
  %409 = load ptr, ptr %109, align 4
  %410 = getelementptr inbounds %struct.stv_base, ptr %409, i32 0, i32 2
  %411 = load ptr, ptr %410, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %85) #9
  %412 = lshr i16 %407, 8
  %413 = trunc i16 %412 to i8
  store i8 %413, ptr %85, align 1
  %414 = getelementptr inbounds i8, ptr %85, i32 1
  %415 = trunc i16 %407 to i8
  store i8 %415, ptr %414, align 1
  %416 = getelementptr inbounds i8, ptr %85, i32 2
  store i8 %408, ptr %416, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %86) #9
  %417 = getelementptr inbounds i8, ptr %86, i32 4
  store i32 3, ptr %417, align 4, !annotation !8
  %418 = getelementptr inbounds %struct.stv_base, ptr %409, i32 0, i32 1
  %419 = load i8, ptr %418, align 4
  %420 = zext i8 %419 to i16
  store i16 %420, ptr %86, align 4
  %421 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 1
  store i16 0, ptr %421, align 2
  %422 = getelementptr inbounds %struct.i2c_msg, ptr %86, i32 0, i32 3
  store ptr %85, ptr %422, align 4
  %423 = call i32 @i2c_transfer(ptr noundef %411, ptr noundef nonnull %86, i32 noundef 1) #9
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %433, label %425

425:                                              ; preds = %405
  %426 = zext i16 %407 to i32
  %427 = getelementptr inbounds %struct.i2c_adapter, ptr %411, i32 0, i32 9
  %428 = load ptr, ptr %109, align 4
  %429 = getelementptr inbounds %struct.stv_base, ptr %428, i32 0, i32 1
  %430 = load i8, ptr %429, align 4
  %431 = zext i8 %430 to i32
  %432 = zext i8 %408 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %427, ptr noundef nonnull @.str.6, i32 noundef %431, i32 noundef %426, i32 noundef %432) #10
  br label %433

433:                                              ; preds = %425, %405
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %86) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %85) #9
  %434 = load i16, ptr %110, align 4
  %435 = add i16 %434, -3271
  %436 = load i8, ptr %289, align 1
  %437 = load ptr, ptr %109, align 4
  %438 = getelementptr inbounds %struct.stv_base, ptr %437, i32 0, i32 2
  %439 = load ptr, ptr %438, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %83) #9
  %440 = lshr i16 %435, 8
  %441 = trunc i16 %440 to i8
  store i8 %441, ptr %83, align 1
  %442 = getelementptr inbounds i8, ptr %83, i32 1
  %443 = trunc i16 %435 to i8
  store i8 %443, ptr %442, align 1
  %444 = getelementptr inbounds i8, ptr %83, i32 2
  store i8 %436, ptr %444, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %84) #9
  %445 = getelementptr inbounds i8, ptr %84, i32 4
  store i32 3, ptr %445, align 4, !annotation !8
  %446 = getelementptr inbounds %struct.stv_base, ptr %437, i32 0, i32 1
  %447 = load i8, ptr %446, align 4
  %448 = zext i8 %447 to i16
  store i16 %448, ptr %84, align 4
  %449 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 1
  store i16 0, ptr %449, align 2
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %84, i32 0, i32 3
  store ptr %83, ptr %450, align 4
  %451 = call i32 @i2c_transfer(ptr noundef %439, ptr noundef nonnull %84, i32 noundef 1) #9
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %461, label %453

453:                                              ; preds = %433
  %454 = zext i16 %435 to i32
  %455 = getelementptr inbounds %struct.i2c_adapter, ptr %439, i32 0, i32 9
  %456 = load ptr, ptr %109, align 4
  %457 = getelementptr inbounds %struct.stv_base, ptr %456, i32 0, i32 1
  %458 = load i8, ptr %457, align 4
  %459 = zext i8 %458 to i32
  %460 = zext i8 %436 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %455, ptr noundef nonnull @.str.6, i32 noundef %459, i32 noundef %454, i32 noundef %460) #10
  br label %461

461:                                              ; preds = %453, %433
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %84) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %83) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %97) #9
  %462 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 42, i32 1
  store i8 0, ptr %462, align 1
  %463 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %463, align 1
  %464 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %464, align 1
  %465 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %465, align 1
  br label %1903

466:                                              ; preds = %170
  %467 = select i1 %173, i32 2, i32 1
  store i32 %467, ptr %176, align 4
  %468 = load volatile i32, ptr @jiffies, align 64
  %469 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 12
  store i32 %468, ptr %469, align 4
  %470 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 16
  store i32 1, ptr %470, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %82) #9
  store i8 0, ptr %82, align 1, !annotation !8
  %471 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 11
  %472 = load i32, ptr %471, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %554, label %474

474:                                              ; preds = %466
  %475 = load i16, ptr %110, align 4
  br i1 %173, label %476, label %514

476:                                              ; preds = %474
  %477 = add i16 %475, -3567
  %478 = load ptr, ptr %109, align 4
  %479 = getelementptr inbounds %struct.stv_base, ptr %478, i32 0, i32 2
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr inbounds %struct.stv_base, ptr %478, i32 0, i32 1
  %482 = load i8, ptr %481, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %80) #9
  %483 = lshr i16 %477, 8
  %484 = trunc i16 %483 to i8
  store i8 %484, ptr %80, align 2
  %485 = getelementptr inbounds i8, ptr %80, i32 1
  %486 = trunc i16 %477 to i8
  store i8 %486, ptr %485, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %81) #9
  %487 = getelementptr inbounds i8, ptr %81, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %487, i8 0, i32 16, i1 false) #9, !annotation !8
  %488 = zext i8 %482 to i16
  store i16 %488, ptr %81, align 4
  %489 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 1
  store i16 0, ptr %489, align 2
  store i16 2, ptr %487, align 4
  %490 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 0, i32 3
  store ptr %80, ptr %490, align 4
  %491 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1
  store i16 %488, ptr %491, align 4
  %492 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1, i32 1
  store i16 1, ptr %492, align 2
  %493 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1, i32 2
  store i16 1, ptr %493, align 4
  %494 = getelementptr inbounds %struct.i2c_msg, ptr %81, i32 1, i32 3
  store ptr %82, ptr %494, align 4
  %495 = call i32 @i2c_transfer(ptr noundef %480, ptr noundef nonnull %81, i32 noundef 2) #9
  %496 = icmp eq i32 %495, 2
  br i1 %496, label %501, label %497

497:                                              ; preds = %476
  %498 = zext i16 %477 to i32
  %499 = getelementptr inbounds %struct.i2c_adapter, ptr %480, i32 0, i32 9
  %500 = zext i8 %482 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %499, ptr noundef nonnull @.str.5, i32 noundef %500, i32 noundef %498) #10
  br label %501

501:                                              ; preds = %497, %476
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %81) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %80) #9
  %502 = load i8, ptr %82, align 1
  %503 = lshr i8 %502, 2
  %504 = and i8 %503, 31
  %505 = zext i8 %504 to i32
  %506 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 21
  store i32 %505, ptr %506, align 4
  %507 = and i8 %502, 1
  %508 = zext i8 %507 to i32
  %509 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 23
  store i32 %508, ptr %509, align 4
  %510 = lshr i8 %502, 1
  %511 = and i8 %510, 1
  %512 = zext i8 %511 to i32
  %513 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 22
  store i32 %512, ptr %513, align 4
  br label %554

514:                                              ; preds = %474
  %515 = add i16 %475, -3270
  %516 = load ptr, ptr %109, align 4
  %517 = getelementptr inbounds %struct.stv_base, ptr %516, i32 0, i32 2
  %518 = load ptr, ptr %517, align 4
  %519 = getelementptr inbounds %struct.stv_base, ptr %516, i32 0, i32 1
  %520 = load i8, ptr %519, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %78) #9
  %521 = lshr i16 %515, 8
  %522 = trunc i16 %521 to i8
  store i8 %522, ptr %78, align 2
  %523 = getelementptr inbounds i8, ptr %78, i32 1
  %524 = trunc i16 %515 to i8
  store i8 %524, ptr %523, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %79) #9
  %525 = getelementptr inbounds i8, ptr %79, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %525, i8 0, i32 16, i1 false) #9, !annotation !8
  %526 = zext i8 %520 to i16
  store i16 %526, ptr %79, align 4
  %527 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 1
  store i16 0, ptr %527, align 2
  store i16 2, ptr %525, align 4
  %528 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 0, i32 3
  store ptr %78, ptr %528, align 4
  %529 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1
  store i16 %526, ptr %529, align 4
  %530 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1, i32 1
  store i16 1, ptr %530, align 2
  %531 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1, i32 2
  store i16 1, ptr %531, align 4
  %532 = getelementptr inbounds %struct.i2c_msg, ptr %79, i32 1, i32 3
  store ptr %82, ptr %532, align 4
  %533 = call i32 @i2c_transfer(ptr noundef %518, ptr noundef nonnull %79, i32 noundef 2) #9
  %534 = icmp eq i32 %533, 2
  br i1 %534, label %539, label %535

535:                                              ; preds = %514
  %536 = zext i16 %515 to i32
  %537 = getelementptr inbounds %struct.i2c_adapter, ptr %518, i32 0, i32 9
  %538 = zext i8 %520 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %537, ptr noundef nonnull @.str.5, i32 noundef %538, i32 noundef %536) #10
  br label %539

539:                                              ; preds = %535, %514
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %79) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %78) #9
  %540 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 20
  store i32 0, ptr %540, align 4
  %541 = load i8, ptr %82, align 1
  %542 = and i8 %541, 31
  %543 = zext i8 %542 to i32
  switch i32 %543, label %550 [
    i32 13, label %548
    i32 18, label %544
    i32 21, label %545
    i32 24, label %546
    i32 26, label %547
  ]

544:                                              ; preds = %539
  br label %548

545:                                              ; preds = %539
  br label %548

546:                                              ; preds = %539
  br label %548

547:                                              ; preds = %539
  br label %548

548:                                              ; preds = %547, %546, %545, %544, %539
  %549 = phi i32 [ 7, %547 ], [ 5, %546 ], [ 3, %545 ], [ 2, %544 ], [ 1, %539 ]
  store i32 %549, ptr %540, align 4
  br label %550

550:                                              ; preds = %548, %539
  %551 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 26
  store i32 0, ptr %551, align 4
  %552 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 25
  store i32 1, ptr %552, align 4
  %553 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 24
  store i32 0, ptr %553, align 4
  br label %554

554:                                              ; preds = %550, %501, %466
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %82) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %77) #9
  store i8 0, ptr %77, align 1, !annotation !8
  %555 = load i16, ptr %110, align 4
  %556 = add i16 %555, -3564
  %557 = load ptr, ptr %109, align 4
  %558 = getelementptr inbounds %struct.stv_base, ptr %557, i32 0, i32 2
  %559 = load ptr, ptr %558, align 4
  %560 = getelementptr inbounds %struct.stv_base, ptr %557, i32 0, i32 1
  %561 = load i8, ptr %560, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %75) #9
  %562 = lshr i16 %556, 8
  %563 = trunc i16 %562 to i8
  store i8 %563, ptr %75, align 2
  %564 = getelementptr inbounds i8, ptr %75, i32 1
  %565 = trunc i16 %556 to i8
  store i8 %565, ptr %564, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %76) #9
  %566 = getelementptr inbounds i8, ptr %76, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %566, i8 0, i32 16, i1 false) #9, !annotation !8
  %567 = zext i8 %561 to i16
  store i16 %567, ptr %76, align 4
  %568 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 1
  store i16 0, ptr %568, align 2
  store i16 2, ptr %566, align 4
  %569 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 0, i32 3
  store ptr %75, ptr %569, align 4
  %570 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1
  store i16 %567, ptr %570, align 4
  %571 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 1
  store i16 1, ptr %571, align 2
  %572 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 2
  store i16 1, ptr %572, align 4
  %573 = getelementptr inbounds %struct.i2c_msg, ptr %76, i32 1, i32 3
  store ptr %77, ptr %573, align 4
  %574 = call i32 @i2c_transfer(ptr noundef %559, ptr noundef nonnull %76, i32 noundef 2) #9
  %575 = icmp eq i32 %574, 2
  br i1 %575, label %580, label %576

576:                                              ; preds = %554
  %577 = zext i16 %556 to i32
  %578 = getelementptr inbounds %struct.i2c_adapter, ptr %559, i32 0, i32 9
  %579 = zext i8 %561 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %578, ptr noundef nonnull @.str.5, i32 noundef %579, i32 noundef %577) #10
  br label %580

580:                                              ; preds = %576, %554
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %76) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %75) #9
  %581 = load i8, ptr %77, align 1
  %582 = and i8 %581, 63
  %583 = load i32, ptr %176, align 4
  switch i32 %583, label %588 [
    i32 1, label %584
    i32 2, label %586
  ]

584:                                              ; preds = %580
  %585 = or i8 %582, 64
  store i8 %585, ptr %77, align 1
  br label %590

586:                                              ; preds = %580
  %587 = or i8 %582, -128
  store i8 %587, ptr %77, align 1
  br label %590

588:                                              ; preds = %580
  %589 = or i8 %581, -64
  store i8 %589, ptr %77, align 1
  br label %590

590:                                              ; preds = %588, %586, %584
  %591 = phi i8 [ %589, %588 ], [ %587, %586 ], [ %585, %584 ]
  %592 = load i16, ptr %110, align 4
  %593 = add i16 %592, -3564
  %594 = load ptr, ptr %109, align 4
  %595 = getelementptr inbounds %struct.stv_base, ptr %594, i32 0, i32 2
  %596 = load ptr, ptr %595, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %73) #9
  %597 = lshr i16 %593, 8
  %598 = trunc i16 %597 to i8
  store i8 %598, ptr %73, align 1
  %599 = getelementptr inbounds i8, ptr %73, i32 1
  %600 = trunc i16 %593 to i8
  store i8 %600, ptr %599, align 1
  %601 = getelementptr inbounds i8, ptr %73, i32 2
  store i8 %591, ptr %601, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %74) #9
  %602 = getelementptr inbounds i8, ptr %74, i32 4
  store i32 3, ptr %602, align 4, !annotation !8
  %603 = getelementptr inbounds %struct.stv_base, ptr %594, i32 0, i32 1
  %604 = load i8, ptr %603, align 4
  %605 = zext i8 %604 to i16
  store i16 %605, ptr %74, align 4
  %606 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  store i16 0, ptr %606, align 2
  %607 = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 3
  store ptr %73, ptr %607, align 4
  %608 = call i32 @i2c_transfer(ptr noundef %596, ptr noundef nonnull %74, i32 noundef 1) #9
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %618, label %610

610:                                              ; preds = %590
  %611 = zext i16 %593 to i32
  %612 = getelementptr inbounds %struct.i2c_adapter, ptr %596, i32 0, i32 9
  %613 = load ptr, ptr %109, align 4
  %614 = getelementptr inbounds %struct.stv_base, ptr %613, i32 0, i32 1
  %615 = load i8, ptr %614, align 4
  %616 = zext i8 %615 to i32
  %617 = zext i8 %591 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %612, ptr noundef nonnull @.str.6, i32 noundef %616, i32 noundef %611, i32 noundef %617) #10
  br label %618

618:                                              ; preds = %610, %590
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %74) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %73) #9
  %619 = load i32, ptr %176, align 4
  %620 = icmp eq i32 %619, 2
  br i1 %620, label %621, label %816

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 2
  %623 = load i32, ptr %622, align 4
  %624 = icmp eq i32 %623, 0
  %625 = select i1 %624, i8 1, i8 2
  call fastcc void @write_shared_reg(ptr noundef %109, i8 noundef zeroext %625, i8 noundef zeroext 3) #9
  %626 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 22
  %627 = load i32, ptr %626, align 4
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %816

629:                                              ; preds = %621
  %630 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 21
  %631 = load i32, ptr %630, align 4
  %632 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 23
  %633 = load i32, ptr %632, align 4
  %634 = icmp ugt i32 %631, 27
  br i1 %634, label %640, label %635

635:                                              ; preds = %629
  %636 = icmp eq i32 %631, 0
  br i1 %636, label %640, label %637

637:                                              ; preds = %635
  %638 = mul nuw nsw i32 %631, 10
  %639 = add nsw i32 %638, -10
  br label %640

640:                                              ; preds = %637, %635, %629
  %641 = phi i32 [ %639, %637 ], [ 0, %635 ], [ 270, %629 ]
  %642 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 18
  %643 = load i32, ptr %642, align 4
  %644 = icmp ult i32 %643, 3000001
  br i1 %644, label %659, label %645

645:                                              ; preds = %640
  %646 = icmp ult i32 %643, 7000001
  br i1 %646, label %647, label %649

647:                                              ; preds = %645
  %648 = add nuw nsw i32 %641, 2
  br label %659

649:                                              ; preds = %645
  %650 = icmp ult i32 %643, 15000001
  br i1 %650, label %651, label %653

651:                                              ; preds = %649
  %652 = add nuw nsw i32 %641, 4
  br label %659

653:                                              ; preds = %649
  %654 = icmp ult i32 %643, 25000001
  br i1 %654, label %655, label %657

655:                                              ; preds = %653
  %656 = add nuw nsw i32 %641, 6
  br label %659

657:                                              ; preds = %653
  %658 = add nuw nsw i32 %641, 8
  br label %659

659:                                              ; preds = %657, %655, %651, %647, %640
  %660 = phi i32 [ %648, %647 ], [ %652, %651 ], [ %656, %655 ], [ %658, %657 ], [ %641, %640 ]
  %661 = icmp eq i32 %633, 0
  %662 = zext i1 %661 to i32
  %663 = add nuw nsw i32 %660, %662
  %664 = getelementptr [280 x i8], ptr @s2car_loop, i32 0, i32 %663
  %665 = load i8, ptr %664, align 1
  %666 = icmp ult i32 %631, 12
  br i1 %666, label %667, label %695

667:                                              ; preds = %659
  %668 = load i16, ptr %110, align 4
  %669 = add i16 %668, -3433
  %670 = load ptr, ptr %109, align 4
  %671 = getelementptr inbounds %struct.stv_base, ptr %670, i32 0, i32 2
  %672 = load ptr, ptr %671, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %71) #9
  %673 = lshr i16 %669, 8
  %674 = trunc i16 %673 to i8
  store i8 %674, ptr %71, align 1
  %675 = getelementptr inbounds i8, ptr %71, i32 1
  %676 = trunc i16 %669 to i8
  store i8 %676, ptr %675, align 1
  %677 = getelementptr inbounds i8, ptr %71, i32 2
  store i8 %665, ptr %677, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %72) #9
  %678 = getelementptr inbounds i8, ptr %72, i32 4
  store i32 3, ptr %678, align 4, !annotation !8
  %679 = getelementptr inbounds %struct.stv_base, ptr %670, i32 0, i32 1
  %680 = load i8, ptr %679, align 4
  %681 = zext i8 %680 to i16
  store i16 %681, ptr %72, align 4
  %682 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 1
  store i16 0, ptr %682, align 2
  %683 = getelementptr inbounds %struct.i2c_msg, ptr %72, i32 0, i32 3
  store ptr %71, ptr %683, align 4
  %684 = call i32 @i2c_transfer(ptr noundef %672, ptr noundef nonnull %72, i32 noundef 1) #9
  %685 = icmp eq i32 %684, 1
  br i1 %685, label %694, label %686

686:                                              ; preds = %667
  %687 = zext i16 %669 to i32
  %688 = getelementptr inbounds %struct.i2c_adapter, ptr %672, i32 0, i32 9
  %689 = load ptr, ptr %109, align 4
  %690 = getelementptr inbounds %struct.stv_base, ptr %689, i32 0, i32 1
  %691 = load i8, ptr %690, align 4
  %692 = zext i8 %691 to i32
  %693 = zext i8 %665 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %688, ptr noundef nonnull @.str.6, i32 noundef %692, i32 noundef %687, i32 noundef %693) #10
  br label %694

694:                                              ; preds = %686, %667
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %72) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %71) #9
  br label %816

695:                                              ; preds = %659
  %696 = icmp ult i32 %631, 18
  br i1 %696, label %697, label %751

697:                                              ; preds = %695
  %698 = load i16, ptr %110, align 4
  %699 = add i16 %698, -3433
  %700 = load ptr, ptr %109, align 4
  %701 = getelementptr inbounds %struct.stv_base, ptr %700, i32 0, i32 2
  %702 = load ptr, ptr %701, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %69) #9
  %703 = lshr i16 %699, 8
  %704 = trunc i16 %703 to i8
  store i8 %704, ptr %69, align 1
  %705 = getelementptr inbounds i8, ptr %69, i32 1
  %706 = trunc i16 %699 to i8
  store i8 %706, ptr %705, align 1
  %707 = getelementptr inbounds i8, ptr %69, i32 2
  store i8 42, ptr %707, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %70) #9
  %708 = getelementptr inbounds i8, ptr %70, i32 4
  store i32 3, ptr %708, align 4, !annotation !8
  %709 = getelementptr inbounds %struct.stv_base, ptr %700, i32 0, i32 1
  %710 = load i8, ptr %709, align 4
  %711 = zext i8 %710 to i16
  store i16 %711, ptr %70, align 4
  %712 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 1
  store i16 0, ptr %712, align 2
  %713 = getelementptr inbounds %struct.i2c_msg, ptr %70, i32 0, i32 3
  store ptr %69, ptr %713, align 4
  %714 = call i32 @i2c_transfer(ptr noundef %702, ptr noundef nonnull %70, i32 noundef 1) #9
  %715 = icmp eq i32 %714, 1
  br i1 %715, label %723, label %716

716:                                              ; preds = %697
  %717 = zext i16 %699 to i32
  %718 = getelementptr inbounds %struct.i2c_adapter, ptr %702, i32 0, i32 9
  %719 = load ptr, ptr %109, align 4
  %720 = getelementptr inbounds %struct.stv_base, ptr %719, i32 0, i32 1
  %721 = load i8, ptr %720, align 4
  %722 = zext i8 %721 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %718, ptr noundef nonnull @.str.6, i32 noundef %722, i32 noundef %717, i32 noundef 42) #10
  br label %723

723:                                              ; preds = %716, %697
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %70) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %69) #9
  %724 = load i16, ptr %110, align 4
  %725 = add i16 %724, -3432
  %726 = load ptr, ptr %109, align 4
  %727 = getelementptr inbounds %struct.stv_base, ptr %726, i32 0, i32 2
  %728 = load ptr, ptr %727, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %67) #9
  %729 = lshr i16 %725, 8
  %730 = trunc i16 %729 to i8
  store i8 %730, ptr %67, align 1
  %731 = getelementptr inbounds i8, ptr %67, i32 1
  %732 = trunc i16 %725 to i8
  store i8 %732, ptr %731, align 1
  %733 = getelementptr inbounds i8, ptr %67, i32 2
  store i8 %665, ptr %733, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %68) #9
  %734 = getelementptr inbounds i8, ptr %68, i32 4
  store i32 3, ptr %734, align 4, !annotation !8
  %735 = getelementptr inbounds %struct.stv_base, ptr %726, i32 0, i32 1
  %736 = load i8, ptr %735, align 4
  %737 = zext i8 %736 to i16
  store i16 %737, ptr %68, align 4
  %738 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 1
  store i16 0, ptr %738, align 2
  %739 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  store ptr %67, ptr %739, align 4
  %740 = call i32 @i2c_transfer(ptr noundef %728, ptr noundef nonnull %68, i32 noundef 1) #9
  %741 = icmp eq i32 %740, 1
  br i1 %741, label %750, label %742

742:                                              ; preds = %723
  %743 = zext i16 %725 to i32
  %744 = getelementptr inbounds %struct.i2c_adapter, ptr %728, i32 0, i32 9
  %745 = load ptr, ptr %109, align 4
  %746 = getelementptr inbounds %struct.stv_base, ptr %745, i32 0, i32 1
  %747 = load i8, ptr %746, align 4
  %748 = zext i8 %747 to i32
  %749 = zext i8 %665 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %744, ptr noundef nonnull @.str.6, i32 noundef %748, i32 noundef %743, i32 noundef %749) #10
  br label %750

750:                                              ; preds = %742, %723
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %68) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %67) #9
  br label %816

751:                                              ; preds = %695
  %752 = icmp ult i32 %631, 24
  br i1 %752, label %753, label %807

753:                                              ; preds = %751
  %754 = load i16, ptr %110, align 4
  %755 = add i16 %754, -3433
  %756 = load ptr, ptr %109, align 4
  %757 = getelementptr inbounds %struct.stv_base, ptr %756, i32 0, i32 2
  %758 = load ptr, ptr %757, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %65) #9
  %759 = lshr i16 %755, 8
  %760 = trunc i16 %759 to i8
  store i8 %760, ptr %65, align 1
  %761 = getelementptr inbounds i8, ptr %65, i32 1
  %762 = trunc i16 %755 to i8
  store i8 %762, ptr %761, align 1
  %763 = getelementptr inbounds i8, ptr %65, i32 2
  store i8 42, ptr %763, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %66) #9
  %764 = getelementptr inbounds i8, ptr %66, i32 4
  store i32 3, ptr %764, align 4, !annotation !8
  %765 = getelementptr inbounds %struct.stv_base, ptr %756, i32 0, i32 1
  %766 = load i8, ptr %765, align 4
  %767 = zext i8 %766 to i16
  store i16 %767, ptr %66, align 4
  %768 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 1
  store i16 0, ptr %768, align 2
  %769 = getelementptr inbounds %struct.i2c_msg, ptr %66, i32 0, i32 3
  store ptr %65, ptr %769, align 4
  %770 = call i32 @i2c_transfer(ptr noundef %758, ptr noundef nonnull %66, i32 noundef 1) #9
  %771 = icmp eq i32 %770, 1
  br i1 %771, label %779, label %772

772:                                              ; preds = %753
  %773 = zext i16 %755 to i32
  %774 = getelementptr inbounds %struct.i2c_adapter, ptr %758, i32 0, i32 9
  %775 = load ptr, ptr %109, align 4
  %776 = getelementptr inbounds %struct.stv_base, ptr %775, i32 0, i32 1
  %777 = load i8, ptr %776, align 4
  %778 = zext i8 %777 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %774, ptr noundef nonnull @.str.6, i32 noundef %778, i32 noundef %773, i32 noundef 42) #10
  br label %779

779:                                              ; preds = %772, %753
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %66) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %65) #9
  %780 = load i16, ptr %110, align 4
  %781 = add i16 %780, -3431
  %782 = load ptr, ptr %109, align 4
  %783 = getelementptr inbounds %struct.stv_base, ptr %782, i32 0, i32 2
  %784 = load ptr, ptr %783, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %63) #9
  %785 = lshr i16 %781, 8
  %786 = trunc i16 %785 to i8
  store i8 %786, ptr %63, align 1
  %787 = getelementptr inbounds i8, ptr %63, i32 1
  %788 = trunc i16 %781 to i8
  store i8 %788, ptr %787, align 1
  %789 = getelementptr inbounds i8, ptr %63, i32 2
  store i8 %665, ptr %789, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %64) #9
  %790 = getelementptr inbounds i8, ptr %64, i32 4
  store i32 3, ptr %790, align 4, !annotation !8
  %791 = getelementptr inbounds %struct.stv_base, ptr %782, i32 0, i32 1
  %792 = load i8, ptr %791, align 4
  %793 = zext i8 %792 to i16
  store i16 %793, ptr %64, align 4
  %794 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 1
  store i16 0, ptr %794, align 2
  %795 = getelementptr inbounds %struct.i2c_msg, ptr %64, i32 0, i32 3
  store ptr %63, ptr %795, align 4
  %796 = call i32 @i2c_transfer(ptr noundef %784, ptr noundef nonnull %64, i32 noundef 1) #9
  %797 = icmp eq i32 %796, 1
  br i1 %797, label %806, label %798

798:                                              ; preds = %779
  %799 = zext i16 %781 to i32
  %800 = getelementptr inbounds %struct.i2c_adapter, ptr %784, i32 0, i32 9
  %801 = load ptr, ptr %109, align 4
  %802 = getelementptr inbounds %struct.stv_base, ptr %801, i32 0, i32 1
  %803 = load i8, ptr %802, align 4
  %804 = zext i8 %803 to i32
  %805 = zext i8 %665 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %800, ptr noundef nonnull @.str.6, i32 noundef %804, i32 noundef %799, i32 noundef %805) #10
  br label %806

806:                                              ; preds = %798, %779
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %64) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %63) #9
  br label %816

807:                                              ; preds = %751
  %808 = icmp ult i32 %631, 29
  br i1 %808, label %809, label %816

809:                                              ; preds = %807
  %810 = load i16, ptr %110, align 4
  %811 = add i16 %810, -3433
  %812 = call fastcc i32 @write_reg(ptr noundef %109, i16 noundef zeroext %811, i8 noundef zeroext 42) #9
  %813 = load i16, ptr %110, align 4
  %814 = add i16 %813, -3430
  %815 = call fastcc i32 @write_reg(ptr noundef %109, i16 noundef zeroext %814, i8 noundef zeroext %665) #9
  br label %816

816:                                              ; preds = %809, %807, %806, %750, %694, %621, %618
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %77) #9
  %817 = load i16, ptr %110, align 4
  %818 = add i16 %817, -3214
  %819 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 5
  %820 = load i8, ptr %819, align 1
  %821 = load ptr, ptr %109, align 4
  %822 = getelementptr inbounds %struct.stv_base, ptr %821, i32 0, i32 2
  %823 = load ptr, ptr %822, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %61) #9
  %824 = lshr i16 %818, 8
  %825 = trunc i16 %824 to i8
  store i8 %825, ptr %61, align 1
  %826 = getelementptr inbounds i8, ptr %61, i32 1
  %827 = trunc i16 %818 to i8
  store i8 %827, ptr %826, align 1
  %828 = getelementptr inbounds i8, ptr %61, i32 2
  store i8 %820, ptr %828, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %62) #9
  %829 = getelementptr inbounds i8, ptr %62, i32 4
  store i32 3, ptr %829, align 4, !annotation !8
  %830 = getelementptr inbounds %struct.stv_base, ptr %821, i32 0, i32 1
  %831 = load i8, ptr %830, align 4
  %832 = zext i8 %831 to i16
  store i16 %832, ptr %62, align 4
  %833 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 1
  store i16 0, ptr %833, align 2
  %834 = getelementptr inbounds %struct.i2c_msg, ptr %62, i32 0, i32 3
  store ptr %61, ptr %834, align 4
  %835 = call i32 @i2c_transfer(ptr noundef %823, ptr noundef nonnull %62, i32 noundef 1) #9
  %836 = icmp eq i32 %835, 1
  br i1 %836, label %845, label %837

837:                                              ; preds = %816
  %838 = zext i16 %818 to i32
  %839 = getelementptr inbounds %struct.i2c_adapter, ptr %823, i32 0, i32 9
  %840 = load ptr, ptr %109, align 4
  %841 = getelementptr inbounds %struct.stv_base, ptr %840, i32 0, i32 1
  %842 = load i8, ptr %841, align 4
  %843 = zext i8 %842 to i32
  %844 = zext i8 %820 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %839, ptr noundef nonnull @.str.6, i32 noundef %843, i32 noundef %838, i32 noundef %844) #10
  br label %845

845:                                              ; preds = %837, %816
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %62) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %61) #9
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #9
  %846 = load i16, ptr %110, align 4
  %847 = add i16 %846, -3214
  %848 = load i8, ptr %819, align 1
  %849 = or i8 %848, 1
  %850 = load ptr, ptr %109, align 4
  %851 = getelementptr inbounds %struct.stv_base, ptr %850, i32 0, i32 2
  %852 = load ptr, ptr %851, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %59) #9
  %853 = lshr i16 %847, 8
  %854 = trunc i16 %853 to i8
  store i8 %854, ptr %59, align 1
  %855 = getelementptr inbounds i8, ptr %59, i32 1
  %856 = trunc i16 %847 to i8
  store i8 %856, ptr %855, align 1
  %857 = getelementptr inbounds i8, ptr %59, i32 2
  store i8 %849, ptr %857, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %60) #9
  %858 = getelementptr inbounds i8, ptr %60, i32 4
  store i32 3, ptr %858, align 4, !annotation !8
  %859 = getelementptr inbounds %struct.stv_base, ptr %850, i32 0, i32 1
  %860 = load i8, ptr %859, align 4
  %861 = zext i8 %860 to i16
  store i16 %861, ptr %60, align 4
  %862 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 1
  store i16 0, ptr %862, align 2
  %863 = getelementptr inbounds %struct.i2c_msg, ptr %60, i32 0, i32 3
  store ptr %59, ptr %863, align 4
  %864 = call i32 @i2c_transfer(ptr noundef %852, ptr noundef nonnull %60, i32 noundef 1) #9
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %874, label %866

866:                                              ; preds = %845
  %867 = zext i16 %847 to i32
  %868 = getelementptr inbounds %struct.i2c_adapter, ptr %852, i32 0, i32 9
  %869 = load ptr, ptr %109, align 4
  %870 = getelementptr inbounds %struct.stv_base, ptr %869, i32 0, i32 1
  %871 = load i8, ptr %870, align 4
  %872 = zext i8 %871 to i32
  %873 = zext i8 %849 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %868, ptr noundef nonnull @.str.6, i32 noundef %872, i32 noundef %867, i32 noundef %873) #10
  br label %874

874:                                              ; preds = %866, %845
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %60) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %59) #9
  %875 = load i16, ptr %110, align 4
  %876 = add i16 %875, -3214
  %877 = load i8, ptr %819, align 1
  %878 = load ptr, ptr %109, align 4
  %879 = getelementptr inbounds %struct.stv_base, ptr %878, i32 0, i32 2
  %880 = load ptr, ptr %879, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %57) #9
  %881 = lshr i16 %876, 8
  %882 = trunc i16 %881 to i8
  store i8 %882, ptr %57, align 1
  %883 = getelementptr inbounds i8, ptr %57, i32 1
  %884 = trunc i16 %876 to i8
  store i8 %884, ptr %883, align 1
  %885 = getelementptr inbounds i8, ptr %57, i32 2
  store i8 %877, ptr %885, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %58) #9
  %886 = getelementptr inbounds i8, ptr %58, i32 4
  store i32 3, ptr %886, align 4, !annotation !8
  %887 = getelementptr inbounds %struct.stv_base, ptr %878, i32 0, i32 1
  %888 = load i8, ptr %887, align 4
  %889 = zext i8 %888 to i16
  store i16 %889, ptr %58, align 4
  %890 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 1
  store i16 0, ptr %890, align 2
  %891 = getelementptr inbounds %struct.i2c_msg, ptr %58, i32 0, i32 3
  store ptr %57, ptr %891, align 4
  %892 = call i32 @i2c_transfer(ptr noundef %880, ptr noundef nonnull %58, i32 noundef 1) #9
  %893 = icmp eq i32 %892, 1
  br i1 %893, label %902, label %894

894:                                              ; preds = %874
  %895 = zext i16 %876 to i32
  %896 = getelementptr inbounds %struct.i2c_adapter, ptr %880, i32 0, i32 9
  %897 = load ptr, ptr %109, align 4
  %898 = getelementptr inbounds %struct.stv_base, ptr %897, i32 0, i32 1
  %899 = load i8, ptr %898, align 4
  %900 = zext i8 %899 to i32
  %901 = zext i8 %877 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %896, ptr noundef nonnull @.str.6, i32 noundef %900, i32 noundef %895, i32 noundef %901) #10
  br label %902

902:                                              ; preds = %894, %874
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %58) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %57) #9
  %903 = load i8, ptr %102, align 1
  br label %904

904:                                              ; preds = %902, %170
  %905 = phi i8 [ %903, %902 ], [ %171, %170 ]
  %906 = and i8 %905, 64
  %907 = icmp eq i8 %906, 0
  br i1 %907, label %1303, label %908

908:                                              ; preds = %904
  %909 = load i32, ptr %176, align 4
  %910 = icmp eq i32 %909, 2
  br i1 %910, label %911, label %941

911:                                              ; preds = %908
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %104) #9
  store i8 0, ptr %104, align 1, !annotation !8
  %912 = load i16, ptr %110, align 4
  %913 = add i16 %912, -3223
  %914 = load ptr, ptr %109, align 4
  %915 = getelementptr inbounds %struct.stv_base, ptr %914, i32 0, i32 2
  %916 = load ptr, ptr %915, align 4
  %917 = getelementptr inbounds %struct.stv_base, ptr %914, i32 0, i32 1
  %918 = load i8, ptr %917, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %55) #9
  %919 = lshr i16 %913, 8
  %920 = trunc i16 %919 to i8
  store i8 %920, ptr %55, align 2
  %921 = getelementptr inbounds i8, ptr %55, i32 1
  %922 = trunc i16 %913 to i8
  store i8 %922, ptr %921, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %56) #9
  %923 = getelementptr inbounds i8, ptr %56, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %923, i8 0, i32 16, i1 false) #9, !annotation !8
  %924 = zext i8 %918 to i16
  store i16 %924, ptr %56, align 4
  %925 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 1
  store i16 0, ptr %925, align 2
  store i16 2, ptr %923, align 4
  %926 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 0, i32 3
  store ptr %55, ptr %926, align 4
  %927 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1
  store i16 %924, ptr %927, align 4
  %928 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1, i32 1
  store i16 1, ptr %928, align 2
  %929 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1, i32 2
  store i16 1, ptr %929, align 4
  %930 = getelementptr inbounds %struct.i2c_msg, ptr %56, i32 1, i32 3
  store ptr %104, ptr %930, align 4
  %931 = call i32 @i2c_transfer(ptr noundef %916, ptr noundef nonnull %56, i32 noundef 2) #9
  %932 = icmp eq i32 %931, 2
  br i1 %932, label %937, label %933

933:                                              ; preds = %911
  %934 = zext i16 %913 to i32
  %935 = getelementptr inbounds %struct.i2c_adapter, ptr %916, i32 0, i32 9
  %936 = zext i8 %918 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %935, ptr noundef nonnull @.str.5, i32 noundef %936, i32 noundef %934) #10
  br label %937

937:                                              ; preds = %933, %911
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %56) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %55) #9
  %938 = load i8, ptr %104, align 1
  %939 = and i8 %938, 2
  %940 = icmp eq i8 %939, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %104) #9
  br i1 %940, label %1303, label %971

941:                                              ; preds = %908
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %105) #9
  store i8 0, ptr %105, align 1, !annotation !8
  %942 = load i16, ptr %110, align 4
  %943 = add i16 %942, -3266
  %944 = load ptr, ptr %109, align 4
  %945 = getelementptr inbounds %struct.stv_base, ptr %944, i32 0, i32 2
  %946 = load ptr, ptr %945, align 4
  %947 = getelementptr inbounds %struct.stv_base, ptr %944, i32 0, i32 1
  %948 = load i8, ptr %947, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %53) #9
  %949 = lshr i16 %943, 8
  %950 = trunc i16 %949 to i8
  store i8 %950, ptr %53, align 2
  %951 = getelementptr inbounds i8, ptr %53, i32 1
  %952 = trunc i16 %943 to i8
  store i8 %952, ptr %951, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %54) #9
  %953 = getelementptr inbounds i8, ptr %54, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %953, i8 0, i32 16, i1 false) #9, !annotation !8
  %954 = zext i8 %948 to i16
  store i16 %954, ptr %54, align 4
  %955 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 1
  store i16 0, ptr %955, align 2
  store i16 2, ptr %953, align 4
  %956 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 0, i32 3
  store ptr %53, ptr %956, align 4
  %957 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 1
  store i16 %954, ptr %957, align 4
  %958 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 1, i32 1
  store i16 1, ptr %958, align 2
  %959 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 1, i32 2
  store i16 1, ptr %959, align 4
  %960 = getelementptr inbounds %struct.i2c_msg, ptr %54, i32 1, i32 3
  store ptr %105, ptr %960, align 4
  %961 = call i32 @i2c_transfer(ptr noundef %946, ptr noundef nonnull %54, i32 noundef 2) #9
  %962 = icmp eq i32 %961, 2
  br i1 %962, label %967, label %963

963:                                              ; preds = %941
  %964 = zext i16 %943 to i32
  %965 = getelementptr inbounds %struct.i2c_adapter, ptr %946, i32 0, i32 9
  %966 = zext i8 %948 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %965, ptr noundef nonnull @.str.5, i32 noundef %966, i32 noundef %964) #10
  br label %967

967:                                              ; preds = %963, %941
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %54) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %53) #9
  %968 = load i8, ptr %105, align 1
  %969 = and i8 %968, 8
  %970 = icmp eq i8 %969, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %105) #9
  br i1 %970, label %1303, label %971

971:                                              ; preds = %967, %937
  %972 = load i32, ptr %1, align 4
  %973 = or i32 %972, 16
  store i32 %973, ptr %1, align 4
  %974 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 16
  %975 = load i32, ptr %974, align 4
  %976 = icmp eq i32 %975, 0
  br i1 %976, label %1263, label %977

977:                                              ; preds = %971
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %106) #9
  store i8 0, ptr %106, align 1, !annotation !8
  store i32 0, ptr %974, align 4
  %978 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 11
  %979 = load i32, ptr %978, align 4
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1027, label %981

981:                                              ; preds = %977
  %982 = load i32, ptr %176, align 4
  switch i32 %982, label %1174 [
    i32 2, label %983
    i32 1, label %1023
  ]

983:                                              ; preds = %981
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %52) #9
  store i16 0, ptr %52, align 2, !annotation !8
  %984 = load i16, ptr %110, align 4
  %985 = add i16 %984, -3232
  %986 = load ptr, ptr %109, align 4
  %987 = getelementptr inbounds %struct.stv_base, ptr %986, i32 0, i32 2
  %988 = load ptr, ptr %987, align 4
  %989 = getelementptr inbounds %struct.stv_base, ptr %986, i32 0, i32 1
  %990 = load i8, ptr %989, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %50) #9
  %991 = lshr i16 %985, 8
  %992 = trunc i16 %991 to i8
  store i8 %992, ptr %50, align 2
  %993 = getelementptr inbounds i8, ptr %50, i32 1
  %994 = trunc i16 %985 to i8
  store i8 %994, ptr %993, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %51) #9
  %995 = getelementptr inbounds i8, ptr %51, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %995, i8 0, i32 16, i1 false) #9, !annotation !8
  %996 = zext i8 %990 to i16
  store i16 %996, ptr %51, align 4
  %997 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 1
  store i16 0, ptr %997, align 2
  store i16 2, ptr %995, align 4
  %998 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 0, i32 3
  store ptr %50, ptr %998, align 4
  %999 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 1
  store i16 %996, ptr %999, align 4
  %1000 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 1, i32 1
  store i16 1, ptr %1000, align 2
  %1001 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 1, i32 2
  store i16 2, ptr %1001, align 4
  %1002 = getelementptr inbounds %struct.i2c_msg, ptr %51, i32 1, i32 3
  store ptr %52, ptr %1002, align 4
  %1003 = call i32 @i2c_transfer(ptr noundef %988, ptr noundef nonnull %51, i32 noundef 2) #9
  %1004 = icmp eq i32 %1003, 2
  br i1 %1004, label %1009, label %1005

1005:                                             ; preds = %983
  %1006 = zext i16 %985 to i32
  %1007 = getelementptr inbounds %struct.i2c_adapter, ptr %988, i32 0, i32 9
  %1008 = zext i8 %990 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1007, ptr noundef nonnull @.str.5, i32 noundef %1008, i32 noundef %1006) #10
  br label %1009

1009:                                             ; preds = %1005, %983
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %51) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %50) #9
  %1010 = load i8, ptr %52, align 2
  %1011 = and i8 %1010, 3
  %1012 = zext i8 %1011 to i32
  %1013 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 24
  store i32 %1012, ptr %1013, align 4
  %1014 = lshr i8 %1010, 4
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  %1017 = zext i8 %1016 to i32
  %1018 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 26
  store i32 %1017, ptr %1018, align 4
  %1019 = and i8 %1010, -4
  %1020 = icmp eq i8 %1019, -16
  %1021 = zext i1 %1020 to i32
  %1022 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 25
  store i32 %1021, ptr %1022, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %52) #9
  br label %1027

1023:                                             ; preds = %981
  %1024 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 26
  store i32 0, ptr %1024, align 4
  %1025 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 25
  store i32 1, ptr %1025, align 4
  %1026 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 24
  store i32 0, ptr %1026, align 4
  br label %1027

1027:                                             ; preds = %1023, %1009, %977
  %1028 = load i32, ptr %176, align 4
  %1029 = icmp eq i32 %1028, 2
  br i1 %1029, label %1030, label %1174

1030:                                             ; preds = %1027
  %1031 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 17
  %1032 = load i8, ptr %1031, align 4
  %1033 = and i8 %1032, 123
  store i8 %1033, ptr %1031, align 4
  %1034 = load i16, ptr %110, align 4
  %1035 = add i16 %1034, -3568
  %1036 = load ptr, ptr %109, align 4
  %1037 = getelementptr inbounds %struct.stv_base, ptr %1036, i32 0, i32 2
  %1038 = load ptr, ptr %1037, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %48) #9
  %1039 = lshr i16 %1035, 8
  %1040 = trunc i16 %1039 to i8
  store i8 %1040, ptr %48, align 1
  %1041 = getelementptr inbounds i8, ptr %48, i32 1
  %1042 = trunc i16 %1035 to i8
  store i8 %1042, ptr %1041, align 1
  %1043 = getelementptr inbounds i8, ptr %48, i32 2
  store i8 %1033, ptr %1043, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %49) #9
  %1044 = getelementptr inbounds i8, ptr %49, i32 4
  store i32 3, ptr %1044, align 4, !annotation !8
  %1045 = getelementptr inbounds %struct.stv_base, ptr %1036, i32 0, i32 1
  %1046 = load i8, ptr %1045, align 4
  %1047 = zext i8 %1046 to i16
  store i16 %1047, ptr %49, align 4
  %1048 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 1
  store i16 0, ptr %1048, align 2
  %1049 = getelementptr inbounds %struct.i2c_msg, ptr %49, i32 0, i32 3
  store ptr %48, ptr %1049, align 4
  %1050 = call i32 @i2c_transfer(ptr noundef %1038, ptr noundef nonnull %49, i32 noundef 1) #9
  %1051 = icmp eq i32 %1050, 1
  br i1 %1051, label %1060, label %1052

1052:                                             ; preds = %1030
  %1053 = zext i16 %1035 to i32
  %1054 = getelementptr inbounds %struct.i2c_adapter, ptr %1038, i32 0, i32 9
  %1055 = load ptr, ptr %109, align 4
  %1056 = getelementptr inbounds %struct.stv_base, ptr %1055, i32 0, i32 1
  %1057 = load i8, ptr %1056, align 4
  %1058 = zext i8 %1057 to i32
  %1059 = zext i8 %1033 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1054, ptr noundef nonnull @.str.6, i32 noundef %1058, i32 noundef %1053, i32 noundef %1059) #10
  br label %1060

1060:                                             ; preds = %1052, %1030
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %49) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %48) #9
  %1061 = load i16, ptr %110, align 4
  %1062 = add i16 %1061, -3247
  %1063 = load ptr, ptr %109, align 4
  %1064 = getelementptr inbounds %struct.stv_base, ptr %1063, i32 0, i32 2
  %1065 = load ptr, ptr %1064, align 4
  %1066 = getelementptr inbounds %struct.stv_base, ptr %1063, i32 0, i32 1
  %1067 = load i8, ptr %1066, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %46) #9
  %1068 = lshr i16 %1062, 8
  %1069 = trunc i16 %1068 to i8
  store i8 %1069, ptr %46, align 2
  %1070 = getelementptr inbounds i8, ptr %46, i32 1
  %1071 = trunc i16 %1062 to i8
  store i8 %1071, ptr %1070, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %47) #9
  %1072 = getelementptr inbounds i8, ptr %47, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1072, i8 0, i32 16, i1 false) #9, !annotation !8
  %1073 = zext i8 %1067 to i16
  store i16 %1073, ptr %47, align 4
  %1074 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 1
  store i16 0, ptr %1074, align 2
  store i16 2, ptr %1072, align 4
  %1075 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 0, i32 3
  store ptr %46, ptr %1075, align 4
  %1076 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1
  store i16 %1073, ptr %1076, align 4
  %1077 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1, i32 1
  store i16 1, ptr %1077, align 2
  %1078 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1, i32 2
  store i16 1, ptr %1078, align 4
  %1079 = getelementptr inbounds %struct.i2c_msg, ptr %47, i32 1, i32 3
  store ptr %106, ptr %1079, align 4
  %1080 = call i32 @i2c_transfer(ptr noundef %1065, ptr noundef nonnull %47, i32 noundef 2) #9
  %1081 = icmp eq i32 %1080, 2
  br i1 %1081, label %1086, label %1082

1082:                                             ; preds = %1060
  %1083 = zext i16 %1062 to i32
  %1084 = getelementptr inbounds %struct.i2c_adapter, ptr %1065, i32 0, i32 9
  %1085 = zext i8 %1067 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1084, ptr noundef nonnull @.str.5, i32 noundef %1085, i32 noundef %1083) #10
  br label %1086

1086:                                             ; preds = %1082, %1060
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %47) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %46) #9
  %1087 = load i8, ptr %106, align 1
  %1088 = or i8 %1087, 64
  store i8 %1088, ptr %106, align 1
  %1089 = load i16, ptr %110, align 4
  %1090 = add i16 %1089, -3247
  %1091 = load ptr, ptr %109, align 4
  %1092 = getelementptr inbounds %struct.stv_base, ptr %1091, i32 0, i32 2
  %1093 = load ptr, ptr %1092, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %44) #9
  %1094 = lshr i16 %1090, 8
  %1095 = trunc i16 %1094 to i8
  store i8 %1095, ptr %44, align 1
  %1096 = getelementptr inbounds i8, ptr %44, i32 1
  %1097 = trunc i16 %1090 to i8
  store i8 %1097, ptr %1096, align 1
  %1098 = getelementptr inbounds i8, ptr %44, i32 2
  store i8 %1088, ptr %1098, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #9
  %1099 = getelementptr inbounds i8, ptr %45, i32 4
  store i32 3, ptr %1099, align 4, !annotation !8
  %1100 = getelementptr inbounds %struct.stv_base, ptr %1091, i32 0, i32 1
  %1101 = load i8, ptr %1100, align 4
  %1102 = zext i8 %1101 to i16
  store i16 %1102, ptr %45, align 4
  %1103 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 1
  store i16 0, ptr %1103, align 2
  %1104 = getelementptr inbounds %struct.i2c_msg, ptr %45, i32 0, i32 3
  store ptr %44, ptr %1104, align 4
  %1105 = call i32 @i2c_transfer(ptr noundef %1093, ptr noundef nonnull %45, i32 noundef 1) #9
  %1106 = icmp eq i32 %1105, 1
  br i1 %1106, label %1115, label %1107

1107:                                             ; preds = %1086
  %1108 = zext i16 %1090 to i32
  %1109 = getelementptr inbounds %struct.i2c_adapter, ptr %1093, i32 0, i32 9
  %1110 = load ptr, ptr %109, align 4
  %1111 = getelementptr inbounds %struct.stv_base, ptr %1110, i32 0, i32 1
  %1112 = load i8, ptr %1111, align 4
  %1113 = zext i8 %1112 to i32
  %1114 = zext i8 %1088 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1109, ptr noundef nonnull @.str.6, i32 noundef %1113, i32 noundef %1108, i32 noundef %1114) #10
  br label %1115

1115:                                             ; preds = %1107, %1086
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %44) #9
  %1116 = load i8, ptr %106, align 1
  %1117 = and i8 %1116, -65
  store i8 %1117, ptr %106, align 1
  %1118 = load i16, ptr %110, align 4
  %1119 = add i16 %1118, -3247
  %1120 = load ptr, ptr %109, align 4
  %1121 = getelementptr inbounds %struct.stv_base, ptr %1120, i32 0, i32 2
  %1122 = load ptr, ptr %1121, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %42) #9
  %1123 = lshr i16 %1119, 8
  %1124 = trunc i16 %1123 to i8
  store i8 %1124, ptr %42, align 1
  %1125 = getelementptr inbounds i8, ptr %42, i32 1
  %1126 = trunc i16 %1119 to i8
  store i8 %1126, ptr %1125, align 1
  %1127 = getelementptr inbounds i8, ptr %42, i32 2
  store i8 %1117, ptr %1127, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #9
  %1128 = getelementptr inbounds i8, ptr %43, i32 4
  store i32 3, ptr %1128, align 4, !annotation !8
  %1129 = getelementptr inbounds %struct.stv_base, ptr %1120, i32 0, i32 1
  %1130 = load i8, ptr %1129, align 4
  %1131 = zext i8 %1130 to i16
  store i16 %1131, ptr %43, align 4
  %1132 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 1
  store i16 0, ptr %1132, align 2
  %1133 = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 3
  store ptr %42, ptr %1133, align 4
  %1134 = call i32 @i2c_transfer(ptr noundef %1122, ptr noundef nonnull %43, i32 noundef 1) #9
  %1135 = icmp eq i32 %1134, 1
  br i1 %1135, label %1144, label %1136

1136:                                             ; preds = %1115
  %1137 = zext i16 %1119 to i32
  %1138 = getelementptr inbounds %struct.i2c_adapter, ptr %1122, i32 0, i32 9
  %1139 = load ptr, ptr %109, align 4
  %1140 = getelementptr inbounds %struct.stv_base, ptr %1139, i32 0, i32 1
  %1141 = load i8, ptr %1140, align 4
  %1142 = zext i8 %1141 to i32
  %1143 = zext i8 %1117 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1138, ptr noundef nonnull @.str.6, i32 noundef %1142, i32 noundef %1137, i32 noundef %1143) #10
  br label %1144

1144:                                             ; preds = %1136, %1115
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %42) #9
  %1145 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 30
  store i8 2, ptr %1145, align 4
  %1146 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 28
  store i32 0, ptr %1146, align 4
  %1147 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 29
  store i32 1, ptr %1147, align 4
  %1148 = load i16, ptr %110, align 4
  %1149 = add i16 %1148, -3176
  %1150 = load ptr, ptr %109, align 4
  %1151 = getelementptr inbounds %struct.stv_base, ptr %1150, i32 0, i32 2
  %1152 = load ptr, ptr %1151, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %40) #9
  %1153 = lshr i16 %1149, 8
  %1154 = trunc i16 %1153 to i8
  store i8 %1154, ptr %40, align 1
  %1155 = getelementptr inbounds i8, ptr %40, i32 1
  %1156 = trunc i16 %1149 to i8
  store i8 %1156, ptr %1155, align 1
  %1157 = getelementptr inbounds i8, ptr %40, i32 2
  store i8 34, ptr %1157, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #9
  %1158 = getelementptr inbounds i8, ptr %41, i32 4
  store i32 3, ptr %1158, align 4, !annotation !8
  %1159 = getelementptr inbounds %struct.stv_base, ptr %1150, i32 0, i32 1
  %1160 = load i8, ptr %1159, align 4
  %1161 = zext i8 %1160 to i16
  store i16 %1161, ptr %41, align 4
  %1162 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 1
  store i16 0, ptr %1162, align 2
  %1163 = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  store ptr %40, ptr %1163, align 4
  %1164 = call i32 @i2c_transfer(ptr noundef %1152, ptr noundef nonnull %41, i32 noundef 1) #9
  %1165 = icmp eq i32 %1164, 1
  br i1 %1165, label %1173, label %1166

1166:                                             ; preds = %1144
  %1167 = zext i16 %1149 to i32
  %1168 = getelementptr inbounds %struct.i2c_adapter, ptr %1152, i32 0, i32 9
  %1169 = load ptr, ptr %109, align 4
  %1170 = getelementptr inbounds %struct.stv_base, ptr %1169, i32 0, i32 1
  %1171 = load i8, ptr %1170, align 4
  %1172 = zext i8 %1171 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1168, ptr noundef nonnull @.str.6, i32 noundef %1172, i32 noundef %1167, i32 noundef 34) #10
  br label %1173

1173:                                             ; preds = %1166, %1144
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %40) #9
  br label %1204

1174:                                             ; preds = %1027, %981
  %1175 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 30
  store i8 2, ptr %1175, align 4
  %1176 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 28
  store i32 0, ptr %1176, align 4
  %1177 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 29
  store i32 1, ptr %1177, align 4
  %1178 = load i16, ptr %110, align 4
  %1179 = add i16 %1178, -3176
  %1180 = load ptr, ptr %109, align 4
  %1181 = getelementptr inbounds %struct.stv_base, ptr %1180, i32 0, i32 2
  %1182 = load ptr, ptr %1181, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %38) #9
  %1183 = lshr i16 %1179, 8
  %1184 = trunc i16 %1183 to i8
  store i8 %1184, ptr %38, align 1
  %1185 = getelementptr inbounds i8, ptr %38, i32 1
  %1186 = trunc i16 %1179 to i8
  store i8 %1186, ptr %1185, align 1
  %1187 = getelementptr inbounds i8, ptr %38, i32 2
  store i8 34, ptr %1187, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #9
  %1188 = getelementptr inbounds i8, ptr %39, i32 4
  store i32 3, ptr %1188, align 4, !annotation !8
  %1189 = getelementptr inbounds %struct.stv_base, ptr %1180, i32 0, i32 1
  %1190 = load i8, ptr %1189, align 4
  %1191 = zext i8 %1190 to i16
  store i16 %1191, ptr %39, align 4
  %1192 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 1
  store i16 0, ptr %1192, align 2
  %1193 = getelementptr inbounds %struct.i2c_msg, ptr %39, i32 0, i32 3
  store ptr %38, ptr %1193, align 4
  %1194 = call i32 @i2c_transfer(ptr noundef %1182, ptr noundef nonnull %39, i32 noundef 1) #9
  %1195 = icmp eq i32 %1194, 1
  br i1 %1195, label %1203, label %1196

1196:                                             ; preds = %1174
  %1197 = zext i16 %1179 to i32
  %1198 = getelementptr inbounds %struct.i2c_adapter, ptr %1182, i32 0, i32 9
  %1199 = load ptr, ptr %109, align 4
  %1200 = getelementptr inbounds %struct.stv_base, ptr %1199, i32 0, i32 1
  %1201 = load i8, ptr %1200, align 4
  %1202 = zext i8 %1201 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1198, ptr noundef nonnull @.str.6, i32 noundef %1202, i32 noundef %1197, i32 noundef 34) #10
  br label %1203

1203:                                             ; preds = %1196, %1174
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %38) #9
  br label %1204

1204:                                             ; preds = %1203, %1173
  %1205 = load i16, ptr %110, align 4
  %1206 = add i16 %1205, -3160
  %1207 = load ptr, ptr %109, align 4
  %1208 = getelementptr inbounds %struct.stv_base, ptr %1207, i32 0, i32 2
  %1209 = load ptr, ptr %1208, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %36) #9
  %1210 = lshr i16 %1206, 8
  %1211 = trunc i16 %1210 to i8
  store i8 %1211, ptr %36, align 1
  %1212 = getelementptr inbounds i8, ptr %36, i32 1
  %1213 = trunc i16 %1206 to i8
  store i8 %1213, ptr %1212, align 1
  %1214 = getelementptr inbounds i8, ptr %36, i32 2
  store i8 0, ptr %1214, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #9
  %1215 = getelementptr inbounds i8, ptr %37, i32 4
  store i32 3, ptr %1215, align 4, !annotation !8
  %1216 = getelementptr inbounds %struct.stv_base, ptr %1207, i32 0, i32 1
  %1217 = load i8, ptr %1216, align 4
  %1218 = zext i8 %1217 to i16
  store i16 %1218, ptr %37, align 4
  %1219 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 1
  store i16 0, ptr %1219, align 2
  %1220 = getelementptr inbounds %struct.i2c_msg, ptr %37, i32 0, i32 3
  store ptr %36, ptr %1220, align 4
  %1221 = call i32 @i2c_transfer(ptr noundef %1209, ptr noundef nonnull %37, i32 noundef 1) #9
  %1222 = icmp eq i32 %1221, 1
  br i1 %1222, label %1230, label %1223

1223:                                             ; preds = %1204
  %1224 = zext i16 %1206 to i32
  %1225 = getelementptr inbounds %struct.i2c_adapter, ptr %1209, i32 0, i32 9
  %1226 = load ptr, ptr %109, align 4
  %1227 = getelementptr inbounds %struct.stv_base, ptr %1226, i32 0, i32 1
  %1228 = load i8, ptr %1227, align 4
  %1229 = zext i8 %1228 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1225, ptr noundef nonnull @.str.6, i32 noundef %1229, i32 noundef %1224, i32 noundef 0) #10
  br label %1230

1230:                                             ; preds = %1223, %1204
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %36) #9
  %1231 = load i16, ptr %110, align 4
  %1232 = add i16 %1231, -3172
  %1233 = load ptr, ptr %109, align 4
  %1234 = getelementptr inbounds %struct.stv_base, ptr %1233, i32 0, i32 2
  %1235 = load ptr, ptr %1234, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %34) #9
  %1236 = lshr i16 %1232, 8
  %1237 = trunc i16 %1236 to i8
  store i8 %1237, ptr %34, align 1
  %1238 = getelementptr inbounds i8, ptr %34, i32 1
  %1239 = trunc i16 %1232 to i8
  store i8 %1239, ptr %1238, align 1
  %1240 = getelementptr inbounds i8, ptr %34, i32 2
  store i8 -63, ptr %1240, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #9
  %1241 = getelementptr inbounds i8, ptr %35, i32 4
  store i32 3, ptr %1241, align 4, !annotation !8
  %1242 = getelementptr inbounds %struct.stv_base, ptr %1233, i32 0, i32 1
  %1243 = load i8, ptr %1242, align 4
  %1244 = zext i8 %1243 to i16
  store i16 %1244, ptr %35, align 4
  %1245 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 1
  store i16 0, ptr %1245, align 2
  %1246 = getelementptr inbounds %struct.i2c_msg, ptr %35, i32 0, i32 3
  store ptr %34, ptr %1246, align 4
  %1247 = call i32 @i2c_transfer(ptr noundef %1235, ptr noundef nonnull %35, i32 noundef 1) #9
  %1248 = icmp eq i32 %1247, 1
  br i1 %1248, label %1256, label %1249

1249:                                             ; preds = %1230
  %1250 = zext i16 %1232 to i32
  %1251 = getelementptr inbounds %struct.i2c_adapter, ptr %1235, i32 0, i32 9
  %1252 = load ptr, ptr %109, align 4
  %1253 = getelementptr inbounds %struct.stv_base, ptr %1252, i32 0, i32 1
  %1254 = load i8, ptr %1253, align 4
  %1255 = zext i8 %1254 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1251, ptr noundef nonnull @.str.6, i32 noundef %1255, i32 noundef %1250, i32 noundef 193) #10
  br label %1256

1256:                                             ; preds = %1249, %1230
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %34) #9
  call fastcc void @set_vth_default(ptr noundef %109)
  %1257 = load i32, ptr %176, align 4
  %1258 = icmp eq i32 %1257, 1
  br i1 %1258, label %1259, label %1262

1259:                                             ; preds = %1256
  %1260 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 20
  %1261 = load i32, ptr %1260, align 4
  call fastcc void @enable_puncture_rate(ptr noundef %109, i32 noundef %1261)
  br label %1262

1262:                                             ; preds = %1259, %1256
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %106) #9
  br label %1263

1263:                                             ; preds = %1262, %971
  %1264 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 26
  %1265 = load i32, ptr %1264, align 4
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1303, label %1267

1267:                                             ; preds = %1263
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %107) #9
  store i8 0, ptr %107, align 1, !annotation !8
  %1268 = load i16, ptr %110, align 4
  %1269 = add i16 %1268, -3567
  %1270 = load ptr, ptr %109, align 4
  %1271 = getelementptr inbounds %struct.stv_base, ptr %1270, i32 0, i32 2
  %1272 = load ptr, ptr %1271, align 4
  %1273 = getelementptr inbounds %struct.stv_base, ptr %1270, i32 0, i32 1
  %1274 = load i8, ptr %1273, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %32) #9
  %1275 = lshr i16 %1269, 8
  %1276 = trunc i16 %1275 to i8
  store i8 %1276, ptr %32, align 2
  %1277 = getelementptr inbounds i8, ptr %32, i32 1
  %1278 = trunc i16 %1269 to i8
  store i8 %1278, ptr %1277, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #9
  %1279 = getelementptr inbounds i8, ptr %33, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1279, i8 0, i32 16, i1 false) #9, !annotation !8
  %1280 = zext i8 %1274 to i16
  store i16 %1280, ptr %33, align 4
  %1281 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %1281, align 2
  store i16 2, ptr %1279, align 4
  %1282 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %32, ptr %1282, align 4
  %1283 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1
  store i16 %1280, ptr %1283, align 4
  %1284 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 1
  store i16 1, ptr %1284, align 2
  %1285 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 2
  store i16 1, ptr %1285, align 4
  %1286 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 1, i32 3
  store ptr %107, ptr %1286, align 4
  %1287 = call i32 @i2c_transfer(ptr noundef %1272, ptr noundef nonnull %33, i32 noundef 2) #9
  %1288 = icmp eq i32 %1287, 2
  br i1 %1288, label %1293, label %1289

1289:                                             ; preds = %1267
  %1290 = zext i16 %1269 to i32
  %1291 = getelementptr inbounds %struct.i2c_adapter, ptr %1272, i32 0, i32 9
  %1292 = zext i8 %1274 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1291, ptr noundef nonnull @.str.5, i32 noundef %1292, i32 noundef %1290) #10
  br label %1293

1293:                                             ; preds = %1289, %1267
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %32) #9
  %1294 = load i8, ptr %107, align 1
  %1295 = lshr i8 %1294, 2
  %1296 = and i8 %1295, 31
  %1297 = zext i8 %1296 to i32
  %1298 = getelementptr inbounds %struct.stv, ptr %109, i32 0, i32 21
  %1299 = load i32, ptr %1298, align 4
  %1300 = icmp ult i32 %1299, %1297
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1293
  store i32 %1297, ptr %1298, align 4
  br label %1302

1302:                                             ; preds = %1301, %1293
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %107) #9
  br label %1303

1303:                                             ; preds = %1302, %1263, %967, %937, %904
  %1304 = load ptr, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %31) #9
  store i16 0, ptr %31, align 2, !annotation !8
  %1305 = getelementptr inbounds %struct.stv, ptr %1304, i32 0, i32 3
  %1306 = load i16, ptr %1305, align 4
  %1307 = add i16 %1306, -3570
  %1308 = load ptr, ptr %1304, align 4
  %1309 = getelementptr inbounds %struct.stv_base, ptr %1308, i32 0, i32 2
  %1310 = load ptr, ptr %1309, align 4
  %1311 = getelementptr inbounds %struct.stv_base, ptr %1308, i32 0, i32 1
  %1312 = load i8, ptr %1311, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #9
  %1313 = lshr i16 %1307, 8
  %1314 = trunc i16 %1313 to i8
  store i8 %1314, ptr %29, align 2
  %1315 = getelementptr inbounds i8, ptr %29, i32 1
  %1316 = trunc i16 %1307 to i8
  store i8 %1316, ptr %1315, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %30) #9
  %1317 = getelementptr inbounds i8, ptr %30, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1317, i8 0, i32 16, i1 false) #9, !annotation !8
  %1318 = zext i8 %1312 to i16
  store i16 %1318, ptr %30, align 4
  %1319 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %1319, align 2
  store i16 2, ptr %1317, align 4
  %1320 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  store ptr %29, ptr %1320, align 4
  %1321 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1
  store i16 %1318, ptr %1321, align 4
  %1322 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 1
  store i16 1, ptr %1322, align 2
  %1323 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 2
  store i16 2, ptr %1323, align 4
  %1324 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 1, i32 3
  store ptr %31, ptr %1324, align 4
  %1325 = call i32 @i2c_transfer(ptr noundef %1310, ptr noundef nonnull %30, i32 noundef 2) #9
  %1326 = icmp eq i32 %1325, 2
  br i1 %1326, label %1331, label %1327

1327:                                             ; preds = %1303
  %1328 = zext i16 %1307 to i32
  %1329 = getelementptr inbounds %struct.i2c_adapter, ptr %1310, i32 0, i32 9
  %1330 = zext i8 %1312 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1329, ptr noundef nonnull @.str.5, i32 noundef %1330, i32 noundef %1328) #10
  br label %1331

1331:                                             ; preds = %1327, %1303
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %30) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #9
  %1332 = load i8, ptr %31, align 2
  %1333 = getelementptr inbounds [2 x i8], ptr %31, i32 0, i32 1
  %1334 = load i8, ptr %1333, align 1
  %1335 = getelementptr inbounds i8, ptr %27, i32 1
  %1336 = getelementptr inbounds i8, ptr %28, i32 4
  %1337 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  %1338 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  %1339 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1
  %1340 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 1
  %1341 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 2
  %1342 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 1, i32 3
  br label %1343

1343:                                             ; preds = %1363, %1331
  %1344 = phi i32 [ 0, %1331 ], [ %1372, %1363 ]
  %1345 = phi i32 [ 0, %1331 ], [ %1371, %1363 ]
  %1346 = load i16, ptr %1305, align 4
  %1347 = add i16 %1346, -3574
  %1348 = load ptr, ptr %1304, align 4
  %1349 = getelementptr inbounds %struct.stv_base, ptr %1348, i32 0, i32 2
  %1350 = load ptr, ptr %1349, align 4
  %1351 = getelementptr inbounds %struct.stv_base, ptr %1348, i32 0, i32 1
  %1352 = load i8, ptr %1351, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %27) #9
  %1353 = lshr i16 %1347, 8
  %1354 = trunc i16 %1353 to i8
  store i8 %1354, ptr %27, align 2
  %1355 = trunc i16 %1347 to i8
  store i8 %1355, ptr %1335, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1336, i8 0, i32 16, i1 false) #9, !annotation !8
  %1356 = zext i8 %1352 to i16
  store i16 %1356, ptr %28, align 4
  store i16 0, ptr %1337, align 2
  store i16 2, ptr %1336, align 4
  store ptr %27, ptr %1338, align 4
  store i16 %1356, ptr %1339, align 4
  store i16 1, ptr %1340, align 2
  store i16 2, ptr %1341, align 4
  store ptr %31, ptr %1342, align 4
  %1357 = call i32 @i2c_transfer(ptr noundef %1350, ptr noundef nonnull %28, i32 noundef 2) #9
  %1358 = icmp eq i32 %1357, 2
  br i1 %1358, label %1363, label %1359

1359:                                             ; preds = %1343
  %1360 = zext i16 %1347 to i32
  %1361 = getelementptr inbounds %struct.i2c_adapter, ptr %1350, i32 0, i32 9
  %1362 = zext i8 %1352 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1361, ptr noundef nonnull @.str.5, i32 noundef %1362, i32 noundef %1360) #10
  br label %1363

1363:                                             ; preds = %1359, %1343
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %27) #9
  %1364 = load i8, ptr %31, align 2
  %1365 = zext i8 %1364 to i32
  %1366 = mul nuw nsw i32 %1365, %1365
  %1367 = load i8, ptr %1333, align 1
  %1368 = zext i8 %1367 to i32
  %1369 = mul nuw nsw i32 %1368, %1368
  %1370 = add i32 %1366, %1345
  %1371 = add i32 %1370, %1369
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 4000, i32 noundef 2) #9
  %1372 = add nuw nsw i32 %1344, 1
  %1373 = icmp eq i32 %1372, 5
  br i1 %1373, label %1374, label %1343

1374:                                             ; preds = %1363
  %1375 = sdiv i32 %1371, 5
  %1376 = icmp ult i32 %1375, 118000
  br i1 %1376, label %1377, label %1418

1377:                                             ; preds = %1374
  %1378 = icmp ugt i32 %1375, 1000
  br i1 %1378, label %1379, label %1418

1379:                                             ; preds = %1396, %1377
  %1380 = phi i32 [ %1398, %1396 ], [ 118000, %1377 ]
  %1381 = phi i32 [ %1393, %1396 ], [ 15, %1377 ]
  %1382 = phi i32 [ %1392, %1396 ], [ 0, %1377 ]
  %1383 = add i32 %1382, %1381
  %1384 = sdiv i32 %1383, 2
  %1385 = icmp ult i32 %1380, %1375
  br i1 %1385, label %1390, label %1386

1386:                                             ; preds = %1379
  %1387 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %1384, i32 1
  %1388 = load i32, ptr %1387, align 4
  %1389 = icmp ugt i32 %1388, %1375
  br i1 %1389, label %1390, label %1391

1390:                                             ; preds = %1386, %1379
  br label %1391

1391:                                             ; preds = %1390, %1386
  %1392 = phi i32 [ %1384, %1390 ], [ %1382, %1386 ]
  %1393 = phi i32 [ %1381, %1390 ], [ %1384, %1386 ]
  %1394 = sub i32 %1393, %1392
  %1395 = icmp sgt i32 %1394, 1
  br i1 %1395, label %1396, label %1399

1396:                                             ; preds = %1391
  %1397 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %1392, i32 1
  %1398 = load i32, ptr %1397, align 4
  br label %1379

1399:                                             ; preds = %1391
  %1400 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %1393, i32 1
  %1401 = load i32, ptr %1400, align 4
  %1402 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %1392, i32 1
  %1403 = load i32, ptr %1402, align 4
  %1404 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %1392
  %1405 = load i16, ptr %1404, align 4
  %1406 = sext i16 %1405 to i32
  %1407 = icmp eq i32 %1401, %1403
  br i1 %1407, label %1418, label %1408

1408:                                             ; preds = %1399
  %1409 = sub i32 %1401, %1403
  %1410 = getelementptr %struct.slookup, ptr @padc_lookup, i32 %1393
  %1411 = sub i32 %1375, %1403
  %1412 = load i16, ptr %1410, align 4
  %1413 = sext i16 %1412 to i32
  %1414 = sub nsw i32 %1413, %1406
  %1415 = mul i32 %1414, %1411
  %1416 = sdiv i32 %1415, %1409
  %1417 = add i32 %1416, %1406
  br label %1418

1418:                                             ; preds = %1408, %1399, %1377, %1374
  %1419 = phi i32 [ %1417, %1408 ], [ %1406, %1399 ], [ 0, %1374 ], [ -2100, %1377 ]
  %1420 = zext i8 %1332 to i32
  %1421 = mul nsw i32 %1420, -256
  %1422 = zext i8 %1334 to i32
  %1423 = getelementptr inbounds %struct.stv, ptr %1304, i32 0, i32 1, i32 8, i32 42, i32 1
  store i8 1, ptr %1423, align 1
  %1424 = sub nuw nsw i32 352, %1422
  %1425 = add nsw i32 %1424, %1421
  %1426 = add i32 %1425, %1419
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds %struct.stv, ptr %1304, i32 0, i32 1, i32 8, i32 42, i32 1, i32 0, i32 1
  store i64 %1427, ptr %1428, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %31) #9
  %1429 = load i32, ptr %1, align 4
  %1430 = and i32 %1429, 2
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1617, label %1432

1432:                                             ; preds = %1418
  %1433 = load ptr, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25) #9
  store i8 0, ptr %25, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26) #9
  store i8 0, ptr %26, align 1, !annotation !8
  %1434 = getelementptr inbounds %struct.stv, ptr %1433, i32 0, i32 11
  %1435 = load i32, ptr %1434, align 4
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1615, label %1437

1437:                                             ; preds = %1432
  %1438 = getelementptr inbounds %struct.stv, ptr %1433, i32 0, i32 13
  %1439 = load i32, ptr %1438, align 4
  %1440 = icmp eq i32 %1439, 2
  %1441 = getelementptr inbounds %struct.stv, ptr %1433, i32 0, i32 3
  %1442 = load i16, ptr %1441, align 4
  br i1 %1440, label %1443, label %1495

1443:                                             ; preds = %1437
  %1444 = add i16 %1442, -3452
  %1445 = load ptr, ptr %1433, align 4
  %1446 = getelementptr inbounds %struct.stv_base, ptr %1445, i32 0, i32 2
  %1447 = load ptr, ptr %1446, align 4
  %1448 = getelementptr inbounds %struct.stv_base, ptr %1445, i32 0, i32 1
  %1449 = load i8, ptr %1448, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #9
  %1450 = lshr i16 %1444, 8
  %1451 = trunc i16 %1450 to i8
  store i8 %1451, ptr %23, align 2
  %1452 = getelementptr inbounds i8, ptr %23, i32 1
  %1453 = trunc i16 %1444 to i8
  store i8 %1453, ptr %1452, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #9
  %1454 = getelementptr inbounds i8, ptr %24, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1454, i8 0, i32 16, i1 false) #9, !annotation !8
  %1455 = zext i8 %1449 to i16
  store i16 %1455, ptr %24, align 4
  %1456 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %1456, align 2
  store i16 2, ptr %1454, align 4
  %1457 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %23, ptr %1457, align 4
  %1458 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1
  store i16 %1455, ptr %1458, align 4
  %1459 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 1
  store i16 1, ptr %1459, align 2
  %1460 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 2
  store i16 1, ptr %1460, align 4
  %1461 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 1, i32 3
  store ptr %26, ptr %1461, align 4
  %1462 = call i32 @i2c_transfer(ptr noundef %1447, ptr noundef nonnull %24, i32 noundef 2) #9
  %1463 = icmp eq i32 %1462, 2
  br i1 %1463, label %1468, label %1464

1464:                                             ; preds = %1443
  %1465 = zext i16 %1444 to i32
  %1466 = getelementptr inbounds %struct.i2c_adapter, ptr %1447, i32 0, i32 9
  %1467 = zext i8 %1449 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1466, ptr noundef nonnull @.str.5, i32 noundef %1467, i32 noundef %1465) #10
  br label %1468

1468:                                             ; preds = %1464, %1443
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #9
  %1469 = load i16, ptr %1441, align 4
  %1470 = add i16 %1469, -3451
  %1471 = load ptr, ptr %1433, align 4
  %1472 = getelementptr inbounds %struct.stv_base, ptr %1471, i32 0, i32 2
  %1473 = load ptr, ptr %1472, align 4
  %1474 = getelementptr inbounds %struct.stv_base, ptr %1471, i32 0, i32 1
  %1475 = load i8, ptr %1474, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %21) #9
  %1476 = lshr i16 %1470, 8
  %1477 = trunc i16 %1476 to i8
  store i8 %1477, ptr %21, align 2
  %1478 = getelementptr inbounds i8, ptr %21, i32 1
  %1479 = trunc i16 %1470 to i8
  store i8 %1479, ptr %1478, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #9
  %1480 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1480, i8 0, i32 16, i1 false) #9, !annotation !8
  %1481 = zext i8 %1475 to i16
  store i16 %1481, ptr %22, align 4
  %1482 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %1482, align 2
  store i16 2, ptr %1480, align 4
  %1483 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %21, ptr %1483, align 4
  %1484 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  store i16 %1481, ptr %1484, align 4
  %1485 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %1485, align 2
  %1486 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 1, ptr %1486, align 4
  %1487 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %25, ptr %1487, align 4
  %1488 = call i32 @i2c_transfer(ptr noundef %1473, ptr noundef nonnull %22, i32 noundef 2) #9
  %1489 = icmp eq i32 %1488, 2
  br i1 %1489, label %1494, label %1490

1490:                                             ; preds = %1468
  %1491 = zext i16 %1470 to i32
  %1492 = getelementptr inbounds %struct.i2c_adapter, ptr %1473, i32 0, i32 9
  %1493 = zext i8 %1475 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1492, ptr noundef nonnull @.str.5, i32 noundef %1493, i32 noundef %1491) #10
  br label %1494

1494:                                             ; preds = %1490, %1468
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %21) #9
  br label %1547

1495:                                             ; preds = %1437
  %1496 = add i16 %1442, -3456
  %1497 = load ptr, ptr %1433, align 4
  %1498 = getelementptr inbounds %struct.stv_base, ptr %1497, i32 0, i32 2
  %1499 = load ptr, ptr %1498, align 4
  %1500 = getelementptr inbounds %struct.stv_base, ptr %1497, i32 0, i32 1
  %1501 = load i8, ptr %1500, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %19) #9
  %1502 = lshr i16 %1496, 8
  %1503 = trunc i16 %1502 to i8
  store i8 %1503, ptr %19, align 2
  %1504 = getelementptr inbounds i8, ptr %19, i32 1
  %1505 = trunc i16 %1496 to i8
  store i8 %1505, ptr %1504, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %20) #9
  %1506 = getelementptr inbounds i8, ptr %20, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1506, i8 0, i32 16, i1 false) #9, !annotation !8
  %1507 = zext i8 %1501 to i16
  store i16 %1507, ptr %20, align 4
  %1508 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %1508, align 2
  store i16 2, ptr %1506, align 4
  %1509 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr %19, ptr %1509, align 4
  %1510 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1
  store i16 %1507, ptr %1510, align 4
  %1511 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 1
  store i16 1, ptr %1511, align 2
  %1512 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 2
  store i16 1, ptr %1512, align 4
  %1513 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 1, i32 3
  store ptr %26, ptr %1513, align 4
  %1514 = call i32 @i2c_transfer(ptr noundef %1499, ptr noundef nonnull %20, i32 noundef 2) #9
  %1515 = icmp eq i32 %1514, 2
  br i1 %1515, label %1520, label %1516

1516:                                             ; preds = %1495
  %1517 = zext i16 %1496 to i32
  %1518 = getelementptr inbounds %struct.i2c_adapter, ptr %1499, i32 0, i32 9
  %1519 = zext i8 %1501 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1518, ptr noundef nonnull @.str.5, i32 noundef %1519, i32 noundef %1517) #10
  br label %1520

1520:                                             ; preds = %1516, %1495
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %19) #9
  %1521 = load i16, ptr %1441, align 4
  %1522 = add i16 %1521, -3455
  %1523 = load ptr, ptr %1433, align 4
  %1524 = getelementptr inbounds %struct.stv_base, ptr %1523, i32 0, i32 2
  %1525 = load ptr, ptr %1524, align 4
  %1526 = getelementptr inbounds %struct.stv_base, ptr %1523, i32 0, i32 1
  %1527 = load i8, ptr %1526, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #9
  %1528 = lshr i16 %1522, 8
  %1529 = trunc i16 %1528 to i8
  store i8 %1529, ptr %17, align 2
  %1530 = getelementptr inbounds i8, ptr %17, i32 1
  %1531 = trunc i16 %1522 to i8
  store i8 %1531, ptr %1530, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #9
  %1532 = getelementptr inbounds i8, ptr %18, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1532, i8 0, i32 16, i1 false) #9, !annotation !8
  %1533 = zext i8 %1527 to i16
  store i16 %1533, ptr %18, align 4
  %1534 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %1534, align 2
  store i16 2, ptr %1532, align 4
  %1535 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr %17, ptr %1535, align 4
  %1536 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1
  store i16 %1533, ptr %1536, align 4
  %1537 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 1
  store i16 1, ptr %1537, align 2
  %1538 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 2
  store i16 1, ptr %1538, align 4
  %1539 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 1, i32 3
  store ptr %25, ptr %1539, align 4
  %1540 = call i32 @i2c_transfer(ptr noundef %1525, ptr noundef nonnull %18, i32 noundef 2) #9
  %1541 = icmp eq i32 %1540, 2
  br i1 %1541, label %1546, label %1542

1542:                                             ; preds = %1520
  %1543 = zext i16 %1522 to i32
  %1544 = getelementptr inbounds %struct.i2c_adapter, ptr %1525, i32 0, i32 9
  %1545 = zext i8 %1527 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1544, ptr noundef nonnull @.str.5, i32 noundef %1545, i32 noundef %1543) #10
  br label %1546

1546:                                             ; preds = %1542, %1520
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #9
  br label %1547

1547:                                             ; preds = %1546, %1494
  %1548 = phi i32 [ 59, %1494 ], [ 53, %1546 ]
  %1549 = phi ptr [ @s2_sn_lookup, %1494 ], [ @s1_sn_lookup, %1546 ]
  %1550 = load i8, ptr %26, align 1
  %1551 = zext i8 %1550 to i32
  %1552 = shl nuw nsw i32 %1551, 8
  %1553 = load i8, ptr %25, align 1
  %1554 = zext i8 %1553 to i32
  %1555 = or i32 %1552, %1554
  %1556 = getelementptr inbounds %struct.slookup, ptr %1549, i32 0, i32 1
  %1557 = load i32, ptr %1556, align 4
  %1558 = icmp ugt i32 %1557, %1555
  br i1 %1558, label %1562, label %1559

1559:                                             ; preds = %1547
  %1560 = load i16, ptr %1549, align 4
  %1561 = sext i16 %1560 to i32
  br label %1609

1562:                                             ; preds = %1547
  %1563 = getelementptr %struct.slookup, ptr %1549, i32 %1548, i32 1
  %1564 = load i32, ptr %1563, align 4
  %1565 = icmp ult i32 %1564, %1555
  br i1 %1565, label %1570, label %1566

1566:                                             ; preds = %1562
  %1567 = getelementptr %struct.slookup, ptr %1549, i32 %1548
  %1568 = load i16, ptr %1567, align 4
  %1569 = sext i16 %1568 to i32
  br label %1609

1570:                                             ; preds = %1587, %1562
  %1571 = phi i32 [ %1589, %1587 ], [ %1557, %1562 ]
  %1572 = phi i32 [ %1584, %1587 ], [ %1548, %1562 ]
  %1573 = phi i32 [ %1583, %1587 ], [ 0, %1562 ]
  %1574 = add i32 %1573, %1572
  %1575 = sdiv i32 %1574, 2
  %1576 = icmp ult i32 %1571, %1555
  br i1 %1576, label %1581, label %1577

1577:                                             ; preds = %1570
  %1578 = getelementptr %struct.slookup, ptr %1549, i32 %1575, i32 1
  %1579 = load i32, ptr %1578, align 4
  %1580 = icmp ugt i32 %1579, %1555
  br i1 %1580, label %1581, label %1582

1581:                                             ; preds = %1577, %1570
  br label %1582

1582:                                             ; preds = %1581, %1577
  %1583 = phi i32 [ %1575, %1581 ], [ %1573, %1577 ]
  %1584 = phi i32 [ %1572, %1581 ], [ %1575, %1577 ]
  %1585 = sub i32 %1584, %1583
  %1586 = icmp sgt i32 %1585, 1
  br i1 %1586, label %1587, label %1590

1587:                                             ; preds = %1582
  %1588 = getelementptr %struct.slookup, ptr %1549, i32 %1583, i32 1
  %1589 = load i32, ptr %1588, align 4
  br label %1570

1590:                                             ; preds = %1582
  %1591 = getelementptr %struct.slookup, ptr %1549, i32 %1584, i32 1
  %1592 = load i32, ptr %1591, align 4
  %1593 = getelementptr %struct.slookup, ptr %1549, i32 %1583, i32 1
  %1594 = load i32, ptr %1593, align 4
  %1595 = getelementptr %struct.slookup, ptr %1549, i32 %1583
  %1596 = load i16, ptr %1595, align 4
  %1597 = sext i16 %1596 to i32
  %1598 = icmp eq i32 %1592, %1594
  br i1 %1598, label %1609, label %1599

1599:                                             ; preds = %1590
  %1600 = sub i32 %1592, %1594
  %1601 = getelementptr %struct.slookup, ptr %1549, i32 %1584
  %1602 = sub i32 %1555, %1594
  %1603 = load i16, ptr %1601, align 4
  %1604 = sext i16 %1603 to i32
  %1605 = sub nsw i32 %1604, %1597
  %1606 = mul i32 %1605, %1602
  %1607 = sdiv i32 %1606, %1600
  %1608 = add i32 %1607, %1597
  br label %1609

1609:                                             ; preds = %1599, %1590, %1566, %1559
  %1610 = phi i32 [ %1597, %1590 ], [ %1608, %1599 ], [ %1569, %1566 ], [ %1561, %1559 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #9
  %1611 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %1611, align 1
  %1612 = mul i32 %1610, 100
  %1613 = sext i32 %1612 to i64
  %1614 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %1613, ptr %1614, align 1
  br label %1619

1615:                                             ; preds = %1432
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25) #9
  %1616 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %1616, align 1
  br label %1619

1617:                                             ; preds = %1418
  %1618 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %1618, align 1
  br label %1619

1619:                                             ; preds = %1617, %1615, %1609
  %1620 = load i32, ptr %1, align 4
  %1621 = and i32 %1620, 4
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1900, label %1623

1623:                                             ; preds = %1619
  %1624 = load ptr, ptr %108, align 4
  %1625 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 13
  %1626 = load i32, ptr %1625, align 4
  switch i32 %1626, label %1891 [
    i32 1, label %1627
    i32 2, label %1754
  ]

1627:                                             ; preds = %1623
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %16, i8 0, i32 3, i1 false) #9, !annotation !8
  %1628 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 3
  %1629 = load i16, ptr %1628, align 4
  %1630 = add i16 %1629, -3175
  %1631 = load ptr, ptr %1624, align 4
  %1632 = getelementptr inbounds %struct.stv_base, ptr %1631, i32 0, i32 2
  %1633 = load ptr, ptr %1632, align 4
  %1634 = getelementptr inbounds %struct.stv_base, ptr %1631, i32 0, i32 1
  %1635 = load i8, ptr %1634, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  %1636 = lshr i16 %1630, 8
  %1637 = trunc i16 %1636 to i8
  store i8 %1637, ptr %14, align 2
  %1638 = getelementptr inbounds i8, ptr %14, i32 1
  %1639 = trunc i16 %1630 to i8
  store i8 %1639, ptr %1638, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #9
  %1640 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1640, i8 0, i32 16, i1 false) #9, !annotation !8
  %1641 = zext i8 %1635 to i16
  store i16 %1641, ptr %15, align 4
  %1642 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %1642, align 2
  store i16 2, ptr %1640, align 4
  %1643 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %1643, align 4
  %1644 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  store i16 %1641, ptr %1644, align 4
  %1645 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %1645, align 2
  %1646 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 3, ptr %1646, align 4
  %1647 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %16, ptr %1647, align 4
  %1648 = call i32 @i2c_transfer(ptr noundef %1633, ptr noundef nonnull %15, i32 noundef 2) #9
  %1649 = icmp eq i32 %1648, 2
  br i1 %1649, label %1654, label %1650

1650:                                             ; preds = %1627
  %1651 = zext i16 %1630 to i32
  %1652 = getelementptr inbounds %struct.i2c_adapter, ptr %1633, i32 0, i32 9
  %1653 = zext i8 %1635 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1652, ptr noundef nonnull @.str.5, i32 noundef %1653, i32 noundef %1651) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  br label %1751

1654:                                             ; preds = %1627
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  %1655 = load i8, ptr %16, align 1
  %1656 = icmp sgt i8 %1655, -1
  br i1 %1656, label %1657, label %1746

1657:                                             ; preds = %1654
  %1658 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 30
  %1659 = load i8, ptr %1658, align 4
  %1660 = zext i8 %1659 to i32
  %1661 = shl nuw nsw i32 %1660, 1
  %1662 = add nuw nsw i32 %1661, 13
  %1663 = zext i32 %1662 to i64
  %1664 = shl nuw i64 1, %1663
  %1665 = trunc i64 %1664 to i32
  %1666 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 29
  store i32 %1665, ptr %1666, align 4
  %1667 = zext i8 %1655 to i32
  %1668 = shl nuw nsw i32 %1667, 16
  %1669 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 1
  %1670 = load i8, ptr %1669, align 1
  %1671 = zext i8 %1670 to i32
  %1672 = shl nuw nsw i32 %1671, 8
  %1673 = or i32 %1672, %1668
  %1674 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 2
  %1675 = load i8, ptr %1674, align 1
  %1676 = zext i8 %1675 to i32
  %1677 = or i32 %1673, %1676
  %1678 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 28
  store i32 %1677, ptr %1678, align 4
  %1679 = icmp ult i32 %1677, 256
  br i1 %1679, label %1680, label %1712

1680:                                             ; preds = %1657
  %1681 = icmp ult i8 %1659, 6
  br i1 %1681, label %1682, label %1746

1682:                                             ; preds = %1680
  %1683 = add nuw nsw i8 %1659, 1
  store i8 %1683, ptr %1658, align 4
  %1684 = load i16, ptr %1628, align 4
  %1685 = add i16 %1684, -3176
  %1686 = or i8 %1683, 32
  %1687 = load ptr, ptr %1624, align 4
  %1688 = getelementptr inbounds %struct.stv_base, ptr %1687, i32 0, i32 2
  %1689 = load ptr, ptr %1688, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #9
  %1690 = lshr i16 %1685, 8
  %1691 = trunc i16 %1690 to i8
  store i8 %1691, ptr %12, align 1
  %1692 = getelementptr inbounds i8, ptr %12, i32 1
  %1693 = trunc i16 %1685 to i8
  store i8 %1693, ptr %1692, align 1
  %1694 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 %1686, ptr %1694, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %1695 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %1695, align 4, !annotation !8
  %1696 = getelementptr inbounds %struct.stv_base, ptr %1687, i32 0, i32 1
  %1697 = load i8, ptr %1696, align 4
  %1698 = zext i8 %1697 to i16
  store i16 %1698, ptr %13, align 4
  %1699 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %1699, align 2
  %1700 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %1700, align 4
  %1701 = call i32 @i2c_transfer(ptr noundef %1689, ptr noundef nonnull %13, i32 noundef 1) #9
  %1702 = icmp eq i32 %1701, 1
  br i1 %1702, label %1711, label %1703

1703:                                             ; preds = %1682
  %1704 = zext i16 %1685 to i32
  %1705 = getelementptr inbounds %struct.i2c_adapter, ptr %1689, i32 0, i32 9
  %1706 = load ptr, ptr %1624, align 4
  %1707 = getelementptr inbounds %struct.stv_base, ptr %1706, i32 0, i32 1
  %1708 = load i8, ptr %1707, align 4
  %1709 = zext i8 %1708 to i32
  %1710 = zext i8 %1686 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1705, ptr noundef nonnull @.str.6, i32 noundef %1709, i32 noundef %1704, i32 noundef %1710) #10
  br label %1711

1711:                                             ; preds = %1703, %1682
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #9
  br label %1746

1712:                                             ; preds = %1657
  %1713 = icmp ugt i32 %1677, 1024
  %1714 = icmp ugt i8 %1659, 2
  %1715 = select i1 %1713, i1 %1714, i1 false
  br i1 %1715, label %1716, label %1746

1716:                                             ; preds = %1712
  %1717 = add i8 %1659, -1
  store i8 %1717, ptr %1658, align 4
  %1718 = load i16, ptr %1628, align 4
  %1719 = add i16 %1718, -3176
  %1720 = or i8 %1717, 32
  %1721 = load ptr, ptr %1624, align 4
  %1722 = getelementptr inbounds %struct.stv_base, ptr %1721, i32 0, i32 2
  %1723 = load ptr, ptr %1722, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #9
  %1724 = lshr i16 %1719, 8
  %1725 = trunc i16 %1724 to i8
  store i8 %1725, ptr %10, align 1
  %1726 = getelementptr inbounds i8, ptr %10, i32 1
  %1727 = trunc i16 %1719 to i8
  store i8 %1727, ptr %1726, align 1
  %1728 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 %1720, ptr %1728, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %1729 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %1729, align 4, !annotation !8
  %1730 = getelementptr inbounds %struct.stv_base, ptr %1721, i32 0, i32 1
  %1731 = load i8, ptr %1730, align 4
  %1732 = zext i8 %1731 to i16
  store i16 %1732, ptr %11, align 4
  %1733 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %1733, align 2
  %1734 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %1734, align 4
  %1735 = call i32 @i2c_transfer(ptr noundef %1723, ptr noundef nonnull %11, i32 noundef 1) #9
  %1736 = icmp eq i32 %1735, 1
  br i1 %1736, label %1745, label %1737

1737:                                             ; preds = %1716
  %1738 = zext i16 %1719 to i32
  %1739 = getelementptr inbounds %struct.i2c_adapter, ptr %1723, i32 0, i32 9
  %1740 = load ptr, ptr %1624, align 4
  %1741 = getelementptr inbounds %struct.stv_base, ptr %1740, i32 0, i32 1
  %1742 = load i8, ptr %1741, align 4
  %1743 = zext i8 %1742 to i32
  %1744 = zext i8 %1720 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1739, ptr noundef nonnull @.str.6, i32 noundef %1743, i32 noundef %1738, i32 noundef %1744) #10
  br label %1745

1745:                                             ; preds = %1737, %1716
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #9
  br label %1746

1746:                                             ; preds = %1745, %1712, %1711, %1680, %1654
  %1747 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 28
  %1748 = load i32, ptr %1747, align 4
  %1749 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 29
  %1750 = load i32, ptr %1749, align 4
  br label %1751

1751:                                             ; preds = %1746, %1650
  %1752 = phi i32 [ %1748, %1746 ], [ 0, %1650 ]
  %1753 = phi i32 [ %1750, %1746 ], [ 1, %1650 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #9
  br label %1891

1754:                                             ; preds = %1623
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %9, i8 0, i32 3, i1 false) #9, !annotation !8
  %1755 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 3
  %1756 = load i16, ptr %1755, align 4
  %1757 = add i16 %1756, -3175
  %1758 = load ptr, ptr %1624, align 4
  %1759 = getelementptr inbounds %struct.stv_base, ptr %1758, i32 0, i32 2
  %1760 = load ptr, ptr %1759, align 4
  %1761 = getelementptr inbounds %struct.stv_base, ptr %1758, i32 0, i32 1
  %1762 = load i8, ptr %1761, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #9
  %1763 = lshr i16 %1757, 8
  %1764 = trunc i16 %1763 to i8
  store i8 %1764, ptr %7, align 2
  %1765 = getelementptr inbounds i8, ptr %7, i32 1
  %1766 = trunc i16 %1757 to i8
  store i8 %1766, ptr %1765, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  %1767 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %1767, i8 0, i32 16, i1 false) #9, !annotation !8
  %1768 = zext i8 %1762 to i16
  store i16 %1768, ptr %8, align 4
  %1769 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %1769, align 2
  store i16 2, ptr %1767, align 4
  %1770 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %1770, align 4
  %1771 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %1768, ptr %1771, align 4
  %1772 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %1772, align 2
  %1773 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 3, ptr %1773, align 4
  %1774 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %9, ptr %1774, align 4
  %1775 = call i32 @i2c_transfer(ptr noundef %1760, ptr noundef nonnull %8, i32 noundef 2) #9
  %1776 = icmp eq i32 %1775, 2
  br i1 %1776, label %1781, label %1777

1777:                                             ; preds = %1754
  %1778 = zext i16 %1757 to i32
  %1779 = getelementptr inbounds %struct.i2c_adapter, ptr %1760, i32 0, i32 9
  %1780 = zext i8 %1762 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1779, ptr noundef nonnull @.str.5, i32 noundef %1780, i32 noundef %1778) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  br label %1888

1781:                                             ; preds = %1754
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #9
  %1782 = load i8, ptr %9, align 1
  %1783 = icmp sgt i8 %1782, -1
  br i1 %1783, label %1784, label %1883

1784:                                             ; preds = %1781
  %1785 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 21
  %1786 = load i32, ptr %1785, align 4
  %1787 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 22
  %1788 = load i32, ptr %1787, align 4
  %1789 = add i32 %1786, -1
  %1790 = icmp ult i32 %1789, 28
  %1791 = icmp ult i32 %1788, 2
  %1792 = and i1 %1790, %1791
  br i1 %1792, label %1793, label %1796

1793:                                             ; preds = %1784
  %1794 = getelementptr [29 x [2 x i32]], ptr @dvbs2_nbch.nbch, i32 0, i32 %1786, i32 %1788
  %1795 = load i32, ptr %1794, align 4
  br label %1796

1796:                                             ; preds = %1793, %1784
  %1797 = phi i32 [ %1795, %1793 ], [ 64800, %1784 ]
  %1798 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 30
  %1799 = load i8, ptr %1798, align 4
  %1800 = zext i8 %1799 to i32
  %1801 = shl nuw nsw i32 %1800, 1
  %1802 = shl i32 %1797, %1801
  %1803 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 29
  store i32 %1802, ptr %1803, align 4
  %1804 = zext i8 %1782 to i32
  %1805 = shl nuw nsw i32 %1804, 16
  %1806 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 1
  %1807 = load i8, ptr %1806, align 1
  %1808 = zext i8 %1807 to i32
  %1809 = shl nuw nsw i32 %1808, 8
  %1810 = or i32 %1809, %1805
  %1811 = getelementptr inbounds [3 x i8], ptr %9, i32 0, i32 2
  %1812 = load i8, ptr %1811, align 1
  %1813 = zext i8 %1812 to i32
  %1814 = or i32 %1810, %1813
  %1815 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 28
  store i32 %1814, ptr %1815, align 4
  %1816 = icmp ult i32 %1814, 256
  br i1 %1816, label %1817, label %1849

1817:                                             ; preds = %1796
  %1818 = icmp ult i8 %1799, 6
  br i1 %1818, label %1819, label %1883

1819:                                             ; preds = %1817
  %1820 = add nuw nsw i8 %1799, 1
  store i8 %1820, ptr %1798, align 4
  %1821 = load i16, ptr %1755, align 4
  %1822 = add i16 %1821, -3176
  %1823 = or i8 %1820, 32
  %1824 = load ptr, ptr %1624, align 4
  %1825 = getelementptr inbounds %struct.stv_base, ptr %1824, i32 0, i32 2
  %1826 = load ptr, ptr %1825, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  %1827 = lshr i16 %1822, 8
  %1828 = trunc i16 %1827 to i8
  store i8 %1828, ptr %5, align 1
  %1829 = getelementptr inbounds i8, ptr %5, i32 1
  %1830 = trunc i16 %1822 to i8
  store i8 %1830, ptr %1829, align 1
  %1831 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 %1823, ptr %1831, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %1832 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %1832, align 4, !annotation !8
  %1833 = getelementptr inbounds %struct.stv_base, ptr %1824, i32 0, i32 1
  %1834 = load i8, ptr %1833, align 4
  %1835 = zext i8 %1834 to i16
  store i16 %1835, ptr %6, align 4
  %1836 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %1836, align 2
  %1837 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %1837, align 4
  %1838 = call i32 @i2c_transfer(ptr noundef %1826, ptr noundef nonnull %6, i32 noundef 1) #9
  %1839 = icmp eq i32 %1838, 1
  br i1 %1839, label %1848, label %1840

1840:                                             ; preds = %1819
  %1841 = zext i16 %1822 to i32
  %1842 = getelementptr inbounds %struct.i2c_adapter, ptr %1826, i32 0, i32 9
  %1843 = load ptr, ptr %1624, align 4
  %1844 = getelementptr inbounds %struct.stv_base, ptr %1843, i32 0, i32 1
  %1845 = load i8, ptr %1844, align 4
  %1846 = zext i8 %1845 to i32
  %1847 = zext i8 %1823 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1842, ptr noundef nonnull @.str.6, i32 noundef %1846, i32 noundef %1841, i32 noundef %1847) #10
  br label %1848

1848:                                             ; preds = %1840, %1819
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  br label %1883

1849:                                             ; preds = %1796
  %1850 = icmp ugt i32 %1814, 1024
  %1851 = icmp ugt i8 %1799, 2
  %1852 = select i1 %1850, i1 %1851, i1 false
  br i1 %1852, label %1853, label %1883

1853:                                             ; preds = %1849
  %1854 = add i8 %1799, -1
  store i8 %1854, ptr %1798, align 4
  %1855 = load i16, ptr %1755, align 4
  %1856 = add i16 %1855, -3176
  %1857 = or i8 %1854, 32
  %1858 = load ptr, ptr %1624, align 4
  %1859 = getelementptr inbounds %struct.stv_base, ptr %1858, i32 0, i32 2
  %1860 = load ptr, ptr %1859, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  %1861 = lshr i16 %1856, 8
  %1862 = trunc i16 %1861 to i8
  store i8 %1862, ptr %3, align 1
  %1863 = getelementptr inbounds i8, ptr %3, i32 1
  %1864 = trunc i16 %1856 to i8
  store i8 %1864, ptr %1863, align 1
  %1865 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %1857, ptr %1865, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %1866 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %1866, align 4, !annotation !8
  %1867 = getelementptr inbounds %struct.stv_base, ptr %1858, i32 0, i32 1
  %1868 = load i8, ptr %1867, align 4
  %1869 = zext i8 %1868 to i16
  store i16 %1869, ptr %4, align 4
  %1870 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %1870, align 2
  %1871 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %1871, align 4
  %1872 = call i32 @i2c_transfer(ptr noundef %1860, ptr noundef nonnull %4, i32 noundef 1) #9
  %1873 = icmp eq i32 %1872, 1
  br i1 %1873, label %1882, label %1874

1874:                                             ; preds = %1853
  %1875 = zext i16 %1856 to i32
  %1876 = getelementptr inbounds %struct.i2c_adapter, ptr %1860, i32 0, i32 9
  %1877 = load ptr, ptr %1624, align 4
  %1878 = getelementptr inbounds %struct.stv_base, ptr %1877, i32 0, i32 1
  %1879 = load i8, ptr %1878, align 4
  %1880 = zext i8 %1879 to i32
  %1881 = zext i8 %1857 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1876, ptr noundef nonnull @.str.6, i32 noundef %1880, i32 noundef %1875, i32 noundef %1881) #10
  br label %1882

1882:                                             ; preds = %1874, %1853
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  br label %1883

1883:                                             ; preds = %1882, %1849, %1848, %1817, %1781
  %1884 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 28
  %1885 = load i32, ptr %1884, align 4
  %1886 = getelementptr inbounds %struct.stv, ptr %1624, i32 0, i32 29
  %1887 = load i32, ptr %1886, align 4
  br label %1888

1888:                                             ; preds = %1883, %1777
  %1889 = phi i32 [ %1885, %1883 ], [ 0, %1777 ]
  %1890 = phi i32 [ %1887, %1883 ], [ 1, %1777 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %9) #9
  br label %1891

1891:                                             ; preds = %1888, %1751, %1623
  %1892 = phi i32 [ 0, %1623 ], [ %1889, %1888 ], [ %1752, %1751 ]
  %1893 = phi i32 [ 1, %1623 ], [ %1890, %1888 ], [ %1753, %1751 ]
  %1894 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 3, ptr %1894, align 1
  %1895 = zext i32 %1892 to i64
  %1896 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  store i64 %1895, ptr %1896, align 1
  %1897 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 3, ptr %1897, align 1
  %1898 = zext i32 %1893 to i64
  %1899 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  store i64 %1898, ptr %1899, align 1
  br label %1903

1900:                                             ; preds = %1619
  %1901 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 44, i32 1
  store i8 0, ptr %1901, align 1
  %1902 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 45, i32 1
  store i8 0, ptr %1902, align 1
  br label %1903

1903:                                             ; preds = %1900, %1891, %461
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %103) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %102) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @send_master_cmd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 -150863869, i32 -146669565
  tail call fastcc void @write_field(ptr noundef %6, i32 noundef %10, i8 noundef zeroext 2)
  %11 = load i32, ptr %7, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 -150855676, i32 -146661372
  tail call fastcc void @write_field(ptr noundef %6, i32 noundef %13, i8 noundef zeroext 1)
  %14 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %1, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %52, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds i8, ptr %3, i32 1
  %19 = getelementptr inbounds i8, ptr %3, i32 2
  %20 = getelementptr inbounds i8, ptr %4, i32 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  br label %23

23:                                               ; preds = %47, %17
  %24 = phi i32 [ 0, %17 ], [ %48, %47 ]
  call fastcc void @wait_dis(ptr noundef %6, i8 noundef zeroext 64, i8 noundef zeroext 0)
  %25 = load i32, ptr %7, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i16 -2299, i16 -2235
  %28 = getelementptr [6 x i8], ptr %1, i32 0, i32 %24
  %29 = load i8, ptr %28, align 1
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr inbounds %struct.stv_base, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  store i8 -9, ptr %3, align 1
  %33 = trunc i16 %27 to i8
  store i8 %33, ptr %18, align 1
  store i8 %29, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  store i32 3, ptr %20, align 4, !annotation !8
  %34 = getelementptr inbounds %struct.stv_base, ptr %30, i32 0, i32 1
  %35 = load i8, ptr %34, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %4, align 4
  store i16 0, ptr %21, align 2
  store ptr %3, ptr %22, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %4, i32 noundef 1) #9
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %47, label %39

39:                                               ; preds = %23
  %40 = zext i16 %27 to i32
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 9
  %42 = load ptr, ptr %6, align 4
  %43 = getelementptr inbounds %struct.stv_base, ptr %42, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %45, i32 noundef %40, i32 noundef %46) #10
  br label %47

47:                                               ; preds = %39, %23
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  %48 = add nuw nsw i32 %24, 1
  %49 = load i8, ptr %14, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %23, label %52

52:                                               ; preds = %47, %2
  %53 = load i32, ptr %7, align 4
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 -150855676, i32 -146661372
  call fastcc void @write_field(ptr noundef %6, i32 noundef %55, i8 noundef zeroext 0)
  call fastcc void @wait_dis(ptr noundef %6, i8 noundef zeroext 32, i8 noundef zeroext 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @send_burst(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.stv, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 -150863869, i32 -146669565
  %12 = select i1 %7, i8 3, i8 2
  %13 = xor i1 %7, true
  %14 = sext i1 %13 to i8
  tail call fastcc void @write_field(ptr noundef %6, i32 noundef %11, i8 noundef zeroext %12)
  %15 = getelementptr inbounds %struct.stv, ptr %6, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 -150855676, i32 -146661372
  tail call fastcc void @write_field(ptr noundef %6, i32 noundef %18, i8 noundef zeroext 1)
  tail call fastcc void @wait_dis(ptr noundef %6, i8 noundef zeroext 64, i8 noundef zeroext 0)
  %19 = load i32, ptr %15, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i16 -2299, i16 -2235
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.stv_base, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  store i8 -9, ptr %3, align 1
  %25 = getelementptr inbounds i8, ptr %3, i32 1
  %26 = trunc i16 %21 to i8
  store i8 %26, ptr %25, align 1
  %27 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %14, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %28 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %28, align 4, !annotation !8
  %29 = getelementptr inbounds %struct.stv_base, ptr %22, i32 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i16
  store i16 %31, ptr %4, align 4
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %32, align 2
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %33, align 4
  %34 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %4, i32 noundef 1) #9
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %44, label %36

36:                                               ; preds = %2
  %37 = zext i16 %21 to i32
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9
  %39 = load ptr, ptr %6, align 4
  %40 = getelementptr inbounds %struct.stv_base, ptr %39, i32 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.6, i32 noundef %42, i32 noundef %37, i32 noundef %43) #10
  br label %44

44:                                               ; preds = %36, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  %45 = load i32, ptr %15, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 -150855676, i32 -146661372
  call fastcc void @write_field(ptr noundef %6, i32 noundef %47, i8 noundef zeroext 0)
  call fastcc void @wait_dis(ptr noundef %6, i8 noundef zeroext 32, i8 noundef zeroext 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @set_tone(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [3 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.stv, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i16 0, i16 64
  switch i32 %1, label %63 [
    i32 0, label %13
    i32 1, label %38
  ]

13:                                               ; preds = %2
  %14 = or i16 %12, -2302
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.stv_base, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #9
  store i8 -9, ptr %5, align 1
  %18 = getelementptr inbounds i8, ptr %5, i32 1
  %19 = trunc i16 %14 to i8
  store i8 %19, ptr %18, align 1
  %20 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 56, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %21 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 3, ptr %21, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.stv_base, ptr %15, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i16
  store i16 %24, ptr %6, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %25, align 2
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %26, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %6, i32 noundef 1) #9
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %36, label %29

29:                                               ; preds = %13
  %30 = zext i16 %14 to i32
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds %struct.stv_base, ptr %32, i32 0, i32 1
  %34 = load i8, ptr %33, align 4
  %35 = zext i8 %34 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.6, i32 noundef %35, i32 noundef %30, i32 noundef 56) #10
  br label %36

36:                                               ; preds = %29, %13
  %37 = phi i32 [ -5, %29 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #9
  br label %63

38:                                               ; preds = %2
  %39 = or i16 %12, -2302
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr inbounds %struct.stv_base, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  store i8 -9, ptr %3, align 1
  %43 = getelementptr inbounds i8, ptr %3, i32 1
  %44 = trunc i16 %39 to i8
  store i8 %44, ptr %43, align 1
  %45 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 58, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %46 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %46, align 4, !annotation !8
  %47 = getelementptr inbounds %struct.stv_base, ptr %40, i32 0, i32 1
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i16
  store i16 %49, ptr %4, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %50, align 2
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %51, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %4, i32 noundef 1) #9
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %61, label %54

54:                                               ; preds = %38
  %55 = zext i16 %39 to i32
  %56 = getelementptr inbounds %struct.i2c_adapter, ptr %42, i32 0, i32 9
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr inbounds %struct.stv_base, ptr %57, i32 0, i32 1
  %59 = load i8, ptr %58, align 4
  %60 = zext i8 %59 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.6, i32 noundef %60, i32 noundef %55, i32 noundef 58) #10
  br label %61

61:                                               ; preds = %54, %38
  %62 = phi i32 [ -5, %54 ], [ 0, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  br label %63

63:                                               ; preds = %61, %36, %2
  %64 = phi i32 [ %62, %61 ], [ %37, %36 ], [ -22, %2 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stv, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 121
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.stv_base, ptr %12, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %13) #9
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i8 [ -128, %11 ], [ 2, %2 ]
  %16 = or i8 %9, %15
  %17 = getelementptr inbounds %struct.stv, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i16 -3798, i16 -3797
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr inbounds %struct.stv_base, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  store i8 -15, ptr %3, align 1
  %24 = getelementptr inbounds i8, ptr %3, i32 1
  %25 = trunc i16 %20 to i8
  store i8 %25, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %16, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %27 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %27, align 4, !annotation !8
  %28 = getelementptr inbounds %struct.stv_base, ptr %21, i32 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i16
  store i16 %30, ptr %4, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %32, align 4
  %33 = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %4, i32 noundef 1) #9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %55, label %35

35:                                               ; preds = %14
  %36 = zext i16 %20 to i32
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.stv_base, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = zext i8 %40 to i32
  %42 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.6, i32 noundef %41, i32 noundef %36, i32 noundef %42) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  %43 = load ptr, ptr %6, align 4
  %44 = getelementptr inbounds %struct.stv_base, ptr %43, i32 0, i32 3
  %45 = call zeroext i1 @mutex_is_locked(ptr noundef %44) #9
  br i1 %45, label %47, label %46, !prof !9

46:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1248, i32 noundef 9, ptr noundef null) #9
  br label %50

47:                                               ; preds = %35
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.stv_base, ptr %48, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %49) #9
  br label %50

50:                                               ; preds = %47, %46
  %51 = load ptr, ptr %6, align 4
  %52 = getelementptr inbounds %struct.stv_base, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %53, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.gate_ctrl, i32 noundef %1) #10
  br label %64

55:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  store i8 %16, ptr %7, align 2
  br i1 %10, label %56, label %64

56:                                               ; preds = %55
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.stv_base, ptr %57, i32 0, i32 3
  %59 = call zeroext i1 @mutex_is_locked(ptr noundef %58) #9
  br i1 %59, label %61, label %60, !prof !9

60:                                               ; preds = %56
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1259, i32 noundef 9, ptr noundef null) #9
  br label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr inbounds %struct.stv_base, ptr %62, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %63) #9
  br label %64

64:                                               ; preds = %61, %60, %55, %50
  %65 = phi i32 [ -5, %50 ], [ 0, %60 ], [ 0, %61 ], [ 0, %55 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @stop(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca i8, align 1
  %13 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %155, label %16

16:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #9
  store i8 0, ptr %12, align 1, !annotation !8
  %17 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 3
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, -3214
  %20 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 5
  %21 = load i8, ptr %20, align 1
  %22 = or i8 %21, 1
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.stv_base, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #9
  %26 = lshr i16 %19, 8
  %27 = trunc i16 %26 to i8
  store i8 %27, ptr %10, align 1
  %28 = getelementptr inbounds i8, ptr %10, i32 1
  %29 = trunc i16 %19 to i8
  store i8 %29, ptr %28, align 1
  %30 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 %22, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %31 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %31, align 4, !annotation !8
  %32 = getelementptr inbounds %struct.stv_base, ptr %23, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %11, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %36, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %11, i32 noundef 1) #9
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %47, label %39

39:                                               ; preds = %16
  %40 = zext i16 %19 to i32
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.stv_base, ptr %42, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %45, i32 noundef %40, i32 noundef %46) #10
  br label %47

47:                                               ; preds = %39, %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #9
  %48 = load i16, ptr %17, align 4
  %49 = add i16 %48, -3248
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.stv_base, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.stv_base, ptr %50, i32 0, i32 1
  %54 = load i8, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  %55 = lshr i16 %49, 8
  %56 = trunc i16 %55 to i8
  store i8 %56, ptr %8, align 2
  %57 = getelementptr inbounds i8, ptr %8, i32 1
  %58 = trunc i16 %49 to i8
  store i8 %58, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  %59 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %59, i8 0, i32 16, i1 false) #9, !annotation !8
  %60 = zext i8 %54 to i16
  store i16 %60, ptr %9, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 2, ptr %59, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %12, ptr %66, align 4
  %67 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %9, i32 noundef 2) #9
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %73, label %69

69:                                               ; preds = %47
  %70 = zext i16 %49 to i32
  %71 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 9
  %72 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.5, i32 noundef %72, i32 noundef %70) #10
  br label %73

73:                                               ; preds = %69, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %74 = load i8, ptr %12, align 1
  %75 = and i8 %74, -2
  store i8 %75, ptr %12, align 1
  %76 = load i16, ptr %17, align 4
  %77 = add i16 %76, -3248
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.stv_base, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  %81 = lshr i16 %77, 8
  %82 = trunc i16 %81 to i8
  store i8 %82, ptr %6, align 1
  %83 = getelementptr inbounds i8, ptr %6, i32 1
  %84 = trunc i16 %77 to i8
  store i8 %84, ptr %83, align 1
  %85 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %75, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %86 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %86, align 4, !annotation !8
  %87 = getelementptr inbounds %struct.stv_base, ptr %78, i32 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %7, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %91, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %7, i32 noundef 1) #9
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %102, label %94

94:                                               ; preds = %73
  %95 = zext i16 %77 to i32
  %96 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr inbounds %struct.stv_base, ptr %97, i32 0, i32 1
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = zext i8 %75 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.6, i32 noundef %100, i32 noundef %95, i32 noundef %101) #10
  br label %102

102:                                              ; preds = %94, %73
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  %103 = load i16, ptr %17, align 4
  %104 = add i16 %103, -3540
  %105 = load ptr, ptr %0, align 4
  %106 = getelementptr inbounds %struct.stv_base, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  %108 = lshr i16 %104, 8
  %109 = trunc i16 %108 to i8
  store i8 %109, ptr %4, align 1
  %110 = getelementptr inbounds i8, ptr %4, i32 1
  %111 = trunc i16 %104 to i8
  store i8 %111, ptr %110, align 1
  %112 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 91, ptr %112, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %113 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %113, align 4, !annotation !8
  %114 = getelementptr inbounds %struct.stv_base, ptr %105, i32 0, i32 1
  %115 = load i8, ptr %114, align 4
  %116 = zext i8 %115 to i16
  store i16 %116, ptr %5, align 4
  %117 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %117, align 2
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %118, align 4
  %119 = call i32 @i2c_transfer(ptr noundef %107, ptr noundef nonnull %5, i32 noundef 1) #9
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %128, label %121

121:                                              ; preds = %102
  %122 = zext i16 %104 to i32
  %123 = getelementptr inbounds %struct.i2c_adapter, ptr %107, i32 0, i32 9
  %124 = load ptr, ptr %0, align 4
  %125 = getelementptr inbounds %struct.stv_base, ptr %124, i32 0, i32 1
  %126 = load i8, ptr %125, align 4
  %127 = zext i8 %126 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.6, i32 noundef %127, i32 noundef %122, i32 noundef 91) #10
  br label %128

128:                                              ; preds = %121, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  %129 = load i16, ptr %17, align 4
  %130 = add i16 %129, -3562
  %131 = load ptr, ptr %0, align 4
  %132 = getelementptr inbounds %struct.stv_base, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  %134 = lshr i16 %130, 8
  %135 = trunc i16 %134 to i8
  store i8 %135, ptr %2, align 1
  %136 = getelementptr inbounds i8, ptr %2, i32 1
  %137 = trunc i16 %130 to i8
  store i8 %137, ptr %136, align 1
  %138 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 92, ptr %138, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %139 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %139, align 4, !annotation !8
  %140 = getelementptr inbounds %struct.stv_base, ptr %131, i32 0, i32 1
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %3, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %144, align 4
  %145 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %3, i32 noundef 1) #9
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %154, label %147

147:                                              ; preds = %128
  %148 = zext i16 %130 to i32
  %149 = getelementptr inbounds %struct.i2c_adapter, ptr %133, i32 0, i32 9
  %150 = load ptr, ptr %0, align 4
  %151 = getelementptr inbounds %struct.stv_base, ptr %150, i32 0, i32 1
  %152 = load i8, ptr %151, align 4
  %153 = zext i8 %152 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.6, i32 noundef %153, i32 noundef %148, i32 noundef 92) #10
  br label %154

154:                                              ; preds = %147, %128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  store i32 0, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #9
  br label %155

155:                                              ; preds = %154, %1
  %156 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 13
  store i32 0, ptr %156, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @write_shared_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.stv_base, ptr %9, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %10) #9
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.stv_base, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.stv_base, ptr %11, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 -1, ptr %6, align 2
  %16 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 109, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %17 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #9, !annotation !8
  %18 = zext i8 %15 to i16
  store i16 %18, ptr %7, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 2, ptr %17, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %8, ptr %24, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %7, i32 noundef 2) #9
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 9
  %29 = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.5, i32 noundef %29, i32 noundef 65389) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br label %57

30:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %31 = load i8, ptr %8, align 1
  %32 = xor i8 %1, -1
  %33 = and i8 %31, %32
  %34 = and i8 %2, %1
  %35 = or i8 %33, %34
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.stv_base, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  store i8 -1, ptr %4, align 1
  %39 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 109, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %35, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %41 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %41, align 4, !annotation !8
  %42 = getelementptr inbounds %struct.stv_base, ptr %36, i32 0, i32 1
  %43 = load i8, ptr %42, align 4
  %44 = zext i8 %43 to i16
  store i16 %44, ptr %5, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %45, align 2
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %46, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %5, i32 noundef 1) #9
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %56, label %49

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 9
  %51 = load ptr, ptr %0, align 4
  %52 = getelementptr inbounds %struct.stv_base, ptr %51, i32 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = zext i8 %35 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.6, i32 noundef %54, i32 noundef 65389, i32 noundef %55) #10
  br label %56

56:                                               ; preds = %49, %30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  br label %57

57:                                               ; preds = %56, %27
  %58 = load ptr, ptr %0, align 4
  %59 = getelementptr inbounds %struct.stv_base, ptr %58, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %59) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @enable_puncture_rate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  %5 = add i32 %1, -1
  %6 = icmp ult i32 %5, 7
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds [7 x i8], ptr @switch.table.enable_puncture_rate, i32 0, i32 %5
  %9 = load i8, ptr %8, align 1
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i8 [ %9, %7 ], [ 47, %2 ]
  %12 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 3
  %13 = load i16, ptr %12, align 4
  %14 = add i16 %13, -3268
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.stv_base, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #9
  %18 = lshr i16 %14, 8
  %19 = trunc i16 %18 to i8
  store i8 %19, ptr %3, align 1
  %20 = getelementptr inbounds i8, ptr %3, i32 1
  %21 = trunc i16 %14 to i8
  store i8 %21, ptr %20, align 1
  %22 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %11, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  %23 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %23, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.stv_base, ptr %15, i32 0, i32 1
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i16
  store i16 %26, ptr %4, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %28, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %4, i32 noundef 1) #9
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %39, label %31

31:                                               ; preds = %10
  %32 = zext i16 %14 to i32
  %33 = getelementptr inbounds %struct.i2c_adapter, ptr %17, i32 0, i32 9
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.stv_base, ptr %34, i32 0, i32 1
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.6, i32 noundef %37, i32 noundef %32, i32 noundef %38) #10
  br label %39

39:                                               ; preds = %31, %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_vth_default(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [3 x i8], align 1
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [3 x i8], align 1
  %13 = alloca %struct.i2c_msg, align 4
  %14 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 31
  store i8 -41, ptr %14, align 1
  %15 = getelementptr %struct.stv, ptr %0, i32 0, i32 31, i32 1
  store i8 -123, ptr %15, align 1
  %16 = getelementptr %struct.stv, ptr %0, i32 0, i32 31, i32 2
  store i8 88, ptr %16, align 1
  %17 = getelementptr %struct.stv, ptr %0, i32 0, i32 31, i32 3
  store i8 58, ptr %17, align 1
  %18 = getelementptr %struct.stv, ptr %0, i32 0, i32 31, i32 4
  store i8 52, ptr %18, align 1
  %19 = getelementptr %struct.stv, ptr %0, i32 0, i32 31, i32 5
  store i8 40, ptr %19, align 1
  %20 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 3
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, -3276
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.stv_base, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %12) #9
  %26 = lshr i16 %22, 8
  %27 = trunc i16 %26 to i8
  store i8 %27, ptr %12, align 1
  %28 = getelementptr inbounds i8, ptr %12, i32 1
  %29 = trunc i16 %22 to i8
  store i8 %29, ptr %28, align 1
  %30 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 -41, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  %31 = getelementptr inbounds i8, ptr %13, i32 4
  store i32 3, ptr %31, align 4, !annotation !8
  %32 = getelementptr inbounds %struct.stv_base, ptr %23, i32 0, i32 1
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %13, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %36, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %13, i32 noundef 1) #9
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %1
  %40 = zext i16 %22 to i32
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.stv_base, ptr %42, i32 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.6, i32 noundef %45, i32 noundef %40, i32 noundef 215) #10
  br label %46

46:                                               ; preds = %39, %1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %12) #9
  %47 = load i16, ptr %20, align 4
  %48 = add i16 %47, -3275
  %49 = load i8, ptr %15, align 1
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.stv_base, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %10) #9
  %53 = lshr i16 %48, 8
  %54 = trunc i16 %53 to i8
  store i8 %54, ptr %10, align 1
  %55 = getelementptr inbounds i8, ptr %10, i32 1
  %56 = trunc i16 %48 to i8
  store i8 %56, ptr %55, align 1
  %57 = getelementptr inbounds i8, ptr %10, i32 2
  store i8 %49, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %58 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 3, ptr %58, align 4, !annotation !8
  %59 = getelementptr inbounds %struct.stv_base, ptr %50, i32 0, i32 1
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i16
  store i16 %61, ptr %11, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %63, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %11, i32 noundef 1) #9
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %74, label %66

66:                                               ; preds = %46
  %67 = zext i16 %48 to i32
  %68 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 9
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr inbounds %struct.stv_base, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %70, align 4
  %72 = zext i8 %71 to i32
  %73 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.6, i32 noundef %72, i32 noundef %67, i32 noundef %73) #10
  br label %74

74:                                               ; preds = %66, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %10) #9
  %75 = load i16, ptr %20, align 4
  %76 = add i16 %75, -3274
  %77 = load i8, ptr %16, align 1
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.stv_base, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %8) #9
  %81 = lshr i16 %76, 8
  %82 = trunc i16 %81 to i8
  store i8 %82, ptr %8, align 1
  %83 = getelementptr inbounds i8, ptr %8, i32 1
  %84 = trunc i16 %76 to i8
  store i8 %84, ptr %83, align 1
  %85 = getelementptr inbounds i8, ptr %8, i32 2
  store i8 %77, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  %86 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 3, ptr %86, align 4, !annotation !8
  %87 = getelementptr inbounds %struct.stv_base, ptr %78, i32 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i16
  store i16 %89, ptr %9, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %90, align 2
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %91, align 4
  %92 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %9, i32 noundef 1) #9
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %102, label %94

94:                                               ; preds = %74
  %95 = zext i16 %76 to i32
  %96 = getelementptr inbounds %struct.i2c_adapter, ptr %80, i32 0, i32 9
  %97 = load ptr, ptr %0, align 4
  %98 = getelementptr inbounds %struct.stv_base, ptr %97, i32 0, i32 1
  %99 = load i8, ptr %98, align 4
  %100 = zext i8 %99 to i32
  %101 = zext i8 %77 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.6, i32 noundef %100, i32 noundef %95, i32 noundef %101) #10
  br label %102

102:                                              ; preds = %94, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %8) #9
  %103 = load i16, ptr %20, align 4
  %104 = add i16 %103, -3273
  %105 = load i8, ptr %17, align 1
  %106 = load ptr, ptr %0, align 4
  %107 = getelementptr inbounds %struct.stv_base, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #9
  %109 = lshr i16 %104, 8
  %110 = trunc i16 %109 to i8
  store i8 %110, ptr %6, align 1
  %111 = getelementptr inbounds i8, ptr %6, i32 1
  %112 = trunc i16 %104 to i8
  store i8 %112, ptr %111, align 1
  %113 = getelementptr inbounds i8, ptr %6, i32 2
  store i8 %105, ptr %113, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %114 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 3, ptr %114, align 4, !annotation !8
  %115 = getelementptr inbounds %struct.stv_base, ptr %106, i32 0, i32 1
  %116 = load i8, ptr %115, align 4
  %117 = zext i8 %116 to i16
  store i16 %117, ptr %7, align 4
  %118 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %118, align 2
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %119, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %7, i32 noundef 1) #9
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %130, label %122

122:                                              ; preds = %102
  %123 = zext i16 %104 to i32
  %124 = getelementptr inbounds %struct.i2c_adapter, ptr %108, i32 0, i32 9
  %125 = load ptr, ptr %0, align 4
  %126 = getelementptr inbounds %struct.stv_base, ptr %125, i32 0, i32 1
  %127 = load i8, ptr %126, align 4
  %128 = zext i8 %127 to i32
  %129 = zext i8 %105 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %124, ptr noundef nonnull @.str.6, i32 noundef %128, i32 noundef %123, i32 noundef %129) #10
  br label %130

130:                                              ; preds = %122, %102
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #9
  %131 = load i16, ptr %20, align 4
  %132 = add i16 %131, -3272
  %133 = load i8, ptr %18, align 1
  %134 = load ptr, ptr %0, align 4
  %135 = getelementptr inbounds %struct.stv_base, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  %137 = lshr i16 %132, 8
  %138 = trunc i16 %137 to i8
  store i8 %138, ptr %4, align 1
  %139 = getelementptr inbounds i8, ptr %4, i32 1
  %140 = trunc i16 %132 to i8
  store i8 %140, ptr %139, align 1
  %141 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %133, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %142 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %142, align 4, !annotation !8
  %143 = getelementptr inbounds %struct.stv_base, ptr %134, i32 0, i32 1
  %144 = load i8, ptr %143, align 4
  %145 = zext i8 %144 to i16
  store i16 %145, ptr %5, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %146, align 2
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %147, align 4
  %148 = call i32 @i2c_transfer(ptr noundef %136, ptr noundef nonnull %5, i32 noundef 1) #9
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %158, label %150

150:                                              ; preds = %130
  %151 = zext i16 %132 to i32
  %152 = getelementptr inbounds %struct.i2c_adapter, ptr %136, i32 0, i32 9
  %153 = load ptr, ptr %0, align 4
  %154 = getelementptr inbounds %struct.stv_base, ptr %153, i32 0, i32 1
  %155 = load i8, ptr %154, align 4
  %156 = zext i8 %155 to i32
  %157 = zext i8 %133 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.6, i32 noundef %156, i32 noundef %151, i32 noundef %157) #10
  br label %158

158:                                              ; preds = %150, %130
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  %159 = load i16, ptr %20, align 4
  %160 = add i16 %159, -3271
  %161 = load i8, ptr %19, align 1
  %162 = load ptr, ptr %0, align 4
  %163 = getelementptr inbounds %struct.stv_base, ptr %162, i32 0, i32 2
  %164 = load ptr, ptr %163, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #9
  %165 = lshr i16 %160, 8
  %166 = trunc i16 %165 to i8
  store i8 %166, ptr %2, align 1
  %167 = getelementptr inbounds i8, ptr %2, i32 1
  %168 = trunc i16 %160 to i8
  store i8 %168, ptr %167, align 1
  %169 = getelementptr inbounds i8, ptr %2, i32 2
  store i8 %161, ptr %169, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  %170 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %170, align 4, !annotation !8
  %171 = getelementptr inbounds %struct.stv_base, ptr %162, i32 0, i32 1
  %172 = load i8, ptr %171, align 4
  %173 = zext i8 %172 to i16
  store i16 %173, ptr %3, align 4
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %174, align 2
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %175, align 4
  %176 = call i32 @i2c_transfer(ptr noundef %164, ptr noundef nonnull %3, i32 noundef 1) #9
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %186, label %178

178:                                              ; preds = %158
  %179 = zext i16 %160 to i32
  %180 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 9
  %181 = load ptr, ptr %0, align 4
  %182 = getelementptr inbounds %struct.stv_base, ptr %181, i32 0, i32 1
  %183 = load i8, ptr %182, align 4
  %184 = zext i8 %183 to i32
  %185 = zext i8 %161 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %180, ptr noundef nonnull @.str.6, i32 noundef %184, i32 noundef %179, i32 noundef %185) #10
  br label %186

186:                                              ; preds = %178, %158
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @write_field(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #9
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = lshr i32 %1, 16
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.stv_base, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stv_base, ptr %10, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  %15 = lshr i32 %1, 24
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %6, align 2
  %17 = getelementptr inbounds i8, ptr %6, i32 1
  %18 = trunc i32 %9 to i8
  store i8 %18, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %19 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #9, !annotation !8
  %20 = zext i8 %14 to i16
  store i16 %20, ptr %7, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %21, align 2
  store i16 2, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %20, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %24, align 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %8, ptr %26, align 4
  %27 = call i32 @i2c_transfer(ptr noundef %12, ptr noundef nonnull %7, i32 noundef 2) #9
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9
  %31 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str.5, i32 noundef %31, i32 noundef %9) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  br label %67

32:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %33 = lshr i32 %1, 12
  %34 = and i32 %33, 15
  %35 = zext i8 %2 to i32
  %36 = shl nuw nsw i32 %35, %34
  %37 = and i32 %36, %1
  %38 = load i8, ptr %8, align 1
  %39 = zext i8 %38 to i32
  %40 = xor i32 %1, -1
  %41 = and i32 %39, %40
  %42 = or i32 %41, %37
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, %39
  br i1 %44, label %67, label %45

45:                                               ; preds = %32
  %46 = trunc i32 %42 to i8
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.stv_base, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  store i8 %16, ptr %4, align 1
  %50 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %18, ptr %50, align 1
  %51 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %46, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  %52 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 3, ptr %52, align 4, !annotation !8
  %53 = getelementptr inbounds %struct.stv_base, ptr %47, i32 0, i32 1
  %54 = load i8, ptr %53, align 4
  %55 = zext i8 %54 to i16
  store i16 %55, ptr %5, align 4
  %56 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %57, align 4
  %58 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %5, i32 noundef 1) #9
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %66, label %60

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 9
  %62 = load ptr, ptr %0, align 4
  %63 = getelementptr inbounds %struct.stv_base, ptr %62, i32 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = zext i8 %64 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.6, i32 noundef %65, i32 noundef %9, i32 noundef %43) #10
  br label %66

66:                                               ; preds = %60, %45
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  br label %67

67:                                               ; preds = %66, %32, %29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wait_dis(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #9
  store i8 0, ptr %6, align 1, !annotation !8
  %7 = getelementptr inbounds %struct.stv, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i16 -2301, i16 -2237
  %11 = getelementptr inbounds i8, ptr %4, i32 1
  %12 = trunc i16 %10 to i8
  %13 = getelementptr inbounds i8, ptr %5, i32 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  %20 = zext i16 %10 to i32
  br label %21

21:                                               ; preds = %38, %3
  %22 = phi i32 [ 0, %3 ], [ %39, %38 ]
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.stv_base, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.stv_base, ptr %23, i32 0, i32 1
  %27 = load i8, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 -9, ptr %4, align 2
  store i8 %12, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %13, i8 0, i32 16, i1 false) #9, !annotation !8
  %28 = zext i8 %27 to i16
  store i16 %28, ptr %5, align 4
  store i16 0, ptr %14, align 2
  store i16 2, ptr %13, align 4
  store ptr %4, ptr %15, align 4
  store i16 %28, ptr %16, align 4
  store i16 1, ptr %17, align 2
  store i16 1, ptr %18, align 4
  store ptr %6, ptr %19, align 4
  %29 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 2) #9
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %33 = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.5, i32 noundef %33, i32 noundef %20) #10
  br label %34

34:                                               ; preds = %31, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  %35 = load i8, ptr %6, align 1
  %36 = and i8 %35, %1
  %37 = icmp eq i8 %36, %2
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #9
  %39 = add nuw nsw i32 %22, 1
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %21

41:                                               ; preds = %38, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2148374613, i64 2148374893, i64 2148375227, i64 2148375561}
