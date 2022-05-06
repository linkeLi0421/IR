; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lgdt330x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgdt330x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgdt330x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgdt330x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgdt330x_attach:\09\09\09\09\09"
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
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
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
%struct.lgdt330x_state = type { ptr, %struct.lgdt330x_config, %struct.dvb_frontend, i32, i32, i16, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [66 x i8] c"parm=debug:Turn on/off lgdt330x frontend debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"lgdt330x\00", align 1
@__kstrtab_lgdt330x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgdt330x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgdt330x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgdt330x_attach to i32), ptr @__kstrtab_lgdt330x_attach, ptr @__kstrtabns_lgdt330x_attach }, section "___ksymtab+lgdt330x_attach", align 4
@lgdt330x_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lgdt330x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description251 = internal constant [83 x i8] c"description=LGDT330X (ATSC 8VSB & ITU-T J.83 AnnexB 64/256 QAM) Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [23 x i8] c"author=Wilson Michaels\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@lgdt330x_driver = internal global %struct.i2c_driver { i32 0, ptr @lgdt330x_probe, ptr @lgdt330x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lgdt330x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@lgdt3302_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3302 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 5056941, i32 10762000, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt330x_release, ptr null, ptr @lgdt330x_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt330x_set_parameters, ptr @lgdt330x_get_tune_settings, ptr @lgdt330x_get_frontend, ptr @lgdt3302_read_status, ptr null, ptr @lgdt330x_read_signal_strength, ptr @lgdt330x_read_snr, ptr @lgdt330x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@lgdt3303_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3303 VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 5056941, i32 10762000, i32 0, i32 2138112 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt330x_release, ptr null, ptr @lgdt330x_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt330x_set_parameters, ptr @lgdt330x_get_tune_settings, ptr @lgdt330x_get_frontend, ptr @lgdt3303_read_status, ptr null, ptr @lgdt330x_read_signal_strength, ptr @lgdt330x_read_snr, ptr @lgdt330x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Demod loaded for LGDT330%s chip\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Error loading lgdt330x driver\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@lgdt330x_init.lgdt3302_init_data = internal constant [28 x i8] c"\16\00\17\87\18\8E\19\01f\FB-@.\93/\003\C64@*\07,\FE0\081\9A", align 1
@lgdt330x_init.lgdt3303_init_data = internal constant [2 x i8] c"L\14", align 1
@lgdt330x_init.flip_1_lgdt3303_init_data = internal constant [4 x i8] c"L\14\87\F3", align 1
@lgdt330x_init.flip_2_lgdt3303_init_data = internal constant [4 x i8] c"L\14\87\DA", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LGDT3302\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"LGDT3303\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Only LGDT3302 and LGDT3303 are supported chips.\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Initialized the %s chip\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s: error (addr %02x <- %02x, err = %i)\0A\00", align 1
@__func__.i2c_write_demod_bytes = private unnamed_addr constant [22 x i8] c"i2c_write_demod_bytes\00", align 1
@lgdt330x_set_parameters.lgdt3303_8vsb_44_data = internal constant [12 x i8] c"\04\00\0D@\0E\87\0F\8E\10\01G\8B", align 1
@lgdt330x_set_parameters.lgdt3303_qam_data = internal constant [22 x i8] c"\04\00\0D\00\0E\00\0F\00\10\00QcGfHfM\1AI\08J\9B", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"VSB_8 MODE\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"QAM_64 MODE\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"QAM_256 MODE\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"%s: Modulation type(%d) UNSUPPORTED\0A\00", align 1
@__func__.lgdt330x_set_parameters = private unnamed_addr constant [24 x i8] c"lgdt330x_set_parameters\00", align 1
@.str.16 = private unnamed_addr constant [62 x i8] c"%s: error blasting bytes to lgdt3303 for modulation type(%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"AGC_STATUS = 0x%02x\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"TOP_CONTROL = 0x%02x, IRO_MASK = 0x%02x, IRQ_STATUS = 0x%02x\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"CARRIER_LOCK = 0x%02x\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"%s: Modulation set to unsupported value\0A\00", align 1
@__func__.lgdt3302_read_status = private unnamed_addr constant [21 x i8] c"lgdt3302_read_status\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.21 = private unnamed_addr constant [14 x i8] c"UCB = 0x%02x\0A\00", align 1
@__func__.lgdt3302_read_snr = private unnamed_addr constant [18 x i8] c"lgdt3302_read_snr\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"noise = 0x%08x, snr = %d.%02d dB\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"QAM LOCK = 0x%02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"8-VSB LOCK = 0x%02x\0A\00", align 1
@__func__.lgdt3303_read_status = private unnamed_addr constant [21 x i8] c"lgdt3303_read_status\00", align 1
@__func__.lgdt3303_read_snr = private unnamed_addr constant [18 x i8] c"lgdt3303_read_snr\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"%s: addr 0x%02x select 0x%02x error (ret == %i)\0A\00", align 1
@__func__.i2c_read_demod_bytes = private unnamed_addr constant [21 x i8] c"i2c_read_demod_bytes\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_lgdt330x_attach, ptr @__param_debug], section "llvm.metadata"

@__mod_i2c__lgdt330x_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @lgdt330x_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lgdt330x_attach(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = alloca %struct.i2c_board_info, align 4
  %5 = alloca %struct.lgdt330x_config, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, ptr noundef align 4 dereferenceable(24) %0, i32 24, i1 false)
  %6 = call i32 @strscpy(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 20) #11
  %7 = zext i8 %1 to i16
  %8 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 2
  store i16 %7, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_board_info, ptr %4, i32 0, i32 4
  store ptr %5, ptr %9, align 4
  %10 = call ptr @i2c_new_client_device(ptr noundef %2, ptr noundef nonnull %4) #11
  %11 = icmp eq ptr %10, null
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  %13 = or i1 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4, i32 8
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.lgdt330x_state, ptr %20, i32 0, i32 2
  br label %22

22:                                               ; preds = %18, %14, %3
  %23 = phi ptr [ %21, %18 ], [ null, %14 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #11
  ret ptr %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @lgdt330x_get_dvb_frontend(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.lgdt330x_state, ptr %3, i32 0, i32 2
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #6 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @lgdt330x_driver) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #6 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @lgdt330x_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt330x_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1088) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 1
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %12 = load ptr, ptr %11, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(24) %10, ptr noundef align 1 dereferenceable(24) %12, i32 24, i1 false)
  %13 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %7, ptr %13, align 8
  store ptr %0, ptr %7, align 8
  %14 = load i32, ptr %10, align 4
  switch i32 %14, label %49 [
    i32 1, label %15
    i32 2, label %17
  ]

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %16, ptr noundef nonnull align 4 dereferenceable(544) @lgdt3302_ops, i32 544, i1 false)
  br label %19

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(544) %18, ptr noundef nonnull align 4 dereferenceable(544) @lgdt3303_ops, i32 544, i1 false)
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 2, i32 3
  store ptr %7, ptr %20, align 4
  %21 = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 1, i32 5
  store ptr @lgdt330x_get_dvb_frontend, ptr %21, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 2, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %22 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %22, i8 0, i32 16, i1 false) #11, !annotation !8
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  store i16 %24, ptr %4, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %24, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %4, i32 noundef 2) #11
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %41, label %35

35:                                               ; preds = %19
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = zext i16 %39 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %40, i32 noundef 2, i32 noundef %33) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  br label %49

41:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %42 = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 7
  store i32 -1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.lgdt330x_state, ptr %7, i32 0, i32 3
  store i32 -1, ptr %43, align 4
  %44 = load ptr, ptr %7, align 8
  %45 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %46 = load i32, ptr %10, align 4
  %47 = icmp eq i32 %46, 1
  %48 = select i1 %47, ptr @.str.2, ptr @.str.3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.1, ptr noundef nonnull %48) #13
  br label %54

49:                                               ; preds = %35, %9, %2
  call void @kfree(ptr noundef %7) #11
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %53, ptr noundef nonnull @.str.5) #13
  br label %54

54:                                               ; preds = %52, %49, %41
  %55 = phi i32 [ 0, %41 ], [ -19, %52 ], [ -19, %49 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt330x_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lgdt330x_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  tail call void @i2c_unregister_device(ptr noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt330x_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.lgdt330x_state, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %126 [
    i32 1, label %6
    i32 2, label %74
  ]

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull @lgdt330x_init.lgdt3302_init_data, i32 noundef 2, i16 noundef zeroext 0) #11
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %22, label %10

10:                                               ; preds = %70, %66, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %6
  %11 = phi ptr [ @lgdt330x_init.lgdt3302_init_data, %6 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 2), %22 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 4), %26 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 6), %30 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 8), %34 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 10), %38 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 12), %42 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 14), %46 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 16), %50 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 18), %54 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 20), %58 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 22), %62 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 24), %66 ], [ getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 26), %70 ]
  %12 = phi i32 [ %8, %6 ], [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %36, %34 ], [ %40, %38 ], [ %44, %42 ], [ %48, %46 ], [ %52, %50 ], [ %56, %54 ], [ %60, %58 ], [ %64, %62 ], [ %68, %66 ], [ %72, %70 ]
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  %15 = load i8, ptr %11, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %11, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %16, i32 noundef %19, i32 noundef %12) #13
  %20 = icmp slt i32 %12, 0
  %21 = select i1 %20, i32 %12, i32 -121
  br label %129

22:                                               ; preds = %6
  %23 = load ptr, ptr %3, align 4
  %24 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %23, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #11
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %10

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 4
  %28 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #11
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %10

30:                                               ; preds = %26
  %31 = load ptr, ptr %3, align 4
  %32 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %31, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #11
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %10

34:                                               ; preds = %30
  %35 = load ptr, ptr %3, align 4
  %36 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %35, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #11
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %10

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 4
  %40 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #11
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %10

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 4
  %44 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %43, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 12), i32 noundef 2, i16 noundef zeroext 0) #11
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %10

46:                                               ; preds = %42
  %47 = load ptr, ptr %3, align 4
  %48 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %47, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 14), i32 noundef 2, i16 noundef zeroext 0) #11
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %10

50:                                               ; preds = %46
  %51 = load ptr, ptr %3, align 4
  %52 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %51, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 16), i32 noundef 2, i16 noundef zeroext 0) #11
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %10

54:                                               ; preds = %50
  %55 = load ptr, ptr %3, align 4
  %56 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %55, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 18), i32 noundef 2, i16 noundef zeroext 0) #11
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %10

58:                                               ; preds = %54
  %59 = load ptr, ptr %3, align 4
  %60 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %59, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 20), i32 noundef 2, i16 noundef zeroext 0) #11
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %10

62:                                               ; preds = %58
  %63 = load ptr, ptr %3, align 4
  %64 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %63, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 22), i32 noundef 2, i16 noundef zeroext 0) #11
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %10

66:                                               ; preds = %62
  %67 = load ptr, ptr %3, align 4
  %68 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 24), i32 noundef 2, i16 noundef zeroext 0) #11
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %10

70:                                               ; preds = %66
  %71 = load ptr, ptr %3, align 4
  %72 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %71, ptr noundef getelementptr inbounds ([28 x i8], ptr @lgdt330x_init.lgdt3302_init_data, i32 0, i32 26), i32 noundef 2, i16 noundef zeroext 0) #11
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %129, label %10

74:                                               ; preds = %1
  %75 = getelementptr inbounds %struct.lgdt330x_state, ptr %3, i32 0, i32 1, i32 4
  %76 = load i32, ptr %75, align 4
  switch i32 %76, label %85 [
    i32 2, label %81
    i32 1, label %77
  ]

77:                                               ; preds = %74
  %78 = load ptr, ptr %3, align 4
  %79 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %78, ptr noundef nonnull @lgdt330x_init.flip_1_lgdt3303_init_data, i32 noundef 2, i16 noundef zeroext 0) #11
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %117, label %105

81:                                               ; preds = %74
  %82 = load ptr, ptr %3, align 4
  %83 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %82, ptr noundef nonnull @lgdt330x_init.flip_2_lgdt3303_init_data, i32 noundef 2, i16 noundef zeroext 0) #11
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %101, label %89

85:                                               ; preds = %74
  %86 = load ptr, ptr %3, align 4
  %87 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %86, ptr noundef nonnull @lgdt330x_init.lgdt3303_init_data, i32 noundef 2, i16 noundef zeroext 0) #11
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %129, label %121

89:                                               ; preds = %101, %81
  %90 = phi ptr [ @lgdt330x_init.flip_2_lgdt3303_init_data, %81 ], [ getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_2_lgdt3303_init_data, i32 0, i32 2), %101 ]
  %91 = phi i32 [ %83, %81 ], [ %103, %101 ]
  %92 = load ptr, ptr %3, align 4
  %93 = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 4
  %94 = load i8, ptr %90, align 1
  %95 = zext i8 %94 to i32
  %96 = getelementptr i8, ptr %90, i32 1
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %95, i32 noundef %98, i32 noundef %91) #13
  %99 = icmp slt i32 %91, 0
  %100 = select i1 %99, i32 %91, i32 -121
  br label %129

101:                                              ; preds = %81
  %102 = load ptr, ptr %3, align 4
  %103 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %102, ptr noundef getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_2_lgdt3303_init_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #11
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %129, label %89

105:                                              ; preds = %117, %77
  %106 = phi ptr [ @lgdt330x_init.flip_1_lgdt3303_init_data, %77 ], [ getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_1_lgdt3303_init_data, i32 0, i32 2), %117 ]
  %107 = phi i32 [ %79, %77 ], [ %119, %117 ]
  %108 = load ptr, ptr %3, align 4
  %109 = getelementptr inbounds %struct.i2c_client, ptr %108, i32 0, i32 4
  %110 = load i8, ptr %106, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr i8, ptr %106, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %111, i32 noundef %114, i32 noundef %107) #13
  %115 = icmp slt i32 %107, 0
  %116 = select i1 %115, i32 %107, i32 -121
  br label %129

117:                                              ; preds = %77
  %118 = load ptr, ptr %3, align 4
  %119 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %118, ptr noundef getelementptr inbounds ([4 x i8], ptr @lgdt330x_init.flip_1_lgdt3303_init_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #11
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %129, label %105

121:                                              ; preds = %85
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef 76, i32 noundef 20, i32 noundef %87) #13
  %124 = icmp slt i32 %87, 0
  %125 = select i1 %124, i32 %87, i32 -121
  br label %129

126:                                              ; preds = %1
  %127 = load ptr, ptr %3, align 4
  %128 = getelementptr inbounds %struct.i2c_client, ptr %127, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %128, ptr noundef nonnull @.str.9) #13
  br label %129

129:                                              ; preds = %126, %121, %117, %105, %101, %89, %85, %70, %10
  %130 = phi ptr [ @.str.8, %126 ], [ @.str.6, %10 ], [ @.str.7, %89 ], [ @.str.7, %105 ], [ @.str.7, %121 ], [ @.str.6, %70 ], [ @.str.7, %101 ], [ @.str.7, %117 ], [ @.str.7, %85 ]
  %131 = phi i32 [ -19, %126 ], [ %21, %10 ], [ %100, %89 ], [ %116, %105 ], [ %125, %121 ], [ 0, %70 ], [ 0, %101 ], [ 0, %117 ], [ 0, %85 ]
  %132 = load i32, ptr @debug, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %3, align 4
  %136 = getelementptr inbounds %struct.i2c_client, ptr %135, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %136, ptr noundef nonnull @.str.10, ptr noundef nonnull %130) #13
  br label %137

137:                                              ; preds = %134, %129
  %138 = icmp slt i32 %131, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %140, align 1
  %141 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %141, align 1
  %142 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48
  store i8 1, ptr %142, align 2
  %143 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %143, align 1
  %144 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49
  store i8 1, ptr %144, align 1
  %145 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %145, align 1
  %146 = getelementptr inbounds %struct.lgdt330x_state, ptr %3, i32 0, i32 6
  store i32 0, ptr %146, align 4
  %147 = tail call fastcc i32 @lgdt330x_sw_reset(ptr noundef %3)
  br label %148

148:                                              ; preds = %139, %137
  %149 = phi i32 [ %147, %139 ], [ %131, %137 ]
  ret i32 %149
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt330x_set_parameters(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 768, ptr %2, align 2
  %6 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %217, label %11

11:                                               ; preds = %1
  switch i32 %9, label %175 [
    i32 7, label %12
    i32 3, label %53
    i32 5, label %114
  ]

12:                                               ; preds = %11
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %17, ptr noundef nonnull @.str.12) #13
  br label %18

18:                                               ; preds = %15, %12
  %19 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 3, ptr %19, align 1
  %20 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1
  %21 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = tail call i32 %22(ptr noundef %0, i32 noundef 1) #11
  br label %26

26:                                               ; preds = %24, %18
  %27 = load i32, ptr %20, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %192

29:                                               ; preds = %26
  %30 = load ptr, ptr %5, align 4
  %31 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 noundef 2, i16 noundef zeroext 0) #11
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %178

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 4
  %35 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #11
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %178

37:                                               ; preds = %33
  %38 = load ptr, ptr %5, align 4
  %39 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %38, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #11
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %178

41:                                               ; preds = %37
  %42 = load ptr, ptr %5, align 4
  %43 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %42, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #11
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %178

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 4
  %47 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %46, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #11
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %178

49:                                               ; preds = %45
  %50 = load ptr, ptr %5, align 4
  %51 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #11
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %192, label %178

53:                                               ; preds = %11
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %58, ptr noundef nonnull @.str.13) #13
  br label %59

59:                                               ; preds = %56, %53
  %60 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 0, ptr %60, align 1
  %61 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1
  %62 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = tail call i32 %63(ptr noundef %0, i32 noundef 0) #11
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i32, ptr %61, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %192

70:                                               ; preds = %67
  %71 = load ptr, ptr %5, align 4
  %72 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %71, ptr noundef nonnull @lgdt330x_set_parameters.lgdt3303_qam_data, i32 noundef 2, i16 noundef zeroext 0) #11
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %178

74:                                               ; preds = %70
  %75 = load ptr, ptr %5, align 4
  %76 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %75, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #11
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %178

78:                                               ; preds = %74
  %79 = load ptr, ptr %5, align 4
  %80 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %79, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #11
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %178

82:                                               ; preds = %78
  %83 = load ptr, ptr %5, align 4
  %84 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %83, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #11
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %178

86:                                               ; preds = %82
  %87 = load ptr, ptr %5, align 4
  %88 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %87, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #11
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %178

90:                                               ; preds = %86
  %91 = load ptr, ptr %5, align 4
  %92 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %91, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #11
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %178

94:                                               ; preds = %90
  %95 = load ptr, ptr %5, align 4
  %96 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %95, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), i32 noundef 2, i16 noundef zeroext 0) #11
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %178

98:                                               ; preds = %94
  %99 = load ptr, ptr %5, align 4
  %100 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %99, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), i32 noundef 2, i16 noundef zeroext 0) #11
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %178

102:                                              ; preds = %98
  %103 = load ptr, ptr %5, align 4
  %104 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %103, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), i32 noundef 2, i16 noundef zeroext 0) #11
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %178

106:                                              ; preds = %102
  %107 = load ptr, ptr %5, align 4
  %108 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %107, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), i32 noundef 2, i16 noundef zeroext 0) #11
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %178

110:                                              ; preds = %106
  %111 = load ptr, ptr %5, align 4
  %112 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %111, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), i32 noundef 2, i16 noundef zeroext 0) #11
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %192, label %178

114:                                              ; preds = %11
  %115 = load i32, ptr @debug, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %5, align 4
  %119 = getelementptr inbounds %struct.i2c_client, ptr %118, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %119, ptr noundef nonnull @.str.14) #13
  br label %120

120:                                              ; preds = %117, %114
  %121 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 1, ptr %121, align 1
  %122 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1
  %123 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = tail call i32 %124(ptr noundef %0, i32 noundef 0) #11
  br label %128

128:                                              ; preds = %126, %120
  %129 = load i32, ptr %122, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %192

131:                                              ; preds = %128
  %132 = load ptr, ptr %5, align 4
  %133 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %132, ptr noundef nonnull @lgdt330x_set_parameters.lgdt3303_qam_data, i32 noundef 2, i16 noundef zeroext 0) #11
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %135, label %178

135:                                              ; preds = %131
  %136 = load ptr, ptr %5, align 4
  %137 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %136, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #11
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %178

139:                                              ; preds = %135
  %140 = load ptr, ptr %5, align 4
  %141 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %140, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), i32 noundef 2, i16 noundef zeroext 0) #11
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load ptr, ptr %5, align 4
  %145 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %144, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), i32 noundef 2, i16 noundef zeroext 0) #11
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %178

147:                                              ; preds = %143
  %148 = load ptr, ptr %5, align 4
  %149 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %148, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), i32 noundef 2, i16 noundef zeroext 0) #11
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %178

151:                                              ; preds = %147
  %152 = load ptr, ptr %5, align 4
  %153 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %152, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), i32 noundef 2, i16 noundef zeroext 0) #11
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %178

155:                                              ; preds = %151
  %156 = load ptr, ptr %5, align 4
  %157 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %156, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), i32 noundef 2, i16 noundef zeroext 0) #11
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %178

159:                                              ; preds = %155
  %160 = load ptr, ptr %5, align 4
  %161 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %160, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), i32 noundef 2, i16 noundef zeroext 0) #11
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load ptr, ptr %5, align 4
  %165 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %164, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), i32 noundef 2, i16 noundef zeroext 0) #11
  %166 = icmp eq i32 %165, 2
  br i1 %166, label %167, label %178

167:                                              ; preds = %163
  %168 = load ptr, ptr %5, align 4
  %169 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %168, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), i32 noundef 2, i16 noundef zeroext 0) #11
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = load ptr, ptr %5, align 4
  %173 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %172, ptr noundef getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), i32 noundef 2, i16 noundef zeroext 0) #11
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %192, label %178

175:                                              ; preds = %11
  %176 = load ptr, ptr %5, align 4
  %177 = getelementptr inbounds %struct.i2c_client, ptr %176, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %177, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.lgdt330x_set_parameters, i32 noundef %9) #13
  br label %232

178:                                              ; preds = %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %110, %106, %102, %98, %94, %90, %86, %82, %78, %74, %70, %49, %45, %41, %37, %33, %29
  %179 = phi ptr [ @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, %29 ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 2), %33 ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 4), %37 ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 6), %41 ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 8), %45 ], [ getelementptr inbounds ([12 x i8], ptr @lgdt330x_set_parameters.lgdt3303_8vsb_44_data, i32 0, i32 10), %49 ], [ @lgdt330x_set_parameters.lgdt3303_qam_data, %70 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), %74 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), %78 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), %82 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), %86 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), %90 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), %94 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), %98 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), %102 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), %106 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), %110 ], [ @lgdt330x_set_parameters.lgdt3303_qam_data, %131 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 2), %135 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 4), %139 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 6), %143 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 8), %147 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 10), %151 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 12), %155 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 14), %159 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 16), %163 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 18), %167 ], [ getelementptr inbounds ([22 x i8], ptr @lgdt330x_set_parameters.lgdt3303_qam_data, i32 0, i32 20), %171 ]
  %180 = phi i32 [ %31, %29 ], [ %35, %33 ], [ %39, %37 ], [ %43, %41 ], [ %47, %45 ], [ %51, %49 ], [ %72, %70 ], [ %76, %74 ], [ %80, %78 ], [ %84, %82 ], [ %88, %86 ], [ %92, %90 ], [ %96, %94 ], [ %100, %98 ], [ %104, %102 ], [ %108, %106 ], [ %112, %110 ], [ %133, %131 ], [ %137, %135 ], [ %141, %139 ], [ %145, %143 ], [ %149, %147 ], [ %153, %151 ], [ %157, %155 ], [ %161, %159 ], [ %165, %163 ], [ %169, %167 ], [ %173, %171 ]
  %181 = phi i8 [ 3, %29 ], [ 3, %33 ], [ 3, %37 ], [ 3, %41 ], [ 3, %45 ], [ 3, %49 ], [ 0, %70 ], [ 0, %74 ], [ 0, %78 ], [ 0, %82 ], [ 0, %86 ], [ 0, %90 ], [ 0, %94 ], [ 0, %98 ], [ 0, %102 ], [ 0, %106 ], [ 0, %110 ], [ 1, %131 ], [ 1, %135 ], [ 1, %139 ], [ 1, %143 ], [ 1, %147 ], [ 1, %151 ], [ 1, %155 ], [ 1, %159 ], [ 1, %163 ], [ 1, %167 ], [ 1, %171 ]
  %182 = load ptr, ptr %5, align 4
  %183 = getelementptr inbounds %struct.i2c_client, ptr %182, i32 0, i32 4
  %184 = load i8, ptr %179, align 1
  %185 = zext i8 %184 to i32
  %186 = getelementptr i8, ptr %179, i32 1
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %183, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %185, i32 noundef %188, i32 noundef %180) #13
  %189 = load ptr, ptr %5, align 4
  %190 = getelementptr inbounds %struct.i2c_client, ptr %189, i32 0, i32 4
  %191 = load i32, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.lgdt330x_set_parameters, i32 noundef %191) #13
  br label %192

192:                                              ; preds = %178, %171, %128, %110, %67, %49, %26
  %193 = phi i8 [ 3, %26 ], [ 0, %67 ], [ 1, %128 ], [ %181, %178 ], [ 3, %49 ], [ 0, %110 ], [ 1, %171 ]
  %194 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1, i32 1
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %197 = trunc i32 %195 to i8
  %198 = or i8 %193, %197
  store i8 %198, ptr %196, align 1
  %199 = load ptr, ptr %5, align 4
  %200 = call i32 @i2c_transfer_buffer_flags(ptr noundef %199, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #11
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %209, label %202

202:                                              ; preds = %192
  %203 = load ptr, ptr %5, align 4
  %204 = getelementptr inbounds %struct.i2c_client, ptr %203, i32 0, i32 4
  %205 = load i8, ptr %2, align 2
  %206 = zext i8 %205 to i32
  %207 = load i8, ptr %196, align 1
  %208 = zext i8 %207 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %204, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %206, i32 noundef %208, i32 noundef %200) #13
  br label %209

209:                                              ; preds = %202, %192
  %210 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 1, i32 3
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = call i32 %211(ptr noundef %0, i32 noundef 0) #11
  br label %215

215:                                              ; preds = %213, %209
  %216 = load i32, ptr %8, align 4
  store i32 %216, ptr %6, align 4
  br label %217

217:                                              ; preds = %215, %1
  %218 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %228, label %221

221:                                              ; preds = %217
  %222 = call i32 %219(ptr noundef %0) #11
  %223 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %221
  %227 = call i32 %224(ptr noundef %0, i32 noundef 0) #11
  br label %228

228:                                              ; preds = %226, %221, %217
  %229 = load i32, ptr %3, align 4
  %230 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 7
  store i32 %229, ptr %230, align 4
  %231 = call fastcc i32 @lgdt330x_sw_reset(ptr noundef %5)
  br label %232

232:                                              ; preds = %228, %175
  %233 = phi i32 [ -1, %175 ], [ 0, %228 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  ret i32 %233
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @lgdt330x_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 500, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %1, i32 0, i32 2
  store i32 0, ptr %4, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @lgdt330x_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lgdt330x_state, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3302_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [1 x i8], align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [3 x i8], align 1
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %16) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %16, i8 0, i32 3, i1 false), !annotation !8
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 63, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  %19 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %19, i8 0, i32 16, i1 false) #11, !annotation !8
  %20 = load ptr, ptr %18, align 4
  %21 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  store i16 %22, ptr %15, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %23, align 2
  store i16 1, ptr %19, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %26 = load i16, ptr %21, align 2
  store i16 %26, ptr %25, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %16, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %15, i32 noundef 2) #11
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load ptr, ptr %18, align 4
  %36 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.i2c_client, ptr %35, i32 0, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %39, i32 noundef 63, i32 noundef %32) #13
  br label %40

40:                                               ; preds = %34, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  %41 = load i32, ptr @debug, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %18, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %46 = load i8, ptr %16, align 1
  %47 = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %45, ptr noundef nonnull @.str.17, i32 noundef %47) #13
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i8, ptr %16, align 1
  %50 = and i8 %49, 12
  %51 = icmp eq i8 %50, 8
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, ptr %1, align 4
  %54 = or i32 %53, 1
  store i32 %54, ptr %1, align 4
  br label %55

55:                                               ; preds = %52, %48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #11
  %56 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %56, i8 0, i32 16, i1 false) #11, !annotation !8
  %57 = load ptr, ptr %18, align 4
  %58 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  store i16 %59, ptr %13, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %60, align 2
  store i16 1, ptr %56, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %61, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %63 = load i16, ptr %58, align 2
  store i16 %63, ptr %62, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 3, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %16, ptr %66, align 4
  %67 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %13, i32 noundef 2) #11
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %77, label %71

71:                                               ; preds = %55
  %72 = load ptr, ptr %18, align 4
  %73 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 1
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %73, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %76, i32 noundef 0, i32 noundef %69) #13
  br label %77

77:                                               ; preds = %71, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  %78 = load i32, ptr @debug, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %18, align 4
  %82 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 4
  %83 = load i8, ptr %16, align 1
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 1
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %82, ptr noundef nonnull @.str.18, i32 noundef %84, i32 noundef %87, i32 noundef %90) #13
  br label %91

91:                                               ; preds = %80, %77
  %92 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 2
  %93 = load i8, ptr %92, align 1
  %94 = and i8 %93, 3
  %95 = icmp eq i8 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, ptr %1, align 4
  %98 = or i32 %97, 8
  store i32 %98, ptr %1, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = and i8 %93, 12
  %101 = icmp eq i8 %100, 8
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, ptr %1, align 4
  %104 = or i32 %103, 20
  store i32 %104, ptr %1, align 4
  br label %105

105:                                              ; preds = %102, %99
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 28, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %106 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %106, i8 0, i32 16, i1 false) #11, !annotation !8
  %107 = load ptr, ptr %18, align 4
  %108 = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 1
  %109 = load i16, ptr %108, align 2
  store i16 %109, ptr %11, align 4
  %110 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %110, align 2
  store i16 1, ptr %106, align 4
  %111 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %111, align 4
  %112 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %113 = load i16, ptr %108, align 2
  store i16 %113, ptr %112, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %114, align 2
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %115, align 4
  %116 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %16, ptr %116, align 4
  %117 = getelementptr inbounds %struct.i2c_client, ptr %107, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8
  %119 = call i32 @i2c_transfer(ptr noundef %118, ptr noundef nonnull %11, i32 noundef 2) #11
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %127, label %121

121:                                              ; preds = %105
  %122 = load ptr, ptr %18, align 4
  %123 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 1
  %125 = load i16, ptr %124, align 2
  %126 = zext i16 %125 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %126, i32 noundef 28, i32 noundef %119) #13
  br label %127

127:                                              ; preds = %121, %105
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  %128 = load i32, ptr @debug, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %18, align 4
  %132 = getelementptr inbounds %struct.i2c_client, ptr %131, i32 0, i32 4
  %133 = load i8, ptr %16, align 1
  %134 = zext i8 %133 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %132, ptr noundef nonnull @.str.19, i32 noundef %134) #13
  br label %135

135:                                              ; preds = %130, %127
  %136 = getelementptr inbounds %struct.lgdt330x_state, ptr %18, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  switch i32 %137, label %151 [
    i32 5, label %138
    i32 3, label %138
    i32 7, label %145
  ]

138:                                              ; preds = %135, %135
  %139 = load i8, ptr %16, align 1
  %140 = and i8 %139, 7
  %141 = icmp eq i8 %140, 7
  br i1 %141, label %142, label %154

142:                                              ; preds = %138
  %143 = load i32, ptr %1, align 4
  %144 = or i32 %143, 2
  store i32 %144, ptr %1, align 4
  br label %154

145:                                              ; preds = %135
  %146 = load i8, ptr %16, align 1
  %147 = icmp slt i8 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i32, ptr %1, align 4
  %150 = or i32 %149, 2
  store i32 %150, ptr %1, align 4
  br label %154

151:                                              ; preds = %135
  %152 = load ptr, ptr %18, align 4
  %153 = getelementptr inbounds %struct.i2c_client, ptr %152, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %153, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.lgdt3302_read_status) #13
  br label %154

154:                                              ; preds = %151, %148, %145, %142, %138
  %155 = load i32, ptr %1, align 4
  %156 = and i32 %155, 16
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %159, align 1
  %160 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %160, align 1
  %161 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %161, align 1
  br label %333

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.lgdt330x_state, ptr %18, i32 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load volatile i32, ptr @jiffies, align 64
  %168 = sub i32 %167, %164
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %333, label %170

170:                                              ; preds = %166, %162
  %171 = load volatile i32, ptr @jiffies, align 64
  %172 = add i32 %171, 100
  store i32 %172, ptr %163, align 4
  %173 = load ptr, ptr %17, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %9, i8 0, i32 5, i1 false) #11, !annotation !8
  %174 = getelementptr inbounds %struct.lgdt330x_state, ptr %173, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  switch i32 %175, label %277 [
    i32 7, label %176
    i32 3, label %212
    i32 5, label %212
  ]

176:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 71, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %177 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %177, i8 0, i32 16, i1 false) #11, !annotation !8
  %178 = load ptr, ptr %173, align 4
  %179 = getelementptr inbounds %struct.i2c_client, ptr %178, i32 0, i32 1
  %180 = load i16, ptr %179, align 2
  store i16 %180, ptr %8, align 4
  %181 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %181, align 2
  store i16 1, ptr %177, align 4
  %182 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %182, align 4
  %183 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %184 = load i16, ptr %179, align 2
  store i16 %184, ptr %183, align 4
  %185 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %185, align 2
  %186 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 5, ptr %186, align 4
  %187 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %9, ptr %187, align 4
  %188 = getelementptr inbounds %struct.i2c_client, ptr %178, i32 0, i32 3
  %189 = load ptr, ptr %188, align 8
  %190 = call i32 @i2c_transfer(ptr noundef %189, ptr noundef nonnull %8, i32 noundef 2) #11
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %198, label %192

192:                                              ; preds = %176
  %193 = load ptr, ptr %173, align 4
  %194 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.i2c_client, ptr %193, i32 0, i32 1
  %196 = load i16, ptr %195, align 2
  %197 = zext i16 %196 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %194, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %197, i32 noundef 71, i32 noundef %190) #13
  br label %198

198:                                              ; preds = %192, %176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  %199 = load i8, ptr %9, align 1
  %200 = and i8 %199, 56
  %201 = zext i8 %200 to i32
  %202 = shl nuw nsw i32 %201, 13
  %203 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 3
  %204 = load i8, ptr %203, align 1
  %205 = zext i8 %204 to i32
  %206 = shl nuw nsw i32 %205, 8
  %207 = or i32 %202, %206
  %208 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 4
  %209 = load i8, ptr %208, align 1
  %210 = zext i8 %209 to i32
  %211 = or i32 %207, %210
  br label %246

212:                                              ; preds = %170, %170
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 26, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %213 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %213, i8 0, i32 16, i1 false) #11, !annotation !8
  %214 = load ptr, ptr %173, align 4
  %215 = getelementptr inbounds %struct.i2c_client, ptr %214, i32 0, i32 1
  %216 = load i16, ptr %215, align 2
  store i16 %216, ptr %6, align 4
  %217 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %217, align 2
  store i16 1, ptr %213, align 4
  %218 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %218, align 4
  %219 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %220 = load i16, ptr %215, align 2
  store i16 %220, ptr %219, align 4
  %221 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %221, align 2
  %222 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %222, align 4
  %223 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %9, ptr %223, align 4
  %224 = getelementptr inbounds %struct.i2c_client, ptr %214, i32 0, i32 3
  %225 = load ptr, ptr %224, align 8
  %226 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %6, i32 noundef 2) #11
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %234, label %228

228:                                              ; preds = %212
  %229 = load ptr, ptr %173, align 4
  %230 = getelementptr inbounds %struct.i2c_client, ptr %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.i2c_client, ptr %229, i32 0, i32 1
  %232 = load i16, ptr %231, align 2
  %233 = zext i16 %232 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %230, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %233, i32 noundef 26, i32 noundef %226) #13
  br label %234

234:                                              ; preds = %228, %212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  %235 = load i8, ptr %9, align 1
  %236 = and i8 %235, 3
  %237 = zext i8 %236 to i32
  %238 = shl nuw nsw i32 %237, 8
  %239 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = zext i8 %240 to i32
  %242 = or i32 %238, %241
  %243 = load i32, ptr %174, align 4
  %244 = icmp eq i32 %243, 3
  %245 = select i1 %244, i32 97939837, i32 98026066
  br label %246

246:                                              ; preds = %234, %198
  %247 = phi i32 [ %242, %234 ], [ %211, %198 ]
  %248 = phi i32 [ %245, %234 ], [ 73957994, %198 ]
  %249 = icmp eq i32 %247, 0
  br i1 %249, label %256, label %250

250:                                              ; preds = %246
  %251 = call i32 @intlog10(i32 noundef %247) #11
  %252 = icmp ult i32 %248, %251
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = sub i32 %248, %251
  %255 = mul i32 %254, 10
  br label %256

256:                                              ; preds = %253, %250, %246
  %257 = phi i32 [ %255, %253 ], [ 0, %246 ], [ 0, %250 ]
  %258 = getelementptr inbounds %struct.lgdt330x_state, ptr %173, i32 0, i32 4
  store i32 %257, ptr %258, align 4
  %259 = load i32, ptr @debug, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %269, label %261

261:                                              ; preds = %256
  %262 = load ptr, ptr %173, align 4
  %263 = getelementptr inbounds %struct.i2c_client, ptr %262, i32 0, i32 4
  %264 = lshr i32 %257, 24
  %265 = lshr i32 %257, 8
  %266 = and i32 %265, 65535
  %267 = mul nuw nsw i32 %266, 100
  %268 = lshr i32 %267, 16
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %263, ptr noundef nonnull @.str.22, i32 noundef %247, i32 noundef %264, i32 noundef %268) #13
  br label %269

269:                                              ; preds = %261, %256
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %9) #11
  %270 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %270, align 1
  %271 = getelementptr inbounds %struct.lgdt330x_state, ptr %18, i32 0, i32 4
  %272 = load i32, ptr %271, align 4
  %273 = zext i32 %272 to i64
  %274 = mul nuw nsw i64 %273, 1000
  %275 = lshr i64 %274, 24
  %276 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %275, ptr %276, align 1
  br label %282

277:                                              ; preds = %170
  %278 = load ptr, ptr %173, align 4
  %279 = getelementptr inbounds %struct.i2c_client, ptr %278, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.lgdt3302_read_snr) #13
  %280 = getelementptr inbounds %struct.lgdt330x_state, ptr %173, i32 0, i32 4
  store i32 0, ptr %280, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %9) #11
  %281 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %281, align 1
  br label %282

282:                                              ; preds = %277, %269
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 106, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %283 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %283, i8 0, i32 16, i1 false) #11, !annotation !8
  %284 = load ptr, ptr %18, align 4
  %285 = getelementptr inbounds %struct.i2c_client, ptr %284, i32 0, i32 1
  %286 = load i16, ptr %285, align 2
  store i16 %286, ptr %4, align 4
  %287 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %287, align 2
  store i16 1, ptr %283, align 4
  %288 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %288, align 4
  %289 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %290 = load i16, ptr %285, align 2
  store i16 %290, ptr %289, align 4
  %291 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %291, align 2
  %292 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 3, ptr %292, align 4
  %293 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %16, ptr %293, align 4
  %294 = getelementptr inbounds %struct.i2c_client, ptr %284, i32 0, i32 3
  %295 = load ptr, ptr %294, align 8
  %296 = call i32 @i2c_transfer(ptr noundef %295, ptr noundef nonnull %4, i32 noundef 2) #11
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %306, label %298

298:                                              ; preds = %282
  %299 = load ptr, ptr %18, align 4
  %300 = getelementptr inbounds %struct.i2c_client, ptr %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.i2c_client, ptr %299, i32 0, i32 1
  %302 = load i16, ptr %301, align 2
  %303 = zext i16 %302 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %300, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %303, i32 noundef 106, i32 noundef %296) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %304 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %304, align 1
  %305 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %305, align 1
  br label %333

306:                                              ; preds = %282
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %307 = load i8, ptr %16, align 1
  %308 = zext i8 %307 to i16
  %309 = shl nuw i16 %308, 8
  %310 = getelementptr inbounds [3 x i8], ptr %16, i32 0, i32 1
  %311 = load i8, ptr %310, align 1
  %312 = zext i8 %311 to i16
  %313 = or i16 %309, %312
  %314 = getelementptr inbounds %struct.lgdt330x_state, ptr %18, i32 0, i32 5
  store i16 %313, ptr %314, align 4
  %315 = load i32, ptr @debug, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %306
  %318 = load ptr, ptr %18, align 4
  %319 = getelementptr inbounds %struct.i2c_client, ptr %318, i32 0, i32 4
  %320 = zext i16 %313 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %319, ptr noundef nonnull @.str.21, i32 noundef %320) #13
  %321 = load i16, ptr %314, align 4
  br label %322

322:                                              ; preds = %317, %306
  %323 = phi i16 [ %321, %317 ], [ %313, %306 ]
  %324 = zext i16 %323 to i64
  %325 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  %326 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %327 = load i64, ptr %326, align 1
  %328 = add i64 %327, %324
  store i64 %328, ptr %326, align 1
  %329 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  %330 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %331 = load i64, ptr %330, align 1
  %332 = add i64 %331, 10000
  store i64 %332, ptr %330, align 1
  store i8 3, ptr %325, align 1
  store i8 3, ptr %329, align 1
  br label %333

333:                                              ; preds = %322, %298, %166, %158
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %16) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt330x_read_signal_strength(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 0, ptr %3, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 %7(ptr noundef %0, ptr noundef nonnull %3) #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.lgdt330x_state, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 587202559
  %14 = udiv i32 %12, 8960
  %15 = trunc i32 %14 to i16
  %16 = select i1 %13, i16 -1, i16 %15
  store i16 %16, ptr %1, align 2
  br label %17

17:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @lgdt330x_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lgdt330x_state, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 16
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %1, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @lgdt330x_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lgdt330x_state, ptr %4, i32 0, i32 5
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  store i32 %7, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt330x_sw_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.lgdt330x_state, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %72 [
    i32 1, label %6
    i32 2, label %39
  ]

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #11
  store i16 1, ptr %3, align 2
  %7 = load ptr, ptr %0, align 4
  %8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #11
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %3, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds i8, ptr %3, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %14, i32 noundef %17, i32 noundef %8) #13
  %18 = icmp slt i32 %8, 0
  %19 = select i1 %18, i32 %8, i32 -121
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %10, %6
  %23 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 127, ptr %23, align 1
  %24 = load ptr, ptr %0, align 4
  %25 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #11
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %36, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  %30 = load i8, ptr %3, align 2
  %31 = zext i8 %30 to i32
  %32 = load i8, ptr %23, align 1
  %33 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %31, i32 noundef %33, i32 noundef %25) #13
  %34 = icmp slt i32 %25, 0
  %35 = select i1 %34, i32 %25, i32 -121
  br label %36

36:                                               ; preds = %27, %22, %10
  %37 = phi i32 [ %19, %10 ], [ %35, %27 ], [ 0, %22 ]
  %38 = and i32 %37, 255
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #11
  br label %72

39:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #11
  store i16 2, ptr %2, align 2
  %40 = load ptr, ptr %0, align 4
  %41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %40, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #11
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %0, align 4
  %45 = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %46 = load i8, ptr %2, align 2
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds i8, ptr %2, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %45, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %47, i32 noundef %50, i32 noundef %41) #13
  %51 = icmp slt i32 %41, 0
  %52 = select i1 %51, i32 %41, i32 -121
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %43, %39
  %56 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 1, ptr %56, align 1
  %57 = load ptr, ptr %0, align 4
  %58 = call i32 @i2c_transfer_buffer_flags(ptr noundef %57, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #11
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %69, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %0, align 4
  %62 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4
  %63 = load i8, ptr %2, align 2
  %64 = zext i8 %63 to i32
  %65 = load i8, ptr %56, align 1
  %66 = zext i8 %65 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.i2c_write_demod_bytes, i32 noundef %64, i32 noundef %66, i32 noundef %58) #13
  %67 = icmp slt i32 %58, 0
  %68 = select i1 %67, i32 %58, i32 -121
  br label %69

69:                                               ; preds = %60, %55, %43
  %70 = phi i32 [ %52, %43 ], [ %68, %60 ], [ 0, %55 ]
  %71 = and i32 %70, 255
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #11
  br label %72

72:                                               ; preds = %69, %36, %1
  %73 = phi i32 [ %71, %69 ], [ %38, %36 ], [ -19, %1 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3303_read_status(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [1 x i8], align 1
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [5 x i8], align 1
  %10 = alloca [1 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [1 x i8], align 1
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca [1 x i8], align 1
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [1 x i8], align 1
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca [3 x i8], align 1
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %18) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %18, i8 0, i32 3, i1 false), !annotation !8
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #11
  store i8 88, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #11
  %21 = getelementptr inbounds i8, ptr %17, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %21, i8 0, i32 16, i1 false) #11, !annotation !8
  %22 = load ptr, ptr %20, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  store i16 %24, ptr %17, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %25, align 2
  store i16 1, ptr %21, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %28 = load i16, ptr %23, align 2
  store i16 %28, ptr %27, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  store i16 1, ptr %29, align 2
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  store i16 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  store ptr %18, ptr %31, align 4
  %32 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = call i32 @i2c_transfer(ptr noundef %33, ptr noundef nonnull %17, i32 noundef 2) #11
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %44, label %36

36:                                               ; preds = %2
  %37 = load ptr, ptr %20, align 4
  %38 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %40 = load i16, ptr %39, align 2
  %41 = zext i16 %40 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %41, i32 noundef 88, i32 noundef %34) #13
  %42 = icmp sgt i32 %34, -1
  %43 = select i1 %42, i32 -5, i32 %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  br label %376

44:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %20, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  %50 = load i8, ptr %18, align 1
  %51 = zext i8 %50 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %49, ptr noundef nonnull @.str.17, i32 noundef %51) #13
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i8, ptr %18, align 1
  %54 = and i8 %53, 33
  %55 = icmp eq i8 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, ptr %1, align 4
  %58 = or i32 %57, 1
  store i32 %58, ptr %1, align 4
  br label %59

59:                                               ; preds = %56, %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 28, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  %60 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %60, i8 0, i32 16, i1 false) #11, !annotation !8
  %61 = load ptr, ptr %20, align 4
  %62 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %63 = load i16, ptr %62, align 2
  store i16 %63, ptr %15, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %64, align 2
  store i16 1, ptr %60, align 4
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  %67 = load i16, ptr %62, align 2
  store i16 %67, ptr %66, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %69, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr %18, ptr %70, align 4
  %71 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %15, i32 noundef 2) #11
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %81, label %75

75:                                               ; preds = %59
  %76 = load ptr, ptr %20, align 4
  %77 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = zext i16 %79 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %77, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %80, i32 noundef 28, i32 noundef %73) #13
  br label %81

81:                                               ; preds = %75, %59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  %82 = load i32, ptr @debug, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %20, align 4
  %86 = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4
  %87 = load i8, ptr %18, align 1
  %88 = zext i8 %87 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %86, ptr noundef nonnull @.str.19, i32 noundef %88) #13
  br label %89

89:                                               ; preds = %84, %81
  %90 = getelementptr inbounds %struct.lgdt330x_state, ptr %20, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  switch i32 %91, label %195 [
    i32 5, label %92
    i32 3, label %92
    i32 7, label %147
  ]

92:                                               ; preds = %89, %89
  %93 = load i8, ptr %18, align 1
  %94 = and i8 %93, 7
  %95 = icmp eq i8 %94, 7
  br i1 %95, label %96, label %198

96:                                               ; preds = %92
  %97 = load i32, ptr %1, align 4
  %98 = or i32 %97, 2
  store i32 %98, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 -118, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #11
  %99 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %99, i8 0, i32 16, i1 false) #11, !annotation !8
  %100 = load ptr, ptr %20, align 4
  %101 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 1
  %102 = load i16, ptr %101, align 2
  store i16 %102, ptr %13, align 4
  %103 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %103, align 2
  store i16 1, ptr %99, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %104, align 4
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  %106 = load i16, ptr %101, align 2
  store i16 %106, ptr %105, align 4
  %107 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %107, align 2
  %108 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %108, align 4
  %109 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr %18, ptr %109, align 4
  %110 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 3
  %111 = load ptr, ptr %110, align 8
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %13, i32 noundef 2) #11
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %120, label %114

114:                                              ; preds = %96
  %115 = load ptr, ptr %20, align 4
  %116 = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 1
  %118 = load i16, ptr %117, align 2
  %119 = zext i16 %118 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %116, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %119, i32 noundef 138, i32 noundef %112) #13
  br label %120

120:                                              ; preds = %114, %96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  %121 = load i32, ptr @debug, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %20, align 4
  %125 = getelementptr inbounds %struct.i2c_client, ptr %124, i32 0, i32 4
  %126 = load i8, ptr %18, align 1
  %127 = zext i8 %126 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %125, ptr noundef nonnull @.str.23, i32 noundef %127) #13
  br label %128

128:                                              ; preds = %123, %120
  %129 = load i8, ptr %18, align 1
  %130 = and i8 %129, 4
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load i32, ptr %1, align 4
  %134 = or i32 %133, 8
  store i32 %134, ptr %1, align 4
  br label %135

135:                                              ; preds = %132, %128
  %136 = and i8 %129, 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  %139 = load i32, ptr %1, align 4
  %140 = or i32 %139, 16
  store i32 %140, ptr %1, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = and i8 %129, 8
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %198, label %144

144:                                              ; preds = %141
  %145 = load i32, ptr %1, align 4
  %146 = or i32 %145, 4
  store i32 %146, ptr %1, align 4
  br label %198

147:                                              ; preds = %89
  %148 = load i8, ptr %18, align 1
  %149 = icmp slt i8 %148, 0
  br i1 %149, label %150, label %198

150:                                              ; preds = %147
  %151 = load i32, ptr %1, align 4
  %152 = or i32 %151, 2
  store i32 %152, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  store i8 56, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  %153 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %153, i8 0, i32 16, i1 false) #11, !annotation !8
  %154 = load ptr, ptr %20, align 4
  %155 = getelementptr inbounds %struct.i2c_client, ptr %154, i32 0, i32 1
  %156 = load i16, ptr %155, align 2
  store i16 %156, ptr %11, align 4
  %157 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %157, align 2
  store i16 1, ptr %153, align 4
  %158 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %158, align 4
  %159 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  %160 = load i16, ptr %155, align 2
  store i16 %160, ptr %159, align 4
  %161 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %161, align 2
  %162 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %162, align 4
  %163 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %18, ptr %163, align 4
  %164 = getelementptr inbounds %struct.i2c_client, ptr %154, i32 0, i32 3
  %165 = load ptr, ptr %164, align 8
  %166 = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %11, i32 noundef 2) #11
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %174, label %168

168:                                              ; preds = %150
  %169 = load ptr, ptr %20, align 4
  %170 = getelementptr inbounds %struct.i2c_client, ptr %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.i2c_client, ptr %169, i32 0, i32 1
  %172 = load i16, ptr %171, align 2
  %173 = zext i16 %172 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %170, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %173, i32 noundef 56, i32 noundef %166) #13
  br label %174

174:                                              ; preds = %168, %150
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  %175 = load i32, ptr @debug, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %20, align 4
  %179 = getelementptr inbounds %struct.i2c_client, ptr %178, i32 0, i32 4
  %180 = load i8, ptr %18, align 1
  %181 = zext i8 %180 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %179, ptr noundef nonnull @.str.24, i32 noundef %181) #13
  br label %182

182:                                              ; preds = %177, %174
  %183 = load i8, ptr %18, align 1
  %184 = and i8 %183, 2
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load i32, ptr %1, align 4
  %188 = or i32 %187, 8
  store i32 %188, ptr %1, align 4
  br label %189

189:                                              ; preds = %186, %182
  %190 = and i8 %183, 1
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load i32, ptr %1, align 4
  %194 = or i32 %193, 20
  store i32 %194, ptr %1, align 4
  br label %198

195:                                              ; preds = %89
  %196 = load ptr, ptr %20, align 4
  %197 = getelementptr inbounds %struct.i2c_client, ptr %196, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %197, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.lgdt3303_read_status) #13
  br label %198

198:                                              ; preds = %195, %192, %189, %147, %144, %141, %92
  %199 = load i32, ptr %1, align 4
  %200 = and i32 %199, 16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %203, align 1
  %204 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %204, align 1
  %205 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %205, align 1
  br label %376

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.lgdt330x_state, ptr %20, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %214, label %210

210:                                              ; preds = %206
  %211 = load volatile i32, ptr @jiffies, align 64
  %212 = sub i32 %211, %208
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %376, label %214

214:                                              ; preds = %210, %206
  %215 = load volatile i32, ptr @jiffies, align 64
  %216 = add i32 %215, 100
  store i32 %216, ptr %207, align 4
  %217 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %9) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %9, i8 0, i32 5, i1 false) #11, !annotation !8
  %218 = getelementptr inbounds %struct.lgdt330x_state, ptr %217, i32 0, i32 3
  %219 = load i32, ptr %218, align 4
  switch i32 %219, label %320 [
    i32 7, label %220
    i32 3, label %256
    i32 5, label %256
  ]

220:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 110, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  %221 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %221, i8 0, i32 16, i1 false) #11, !annotation !8
  %222 = load ptr, ptr %217, align 4
  %223 = getelementptr inbounds %struct.i2c_client, ptr %222, i32 0, i32 1
  %224 = load i16, ptr %223, align 2
  store i16 %224, ptr %8, align 4
  %225 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %225, align 2
  store i16 1, ptr %221, align 4
  %226 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %226, align 4
  %227 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  %228 = load i16, ptr %223, align 2
  store i16 %228, ptr %227, align 4
  %229 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %229, align 2
  %230 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 5, ptr %230, align 4
  %231 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %9, ptr %231, align 4
  %232 = getelementptr inbounds %struct.i2c_client, ptr %222, i32 0, i32 3
  %233 = load ptr, ptr %232, align 8
  %234 = call i32 @i2c_transfer(ptr noundef %233, ptr noundef nonnull %8, i32 noundef 2) #11
  %235 = icmp eq i32 %234, 2
  br i1 %235, label %242, label %236

236:                                              ; preds = %220
  %237 = load ptr, ptr %217, align 4
  %238 = getelementptr inbounds %struct.i2c_client, ptr %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.i2c_client, ptr %237, i32 0, i32 1
  %240 = load i16, ptr %239, align 2
  %241 = zext i16 %240 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %238, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %241, i32 noundef 110, i32 noundef %234) #13
  br label %242

242:                                              ; preds = %236, %220
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  %243 = load i8, ptr %9, align 1
  %244 = and i8 %243, 7
  %245 = zext i8 %244 to i32
  %246 = shl nuw nsw i32 %245, 16
  %247 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 3
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  %250 = shl nuw nsw i32 %249, 8
  %251 = or i32 %246, %250
  %252 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 4
  %253 = load i8, ptr %252, align 1
  %254 = zext i8 %253 to i32
  %255 = or i32 %251, %254
  br label %289

256:                                              ; preds = %214, %214
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 26, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %257 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %257, i8 0, i32 16, i1 false) #11, !annotation !8
  %258 = load ptr, ptr %217, align 4
  %259 = getelementptr inbounds %struct.i2c_client, ptr %258, i32 0, i32 1
  %260 = load i16, ptr %259, align 2
  store i16 %260, ptr %6, align 4
  %261 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %261, align 2
  store i16 1, ptr %257, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %262, align 4
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %264 = load i16, ptr %259, align 2
  store i16 %264, ptr %263, align 4
  %265 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %265, align 2
  %266 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 2, ptr %266, align 4
  %267 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %9, ptr %267, align 4
  %268 = getelementptr inbounds %struct.i2c_client, ptr %258, i32 0, i32 3
  %269 = load ptr, ptr %268, align 8
  %270 = call i32 @i2c_transfer(ptr noundef %269, ptr noundef nonnull %6, i32 noundef 2) #11
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %278, label %272

272:                                              ; preds = %256
  %273 = load ptr, ptr %217, align 4
  %274 = getelementptr inbounds %struct.i2c_client, ptr %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.i2c_client, ptr %273, i32 0, i32 1
  %276 = load i16, ptr %275, align 2
  %277 = zext i16 %276 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %274, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %277, i32 noundef 26, i32 noundef %270) #13
  br label %278

278:                                              ; preds = %272, %256
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  %279 = load i8, ptr %9, align 1
  %280 = zext i8 %279 to i32
  %281 = shl nuw nsw i32 %280, 8
  %282 = getelementptr inbounds [5 x i8], ptr %9, i32 0, i32 1
  %283 = load i8, ptr %282, align 1
  %284 = zext i8 %283 to i32
  %285 = or i32 %281, %284
  %286 = load i32, ptr %218, align 4
  %287 = icmp eq i32 %286, 3
  %288 = select i1 %287, i32 97939837, i32 98026066
  br label %289

289:                                              ; preds = %278, %242
  %290 = phi i32 [ %285, %278 ], [ %255, %242 ]
  %291 = phi i32 [ %288, %278 ], [ 73957994, %242 ]
  %292 = icmp eq i32 %290, 0
  br i1 %292, label %299, label %293

293:                                              ; preds = %289
  %294 = call i32 @intlog10(i32 noundef %290) #11
  %295 = icmp ult i32 %291, %294
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = sub i32 %291, %294
  %298 = mul i32 %297, 10
  br label %299

299:                                              ; preds = %296, %293, %289
  %300 = phi i32 [ %298, %296 ], [ 0, %289 ], [ 0, %293 ]
  %301 = getelementptr inbounds %struct.lgdt330x_state, ptr %217, i32 0, i32 4
  store i32 %300, ptr %301, align 4
  %302 = load i32, ptr @debug, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %312, label %304

304:                                              ; preds = %299
  %305 = load ptr, ptr %217, align 4
  %306 = getelementptr inbounds %struct.i2c_client, ptr %305, i32 0, i32 4
  %307 = lshr i32 %300, 24
  %308 = lshr i32 %300, 8
  %309 = and i32 %308, 65535
  %310 = mul nuw nsw i32 %309, 100
  %311 = lshr i32 %310, 16
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %306, ptr noundef nonnull @.str.22, i32 noundef %290, i32 noundef %307, i32 noundef %311) #13
  br label %312

312:                                              ; preds = %304, %299
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %9) #11
  %313 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 1, ptr %313, align 1
  %314 = getelementptr inbounds %struct.lgdt330x_state, ptr %20, i32 0, i32 4
  %315 = load i32, ptr %314, align 4
  %316 = zext i32 %315 to i64
  %317 = mul nuw nsw i64 %316, 1000
  %318 = lshr i64 %317, 24
  %319 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %318, ptr %319, align 1
  br label %325

320:                                              ; preds = %214
  %321 = load ptr, ptr %217, align 4
  %322 = getelementptr inbounds %struct.i2c_client, ptr %321, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %322, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.lgdt3303_read_snr) #13
  %323 = getelementptr inbounds %struct.lgdt330x_state, ptr %217, i32 0, i32 4
  store i32 0, ptr %323, align 4
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %9) #11
  %324 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %324, align 1
  br label %325

325:                                              ; preds = %320, %312
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 -117, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  %326 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %326, i8 0, i32 16, i1 false) #11, !annotation !8
  %327 = load ptr, ptr %20, align 4
  %328 = getelementptr inbounds %struct.i2c_client, ptr %327, i32 0, i32 1
  %329 = load i16, ptr %328, align 2
  store i16 %329, ptr %4, align 4
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %330, align 2
  store i16 1, ptr %326, align 4
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %331, align 4
  %332 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %333 = load i16, ptr %328, align 2
  store i16 %333, ptr %332, align 4
  %334 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %334, align 2
  %335 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 3, ptr %335, align 4
  %336 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %18, ptr %336, align 4
  %337 = getelementptr inbounds %struct.i2c_client, ptr %327, i32 0, i32 3
  %338 = load ptr, ptr %337, align 8
  %339 = call i32 @i2c_transfer(ptr noundef %338, ptr noundef nonnull %4, i32 noundef 2) #11
  %340 = icmp eq i32 %339, 2
  br i1 %340, label %349, label %341

341:                                              ; preds = %325
  %342 = load ptr, ptr %20, align 4
  %343 = getelementptr inbounds %struct.i2c_client, ptr %342, i32 0, i32 4
  %344 = getelementptr inbounds %struct.i2c_client, ptr %342, i32 0, i32 1
  %345 = load i16, ptr %344, align 2
  %346 = zext i16 %345 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %343, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.i2c_read_demod_bytes, i32 noundef %346, i32 noundef 139, i32 noundef %339) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %347 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  store i8 0, ptr %347, align 1
  %348 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  store i8 0, ptr %348, align 1
  br label %376

349:                                              ; preds = %325
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %350 = load i8, ptr %18, align 1
  %351 = zext i8 %350 to i16
  %352 = shl nuw i16 %351, 8
  %353 = getelementptr inbounds [3 x i8], ptr %18, i32 0, i32 1
  %354 = load i8, ptr %353, align 1
  %355 = zext i8 %354 to i16
  %356 = or i16 %352, %355
  %357 = getelementptr inbounds %struct.lgdt330x_state, ptr %20, i32 0, i32 5
  store i16 %356, ptr %357, align 4
  %358 = load i32, ptr @debug, align 4
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %349
  %361 = load ptr, ptr %20, align 4
  %362 = getelementptr inbounds %struct.i2c_client, ptr %361, i32 0, i32 4
  %363 = zext i16 %356 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %362, ptr noundef nonnull @.str.21, i32 noundef %363) #13
  %364 = load i16, ptr %357, align 4
  br label %365

365:                                              ; preds = %360, %349
  %366 = phi i16 [ %364, %360 ], [ %356, %349 ]
  %367 = zext i16 %366 to i64
  %368 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1
  %369 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %370 = load i64, ptr %369, align 1
  %371 = add i64 %370, %367
  store i64 %371, ptr %369, align 1
  %372 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1
  %373 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %374 = load i64, ptr %373, align 1
  %375 = add i64 %374, 10000
  store i64 %375, ptr %373, align 1
  store i8 3, ptr %368, align 1
  store i8 3, ptr %372, align 1
  br label %376

376:                                              ; preds = %365, %341, %210, %202, %36
  %377 = phi i32 [ 0, %202 ], [ 0, %210 ], [ 0, %341 ], [ 0, %365 ], [ %43, %36 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %18) #11
  ret i32 %377
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

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
