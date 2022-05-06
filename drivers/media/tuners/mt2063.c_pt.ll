; ModuleID = '/llk/IR/drivers/media/tuners/mt2063.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2063.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2063_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2063_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2063_attach:\09\09\09\09\09"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mt2063_state = type { ptr, i8, ptr, %struct.dvb_tuner_ops, ptr, i32, i32, i32, i32, i32, %struct.MT2063_AvoidSpursData_t, i32, i32, i32, [31 x i32], i32, [61 x i8] }
%struct.MT2063_AvoidSpursData_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [48 x %struct.MT2063_ExclZone_t] }
%struct.MT2063_ExclZone_t = type { i32, i32, ptr }
%struct.mt2063_config = type { i8, i32 }
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
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.MT2063_FIFZone_t = type { i32, i32 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [31 x i8] c"parm=debug:Set Verbosity level\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"\017mt2063 %s: \0A\00", align 1
@__func__.mt2063_attach = private unnamed_addr constant [14 x i8] c"mt2063_attach\00", align 1
@mt2063_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"MT2063 Silicon Tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 865000000, i32 0, i32 0, i32 0, i32 0 }, ptr @mt2063_release, ptr @mt2063_init, ptr @MT2063_Sleep, ptr null, ptr null, ptr @mt2063_set_params, ptr @mt2063_set_analog_params, ptr null, ptr null, ptr @mt2063_get_bandwidth, ptr @mt2063_get_if_frequency, ptr @mt2063_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"\016%s: Attaching MT2063\0A\00", align 1
@__kstrtab_mt2063_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2063_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2063_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2063_attach to i32), ptr @__kstrtab_mt2063_attach, ptr @__kstrtabns_mt2063_attach }, section "___ksymtab_gpl+mt2063_attach", align 4
@__UNIQUE_ID_author257 = internal constant [29 x i8] c"author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_description258 = internal constant [33 x i8] c"description=MT2063 Silicon tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.mt2063_release = private unnamed_addr constant [15 x i8] c"mt2063_release\00", align 1
@__func__.mt2063_init = private unnamed_addr constant [12 x i8] c"mt2063_init\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\013Can't read mt2063 part ID\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"B0\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"B1\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"B2\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"B3\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"\013mt2063: Unknown mt2063 device ID (0x%02x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\013mt2063: Unknown part ID (0x%02x%02x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"\016mt2063: detected a mt2063 %s\0A\00", align 1
@MT2063B3_defaults = internal unnamed_addr constant [13 x i8] c"\05\F0\19=,$,\04(\E1(\E0\00", align 1
@MT2063B1_defaults = internal unnamed_addr constant [43 x i8] c"\05\F0\11\10\19\05\1Al\1B$\1C(\1D\8F\1E\14\1F\8F W\22!#<$ ,$-\87/\F30\0C1\1B,\04(\E1(\E0\00", align 1
@MT2063B0_defaults = internal unnamed_addr constant [39 x i8] c"\19\05\1B\1D\1C\1F\1D\0F\1E?\1F\0F ?\22!#?$ %?'\EE,'0\03,\07-\87.\AA(\E1(\E0\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\017mt2063 %s: addr 0x%02x, cnt %d\0A\00", align 1
@__func__.mt2063_read = private unnamed_addr constant [12 x i8] c"mt2063_read\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"\017mt2063 %s: addr 0x%02x, ret = %d, val = 0x%02x\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"\013Can't read from address 0x%02x,\0A\00", align 1
@__func__.mt2063_write = private unnamed_addr constant [13 x i8] c"mt2063_write\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\013%s error ret=%d\0A\00", align 1
@__func__.MT2063_SoftwareShutdown = private unnamed_addr constant [24 x i8] c"MT2063_SoftwareShutdown\00", align 1
@__func__.MT2063_ClearPowerMaskBits = private unnamed_addr constant [26 x i8] c"MT2063_ClearPowerMaskBits\00", align 1
@__func__.mt2063_set_params = private unnamed_addr constant [18 x i8] c"mt2063_set_params\00", align 1
@.str.14 = private unnamed_addr constant [64 x i8] c"\017mt2063 %s: Tuning to frequency: %d, bandwidth %d, foffset %d\0A\00", align 1
@__func__.MT2063_SetReceiverMode = private unnamed_addr constant [23 x i8] c"MT2063_SetReceiverMode\00", align 1
@LNARIN = internal unnamed_addr constant [6 x i8] c"\00\00\03\03\03\03", align 1
@FIFFQEN = internal unnamed_addr constant [6 x i8] c"\01\01\01\01\01\01", align 1
@LNATGT = internal unnamed_addr constant [6 x i8] c",+++++", align 1
@ACRFMAX = internal unnamed_addr constant [6 x i8] c"\1F\1F\1F\1F\1F\1F", align 1
@PD1TGT = internal unnamed_addr constant [6 x i8] c"$$&&$&", align 1
@ACFIFMAX = internal unnamed_addr constant [6 x i8] c"\1D\1D\1D\1D\1D\1D", align 1
@PD2TGT = internal unnamed_addr constant [6 x i8] c"(!&*\1E&", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"\017mt2063 %s: mt2063 mode changed to %s\0A\00", align 1
@mt2063_mode_name = internal unnamed_addr constant [6 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 4
@__func__.mt2063_setreg = private unnamed_addr constant [14 x i8] c"mt2063_setreg\00", align 1
@__func__.mt2063_get_dnc_output_enable = private unnamed_addr constant [29 x i8] c"mt2063_get_dnc_output_enable\00", align 1
@__func__.mt2063_set_dnc_output_enable = private unnamed_addr constant [29 x i8] c"mt2063_set_dnc_output_enable\00", align 1
@DNC2GC = internal unnamed_addr constant [6 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"digital cable\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"analog cable\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"digital offair\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"digital offair without SAW\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"analog offair\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"analog offair 8vsb\00", align 1
@__func__.MT2063_Tune = private unnamed_addr constant [12 x i8] c"MT2063_Tune\00", align 1
@__func__.MT2063_ResetExclZones = private unnamed_addr constant [22 x i8] c"MT2063_ResetExclZones\00", align 1
@__func__.MT2063_AddExclZone = private unnamed_addr constant [19 x i8] c"MT2063_AddExclZone\00", align 1
@__func__.InsertNode = private unnamed_addr constant [11 x i8] c"InsertNode\00", align 1
@__func__.RemoveNode = private unnamed_addr constant [11 x i8] c"RemoveNode\00", align 1
@__func__.MT2063_ChooseFirstIF = private unnamed_addr constant [21 x i8] c"MT2063_ChooseFirstIF\00", align 1
@__func__.MT2063_AvoidSpurs = private unnamed_addr constant [18 x i8] c"MT2063_AvoidSpurs\00", align 1
@__func__.IsSpurInBand = private unnamed_addr constant [13 x i8] c"IsSpurInBand\00", align 1
@__func__.mt2063_lockStatus = private unnamed_addr constant [18 x i8] c"mt2063_lockStatus\00", align 1
@__func__.mt2063_set_analog_params = private unnamed_addr constant [25 x i8] c"mt2063_set_analog_params\00", align 1
@__func__.mt2063_get_bandwidth = private unnamed_addr constant [21 x i8] c"mt2063_get_bandwidth\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"\017mt2063 %s: bandwidth: %d\0A\00", align 1
@__func__.mt2063_get_if_frequency = private unnamed_addr constant [24 x i8] c"mt2063_get_if_frequency\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"\017mt2063 %s: IF frequency: %d\0A\00", align 1
@__func__.mt2063_get_status = private unnamed_addr constant [18 x i8] c"mt2063_get_status\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"\017mt2063 %s: Tuner status: %d\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author257, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description258, ptr @__UNIQUE_ID_license259, ptr @__ksymtab_mt2063_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.mt2063_init = private unnamed_addr constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mt2063_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_attach) #9
  br label %8

8:                                                ; preds = %6, %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1132) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mt2063_state, ptr %10, i32 0, i32 2
  store ptr %1, ptr %13, align 8
  store ptr %2, ptr %10, align 8
  %14 = getelementptr inbounds %struct.mt2063_state, ptr %10, i32 0, i32 4
  store ptr %0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.mt2063_config, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = udiv i32 %16, 1000
  %18 = getelementptr inbounds %struct.mt2063_state, ptr %10, i32 0, i32 8
  store i32 %17, ptr %18, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %20, ptr noundef nonnull align 4 dereferenceable(220) @mt2063_ops, i32 220, i1 false)
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mt2063_attach) #9
  br label %22

22:                                               ; preds = %12, %8
  %23 = phi ptr [ %0, %12 ], [ null, %8 ]
  ret ptr %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mt2063_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_release) #9
  br label %8

8:                                                ; preds = %6, %1
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2063_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 -16, ptr %2, align 1
  %6 = load i32, ptr @debug, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_init) #9
  br label %10

10:                                               ; preds = %8, %1
  %11 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 12
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 16
  %13 = tail call fastcc i32 @mt2063_read(ptr noundef %5, i8 noundef zeroext 0, ptr noundef %12, i32 noundef 1)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #9
  br label %172

17:                                               ; preds = %10
  %18 = load i8, ptr %12, align 4
  %19 = add i8 %18, 101
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = zext i8 %18 to i32
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %22) #9
  br label %172

24:                                               ; preds = %17
  %25 = sext i8 %19 to i32
  %26 = getelementptr inbounds [4 x ptr], ptr @switch.table.mt2063_init, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 16, i32 59
  %29 = tail call fastcc i32 @mt2063_read(ptr noundef %5, i8 noundef zeroext 59, ptr noundef %28, i32 noundef 1)
  %30 = icmp sgt i32 %29, -1
  %31 = load i8, ptr %28, align 1
  %32 = icmp sgt i8 %31, -1
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load i8, ptr %12, align 4
  %36 = zext i8 %35 to i32
  %37 = zext i8 %31 to i32
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %36, i32 noundef %37) #9
  br label %172

39:                                               ; preds = %24
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %27) #9
  %41 = call fastcc i32 @mt2063_write(ptr noundef %5, i8 noundef zeroext 5, ptr noundef nonnull %2, i32 noundef 1)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %172, label %43

43:                                               ; preds = %39
  %44 = load i8, ptr %12, align 4
  switch i8 %44, label %172 [
    i8 -98, label %47
    i8 -100, label %45
    i8 -101, label %46
  ]

45:                                               ; preds = %43
  br label %47

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %45, %43
  %48 = phi ptr [ @MT2063B3_defaults, %43 ], [ @MT2063B1_defaults, %45 ], [ @MT2063B0_defaults, %46 ]
  br label %49

49:                                               ; preds = %55, %47
  %50 = phi ptr [ %57, %55 ], [ %48, %47 ]
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 16, i32 20
  br label %61

55:                                               ; preds = %49
  %56 = getelementptr i8, ptr %50, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  %57 = getelementptr i8, ptr %50, i32 2
  %58 = load i8, ptr %56, align 1
  store i8 %58, ptr %3, align 1
  %59 = call fastcc i32 @mt2063_write(ptr noundef %5, i8 noundef zeroext %51, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %49, label %172

61:                                               ; preds = %61, %53
  %62 = phi i32 [ 10, %53 ], [ %63, %61 ]
  %63 = add nsw i32 %62, -1
  tail call void @msleep(i32 noundef 2) #11
  %64 = tail call fastcc i32 @mt2063_read(ptr noundef %5, i8 noundef zeroext 20, ptr noundef %54, i32 noundef 1)
  %65 = load i8, ptr %54, align 4
  %66 = icmp sgt i32 %64, -1
  %67 = and i8 %65, 64
  %68 = icmp ne i8 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  %70 = icmp ugt i32 %62, 1
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %61, label %72

72:                                               ; preds = %61
  %73 = icmp slt i32 %64, 0
  %74 = select i1 %68, i1 true, i1 %73
  br i1 %74, label %172, label %75

75:                                               ; preds = %72
  %76 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 16, i32 8
  %77 = tail call fastcc i32 @mt2063_read(ptr noundef %5, i8 noundef zeroext 8, ptr noundef %76, i32 noundef 1)
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %172, label %79

79:                                               ; preds = %75
  %80 = tail call fastcc i32 @mt2063_read(ptr noundef %5, i8 noundef zeroext 0, ptr noundef %12, i32 noundef 61)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %172, label %82

82:                                               ; preds = %79
  %83 = load i8, ptr %12, align 4
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 9
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10
  store i32 16000000, ptr %86, align 4
  %87 = load i8, ptr %76, align 4
  %88 = zext i8 %87 to i32
  %89 = mul nuw nsw i32 %88, 2000000
  %90 = add nuw nsw i32 %89, 1280000000
  %91 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 3
  store i32 %90, ptr %91, align 4
  %92 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 5
  store i32 22000000, ptr %92, align 4
  %93 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 7
  store i32 43750000, ptr %93, align 4
  %94 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 8
  store i32 6750000, ptr %94, align 4
  %95 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 13
  store i32 2000000, ptr %95, align 4
  %96 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 9
  store i32 250000, ptr %96, align 4
  %97 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 10
  store i32 50000, ptr %97, align 4
  %98 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 15
  store i32 15, ptr %98, align 4
  %99 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 16
  store i32 5, ptr %99, align 4
  %100 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 14
  store i32 1000000, ptr %100, align 4
  %101 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 4
  store i32 %90, ptr %101, align 4
  %102 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 2
  store i32 -2113967296, ptr %102, align 4
  %103 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 6
  store i32 1486249786, ptr %103, align 4
  %104 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 11
  store i32 %90, ptr %104, align 4
  %105 = sub nuw nsw i32 901000000, %89
  %106 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 1
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 11
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 12
  store i32 199999, ptr %108, align 4
  %109 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 15
  store i32 61, ptr %109, align 4
  %110 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 10, i32 17
  store i32 3, ptr %110, align 4
  %111 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 13
  store i32 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 14
  store i32 69230000, ptr %112, align 4
  %113 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 1
  store i32 105770000, ptr %113, align 4
  %114 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 2
  store i32 140350000, ptr %114, align 4
  %115 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 3
  store i32 177110000, ptr %115, align 4
  %116 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 4
  store i32 212860000, ptr %116, align 4
  %117 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 5
  store i32 241130000, ptr %117, align 4
  %118 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 6
  store i32 274370000, ptr %118, align 4
  %119 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 7
  store i32 309820000, ptr %119, align 4
  %120 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 8
  store i32 342450000, ptr %120, align 4
  %121 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 9
  store i32 378870000, ptr %121, align 4
  %122 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 10
  store i32 416210000, ptr %122, align 4
  %123 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 11
  store i32 456500000, ptr %123, align 4
  %124 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 12
  store i32 495790000, ptr %124, align 4
  %125 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 13
  store i32 534530000, ptr %125, align 4
  %126 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 14
  store i32 572610000, ptr %126, align 4
  %127 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 15
  store i32 598970000, ptr %127, align 4
  %128 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 16
  store i32 635910000, ptr %128, align 4
  %129 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 17
  store i32 672130000, ptr %129, align 4
  %130 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 18
  store i32 714840000, ptr %130, align 4
  %131 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 19
  store i32 739660000, ptr %131, align 4
  %132 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 20
  store i32 770410000, ptr %132, align 4
  %133 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 21
  store i32 814660000, ptr %133, align 4
  %134 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 22
  store i32 846950000, ptr %134, align 4
  %135 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 23
  store i32 867820000, ptr %135, align 4
  %136 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 24
  store i32 915980000, ptr %136, align 4
  %137 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 25
  store i32 947450000, ptr %137, align 4
  %138 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 26
  store i32 983110000, ptr %138, align 4
  %139 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 27
  store i32 1021630000, ptr %139, align 4
  %140 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 28
  store i32 1061870000, ptr %140, align 4
  %141 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 29
  store i32 1098330000, ptr %141, align 4
  %142 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 30
  store i32 1138990000, ptr %142, align 4
  %143 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 16, i32 42
  store i8 10, ptr %143, align 2
  %144 = tail call fastcc i32 @mt2063_write(ptr noundef %5, i8 noundef zeroext 42, ptr noundef %143, i32 noundef 1)
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %172, label %146

146:                                              ; preds = %82
  %147 = tail call fastcc i32 @mt2063_read(ptr noundef %5, i8 noundef zeroext 8, ptr noundef %76, i32 noundef 1)
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %172, label %149

149:                                              ; preds = %146
  %150 = load i8, ptr %76, align 4
  store i8 0, ptr %143, align 2
  %151 = tail call fastcc i32 @mt2063_write(ptr noundef %5, i8 noundef zeroext 42, ptr noundef %143, i32 noundef 1)
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %172, label %153

153:                                              ; preds = %149
  %154 = zext i8 %150 to i32
  %155 = add nuw nsw i32 %154, 640
  br label %156

156:                                              ; preds = %156, %153
  %157 = phi i32 [ 0, %153 ], [ %162, %156 ]
  %158 = getelementptr %struct.mt2063_state, ptr %5, i32 0, i32 14, i32 %157
  %159 = load i32, ptr %158, align 4
  %160 = udiv i32 %159, 768
  %161 = mul i32 %160, %155
  store i32 %161, ptr %158, align 4
  %162 = add nuw nsw i32 %157, 1
  %163 = icmp eq i32 %162, 31
  br i1 %163, label %164, label %156

164:                                              ; preds = %156
  %165 = tail call fastcc i32 @MT2063_SoftwareShutdown(ptr noundef %5)
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %164
  %168 = tail call fastcc i32 @MT2063_ClearPowerMaskBits(ptr noundef %5)
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = getelementptr inbounds %struct.mt2063_state, ptr %5, i32 0, i32 1
  store i8 1, ptr %171, align 4
  br label %172

172:                                              ; preds = %170, %167, %164, %149, %146, %82, %79, %75, %72, %55, %43, %39, %34, %21, %15
  %173 = phi i32 [ %13, %15 ], [ -19, %21 ], [ -19, %34 ], [ 0, %170 ], [ %41, %39 ], [ -19, %43 ], [ -19, %72 ], [ %77, %75 ], [ %80, %79 ], [ %144, %82 ], [ %147, %146 ], [ %151, %149 ], [ %165, %164 ], [ %168, %167 ], [ %59, %55 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @MT2063_Sleep(ptr nocapture noundef readnone %0) #0 {
  tail call void @msleep(i32 noundef 100) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2063_set_params(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call i32 @mt2063_init(ptr noundef %0)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %8, %1
  %12 = load i32, ptr @debug, align 4
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_set_params) #9
  br label %16

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %16
  %21 = icmp ugt i32 %18, 7000000
  %22 = select i1 %21, i32 8000000, i32 7000000
  %23 = icmp ugt i32 %18, 6000000
  %24 = select i1 %23, i32 %22, i32 6000000
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %51 [
    i32 3, label %28
    i32 1, label %27
    i32 18, label %27
  ]

27:                                               ; preds = %20, %20
  br label %28

28:                                               ; preds = %27, %20
  %29 = phi i32 [ 0, %27 ], [ 2, %20 ]
  %30 = lshr exact i32 %24, 1
  %31 = sub nsw i32 0, %30
  %32 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 10
  store i32 125000, ptr %32, align 4
  %33 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 7
  store i32 36125000, ptr %33, align 4
  %34 = add nuw nsw i32 %24, 750000
  %35 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 8
  store i32 %34, ptr %35, align 4
  %36 = tail call fastcc i32 @MT2063_SetReceiverMode(ptr noundef %4, i32 noundef %29)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %28
  %39 = load i32, ptr @debug, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %2, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.mt2063_set_params, i32 noundef %42, i32 noundef %24, i32 noundef %31) #9
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, ptr %2, align 4
  %46 = tail call fastcc i32 @MT2063_Tune(ptr noundef %4, i32 noundef %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %2, align 4
  %50 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 5
  store i32 %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %48, %44, %28, %20, %16, %8
  %52 = phi i32 [ 0, %48 ], [ %9, %8 ], [ -22, %16 ], [ -22, %20 ], [ %36, %28 ], [ %46, %44 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2063_set_analog_params(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_set_analog_params) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @mt2063_init(ptr noundef %0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %55, label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %55 [
    i32 1, label %28
    i32 2, label %19
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, -46849
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = and i64 %21, 4
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, i32 8000000, i32 7000000
  br label %28

28:                                               ; preds = %24, %19, %16
  %29 = phi i32 [ -4000000, %16 ], [ -1250000, %19 ], [ -1250000, %24 ]
  %30 = phi i32 [ 8000000, %16 ], [ 6000000, %19 ], [ %27, %24 ]
  %31 = phi i32 [ 4, %16 ], [ 1, %19 ], [ 1, %24 ]
  %32 = lshr exact i32 %30, 1
  %33 = add nsw i32 %32, %29
  %34 = sub nsw i32 38900000, %33
  %35 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 10
  store i32 125000, ptr %35, align 4
  %36 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 7
  store i32 %34, ptr %36, align 4
  %37 = add nuw nsw i32 %30, 750000
  %38 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 8
  store i32 %37, ptr %38, align 4
  %39 = tail call fastcc i32 @MT2063_SetReceiverMode(ptr noundef %4, i32 noundef %31)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %28
  %42 = load i32, ptr @debug, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %1, align 8
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.mt2063_set_analog_params, i32 noundef %45, i32 noundef %30, i32 noundef %29) #9
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32, ptr %1, align 8
  %49 = add i32 %48, %33
  %50 = tail call fastcc i32 @MT2063_Tune(ptr noundef %4, i32 noundef %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %1, align 8
  %54 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  br label %55

55:                                               ; preds = %52, %47, %28, %16, %13
  %56 = phi i32 [ 0, %52 ], [ %14, %13 ], [ -22, %16 ], [ %39, %28 ], [ %50, %47 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2063_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_get_bandwidth) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -750000
  store i32 %16, ptr %1, align 4
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.mt2063_get_bandwidth, i32 noundef %16) #9
  br label %21

21:                                               ; preds = %19, %13, %9
  %22 = phi i32 [ -19, %9 ], [ 0, %19 ], [ 0, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2063_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_get_if_frequency) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 10, i32 7
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %1, align 4
  %16 = load i32, ptr @debug, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.mt2063_get_if_frequency, i32 noundef %15) #9
  br label %20

20:                                               ; preds = %18, %13, %9
  %21 = phi i32 [ -19, %9 ], [ 0, %18 ], [ 0, %13 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2063_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_get_status) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %9
  store i32 0, ptr %1, align 4
  %14 = load i32, ptr @debug, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_lockStatus) #9
  br label %18

18:                                               ; preds = %16, %13
  %19 = getelementptr inbounds %struct.mt2063_state, ptr %4, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 155
  %22 = select i1 %21, i32 192, i32 136
  %23 = getelementptr %struct.mt2063_state, ptr %4, i32 0, i32 16, i32 7
  br label %24

24:                                               ; preds = %33, %18
  %25 = phi i32 [ 0, %18 ], [ %34, %33 ]
  %26 = tail call fastcc i32 @mt2063_read(ptr noundef %4, i8 noundef zeroext 7, ptr noundef %23, i32 noundef 1) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  %29 = load i8, ptr %23, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %22, %30
  %32 = icmp eq i32 %31, %22
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  tail call void @msleep(i32 noundef 2) #11
  %34 = add nuw nsw i32 %25, 1
  %35 = icmp eq i32 %34, 50
  br i1 %35, label %37, label %24

36:                                               ; preds = %28
  store i32 1, ptr %1, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %1, align 4
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.mt2063_get_status, i32 noundef %41) #9
  br label %43

43:                                               ; preds = %40, %37, %24, %9
  %44 = phi i32 [ -19, %9 ], [ 0, %40 ], [ 0, %37 ], [ %26, %24 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mt2063_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr @debug, align 4
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = zext i8 %1 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.mt2063_read, i32 noundef %12, i32 noundef %3) #9
  br label %14

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %8, i32 noundef 1) #11
  br label %20

20:                                               ; preds = %18, %14
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %55, label %22

22:                                               ; preds = %20
  %23 = zext i8 %1 to i32
  %24 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 2
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  br label %32

32:                                               ; preds = %52, %22
  %33 = phi i32 [ 0, %22 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  %34 = add i32 %33, %23
  %35 = trunc i32 %34 to i8
  store i8 %35, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !9
  %36 = load ptr, ptr %24, align 4
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i16
  store i16 %38, ptr %6, align 4
  store i16 0, ptr %25, align 2
  store i16 1, ptr %26, align 4
  store ptr %5, ptr %27, align 4
  %39 = load i8, ptr %36, align 4
  %40 = zext i8 %39 to i16
  store i16 %40, ptr %28, align 4
  store i16 1, ptr %29, align 2
  store i16 1, ptr %30, align 4
  %41 = getelementptr i8, ptr %2, i32 %33
  store ptr %41, ptr %31, align 4
  %42 = load ptr, ptr %0, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %6, i32 noundef 2) #11
  %44 = load i32, ptr @debug, align 4
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load i8, ptr %41, align 1
  %48 = zext i8 %47 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.mt2063_read, i32 noundef %34, i32 noundef %43, i32 noundef %48) #9
  br label %50

50:                                               ; preds = %46, %32
  %51 = icmp slt i32 %43, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  br i1 %51, label %55, label %52

52:                                               ; preds = %50
  %53 = add nuw i32 %33, 1
  %54 = icmp eq i32 %53, %3
  br i1 %54, label %55, label %32

55:                                               ; preds = %52, %50, %20
  %56 = phi i32 [ 0, %20 ], [ %33, %50 ], [ %3, %52 ]
  %57 = phi i32 [ 0, %20 ], [ %43, %50 ], [ %43, %52 ]
  %58 = load ptr, ptr %15, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = call i32 %58(ptr noundef %8, i32 noundef 0) #11
  br label %62

62:                                               ; preds = %60, %55
  %63 = icmp slt i32 %57, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = zext i8 %1 to i32
  %66 = add i32 %56, %65
  %67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %66) #9
  br label %68

68:                                               ; preds = %64, %62
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mt2063_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [60 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(60) %5, i8 0, i32 60, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #11
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  %16 = trunc i32 %3 to i16
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %18, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_write) #9
  br label %23

23:                                               ; preds = %21, %4
  store i8 %1, ptr %5, align 1
  %24 = getelementptr inbounds i8, ptr %5, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %24, ptr align 1 %2, i32 %3, i1 false)
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %8, i32 0, i32 1, i32 28
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 %26(ptr noundef %8, i32 noundef 1) #11
  br label %30

30:                                               ; preds = %28, %23
  %31 = load ptr, ptr %0, align 4
  %32 = call i32 @i2c_transfer(ptr noundef %31, ptr noundef nonnull %6, i32 noundef 1) #11
  %33 = load ptr, ptr %25, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 %33(ptr noundef %8, i32 noundef 0) #11
  br label %37

37:                                               ; preds = %35, %30
  %38 = icmp slt i32 %32, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.mt2063_write, i32 noundef %32) #9
  br label %41

41:                                               ; preds = %39, %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %5) #11
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_SoftwareShutdown(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_SoftwareShutdown) #9
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 17
  %8 = load i8, ptr %7, align 1
  %9 = or i8 %8, 4
  store i8 %9, ptr %7, align 1
  %10 = tail call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 17, ptr noundef %7, i32 noundef 1)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_ClearPowerMaskBits(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_ClearPowerMaskBits) #9
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 18
  store i8 0, ptr %7, align 2
  %8 = tail call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 18, ptr noundef %7, i32 noundef 1)
  %9 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 17
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, -116
  store i8 %11, ptr %9, align 1
  %12 = tail call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 17, ptr noundef %9, i32 noundef 1)
  %13 = or i32 %12, %8
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_SetReceiverMode(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
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
  %28 = load i32, ptr @debug, align 4
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_SetReceiverMode) #9
  br label %32

32:                                               ; preds = %30, %2
  %33 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 27
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, -65
  %36 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %1
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i8 0, i8 64
  %40 = or i8 %39, %35
  %41 = icmp eq i8 %34, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %27)
  store i8 %40, ptr %27, align 1
  %43 = load i32, ptr @debug, align 4
  %44 = icmp ugt i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %47

47:                                               ; preds = %45, %42
  %48 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 27, ptr noundef nonnull %27, i32 noundef 1) #11
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i8 %40, ptr %33, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27)
  br label %52

51:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %27)
  br label %124

52:                                               ; preds = %50, %32
  %53 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 44
  %54 = load i8, ptr %53, align 4
  %55 = and i8 %54, -4
  %56 = getelementptr [6 x i8], ptr @LNARIN, i32 0, i32 %1
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 3
  %59 = or i8 %58, %55
  %60 = icmp eq i8 %54, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %26)
  store i8 %59, ptr %26, align 1
  %62 = load i32, ptr @debug, align 4
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %66

66:                                               ; preds = %64, %61
  %67 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 44, ptr noundef nonnull %26, i32 noundef 1) #11
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i8 %59, ptr %53, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26)
  br label %71

70:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %26)
  br label %124

71:                                               ; preds = %69, %52
  %72 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 45
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 15
  %75 = getelementptr [6 x i8], ptr @FIFFQEN, i32 0, i32 %1
  %76 = load i8, ptr %75, align 1
  %77 = shl i8 %76, 7
  %78 = or i8 %77, %74
  %79 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %1
  %80 = load i8, ptr %79, align 1
  %81 = shl i8 %80, 4
  %82 = or i8 %78, %81
  %83 = icmp eq i8 %73, %82
  br i1 %83, label %124, label %84

84:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %25)
  store i8 %82, ptr %25, align 1
  %85 = load i32, ptr @debug, align 4
  %86 = icmp ugt i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %89

89:                                               ; preds = %87, %84
  %90 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 45, ptr noundef nonnull %25, i32 noundef 1) #11
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store i8 %82, ptr %72, align 1
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i32 [ 0, %92 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %25)
  %95 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 40
  %96 = load i8, ptr %95, align 4
  %97 = or i8 %96, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %24)
  store i8 %97, ptr %24, align 1
  %98 = load i32, ptr @debug, align 4
  %99 = icmp ugt i32 %98, 1
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %102

102:                                              ; preds = %100, %93
  %103 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 40, ptr noundef nonnull %24, i32 noundef 1) #11
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i8, ptr %95, align 4
  br label %108

107:                                              ; preds = %102
  store i8 %97, ptr %95, align 1
  br label %108

108:                                              ; preds = %107, %105
  %109 = phi i8 [ %97, %107 ], [ %106, %105 ]
  %110 = phi i32 [ 0, %107 ], [ %103, %105 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %24)
  %111 = or i32 %94, %110
  %112 = and i8 %109, -2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %23)
  store i8 %112, ptr %23, align 1
  %113 = load i32, ptr @debug, align 4
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %117

117:                                              ; preds = %115, %108
  %118 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 40, ptr noundef nonnull %23, i32 noundef 1) #11
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store i8 %112, ptr %95, align 1
  br label %121

121:                                              ; preds = %120, %117
  %122 = phi i32 [ 0, %120 ], [ %118, %117 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %23)
  %123 = or i32 %111, %122
  br label %124

124:                                              ; preds = %121, %71, %70, %51
  %125 = phi i32 [ %123, %121 ], [ 0, %71 ], [ %67, %70 ], [ %48, %51 ]
  %126 = load i32, ptr @debug, align 4
  %127 = icmp ugt i32 %126, 1
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_get_dnc_output_enable) #9
  %130 = load i32, ptr @debug, align 4
  br label %131

131:                                              ; preds = %128, %124
  %132 = phi i32 [ %126, %124 ], [ %130, %128 ]
  %133 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 47
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 3
  %136 = icmp eq i8 %135, 3
  %137 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 48
  %138 = load i8, ptr %137, align 4
  %139 = and i8 %138, 3
  %140 = icmp eq i8 %139, 3
  %141 = select i1 %140, i32 0, i32 2
  %142 = select i1 %140, i32 1, i32 3
  %143 = select i1 %136, i32 %141, i32 %142
  %144 = icmp ugt i32 %132, 1
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_set_dnc_output_enable) #9
  br label %147

147:                                              ; preds = %145, %131
  switch i32 %143, label %372 [
    i32 0, label %148
    i32 1, label %198
    i32 2, label %254
    i32 3, label %310
  ]

148:                                              ; preds = %147
  %149 = load i8, ptr %133, align 1
  %150 = or i8 %149, 3
  %151 = icmp eq i8 %149, %150
  br i1 %151, label %163, label %152

152:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %22) #11
  store i8 %150, ptr %22, align 1
  %153 = load i32, ptr @debug, align 4
  %154 = icmp ugt i32 %153, 1
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %157

157:                                              ; preds = %155, %152
  %158 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 47, ptr noundef nonnull %22, i32 noundef 1) #11
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157
  store i8 %150, ptr %133, align 1
  br label %161

161:                                              ; preds = %160, %157
  %162 = phi i32 [ 0, %160 ], [ %158, %157 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %22) #11
  br label %163

163:                                              ; preds = %161, %148
  %164 = phi i32 [ %162, %161 ], [ 0, %148 ]
  %165 = load i8, ptr %137, align 4
  %166 = or i8 %165, 3
  %167 = icmp eq i8 %165, %166
  br i1 %167, label %180, label %168

168:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #11
  store i8 %166, ptr %21, align 1
  %169 = load i32, ptr @debug, align 4
  %170 = icmp ugt i32 %169, 1
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %173

173:                                              ; preds = %171, %168
  %174 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 48, ptr noundef nonnull %21, i32 noundef 1) #11
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  store i8 %166, ptr %137, align 1
  br label %177

177:                                              ; preds = %176, %173
  %178 = phi i32 [ 0, %176 ], [ %174, %173 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #11
  %179 = or i32 %178, %164
  br label %180

180:                                              ; preds = %177, %163
  %181 = phi i32 [ %179, %177 ], [ %164, %163 ]
  %182 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 32
  %183 = load i8, ptr %182, align 4
  %184 = and i8 %183, -65
  %185 = icmp eq i8 %183, %184
  br i1 %185, label %373, label %186

186:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #11
  store i8 %184, ptr %20, align 1
  %187 = load i32, ptr @debug, align 4
  %188 = icmp ugt i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %191

191:                                              ; preds = %189, %186
  %192 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 32, ptr noundef nonnull %20, i32 noundef 1) #11
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %191
  store i8 %184, ptr %182, align 1
  br label %195

195:                                              ; preds = %194, %191
  %196 = phi i32 [ 0, %194 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #11
  %197 = or i32 %196, %181
  br label %373

198:                                              ; preds = %147
  %199 = load i8, ptr %133, align 1
  %200 = and i8 %199, -4
  %201 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 12
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %202
  %204 = load i8, ptr %203, align 1
  %205 = and i8 %204, 3
  %206 = or i8 %205, %200
  %207 = icmp eq i8 %199, %206
  br i1 %207, label %219, label %208

208:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #11
  store i8 %206, ptr %19, align 1
  %209 = load i32, ptr @debug, align 4
  %210 = icmp ugt i32 %209, 1
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %213

213:                                              ; preds = %211, %208
  %214 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 47, ptr noundef nonnull %19, i32 noundef 1) #11
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213
  store i8 %206, ptr %133, align 1
  br label %217

217:                                              ; preds = %216, %213
  %218 = phi i32 [ 0, %216 ], [ %214, %213 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #11
  br label %219

219:                                              ; preds = %217, %198
  %220 = phi i32 [ %218, %217 ], [ 0, %198 ]
  %221 = load i8, ptr %137, align 4
  %222 = or i8 %221, 3
  %223 = icmp eq i8 %221, %222
  br i1 %223, label %236, label %224

224:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #11
  store i8 %222, ptr %18, align 1
  %225 = load i32, ptr @debug, align 4
  %226 = icmp ugt i32 %225, 1
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %229

229:                                              ; preds = %227, %224
  %230 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 48, ptr noundef nonnull %18, i32 noundef 1) #11
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  store i8 %222, ptr %137, align 1
  br label %233

233:                                              ; preds = %232, %229
  %234 = phi i32 [ 0, %232 ], [ %230, %229 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #11
  %235 = or i32 %234, %220
  br label %236

236:                                              ; preds = %233, %219
  %237 = phi i32 [ %235, %233 ], [ %220, %219 ]
  %238 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 32
  %239 = load i8, ptr %238, align 4
  %240 = and i8 %239, -65
  %241 = icmp eq i8 %239, %240
  br i1 %241, label %373, label %242

242:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #11
  store i8 %240, ptr %17, align 1
  %243 = load i32, ptr @debug, align 4
  %244 = icmp ugt i32 %243, 1
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %247

247:                                              ; preds = %245, %242
  %248 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 32, ptr noundef nonnull %17, i32 noundef 1) #11
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  store i8 %240, ptr %238, align 1
  br label %251

251:                                              ; preds = %250, %247
  %252 = phi i32 [ 0, %250 ], [ %248, %247 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #11
  %253 = or i32 %252, %237
  br label %373

254:                                              ; preds = %147
  %255 = load i8, ptr %133, align 1
  %256 = or i8 %255, 3
  %257 = icmp eq i8 %255, %256
  br i1 %257, label %269, label %258

258:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #11
  store i8 %256, ptr %16, align 1
  %259 = load i32, ptr @debug, align 4
  %260 = icmp ugt i32 %259, 1
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %263

263:                                              ; preds = %261, %258
  %264 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 47, ptr noundef nonnull %16, i32 noundef 1) #11
  %265 = icmp slt i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %263
  store i8 %256, ptr %133, align 1
  br label %267

267:                                              ; preds = %266, %263
  %268 = phi i32 [ 0, %266 ], [ %264, %263 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #11
  br label %269

269:                                              ; preds = %267, %254
  %270 = phi i32 [ %268, %267 ], [ 0, %254 ]
  %271 = load i8, ptr %137, align 4
  %272 = and i8 %271, -4
  %273 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 12
  %274 = load i32, ptr %273, align 4
  %275 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %274
  %276 = load i8, ptr %275, align 1
  %277 = and i8 %276, 3
  %278 = or i8 %277, %272
  %279 = icmp eq i8 %271, %278
  br i1 %279, label %292, label %280

280:                                              ; preds = %269
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #11
  store i8 %278, ptr %15, align 1
  %281 = load i32, ptr @debug, align 4
  %282 = icmp ugt i32 %281, 1
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %285

285:                                              ; preds = %283, %280
  %286 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 48, ptr noundef nonnull %15, i32 noundef 1) #11
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %289, label %288

288:                                              ; preds = %285
  store i8 %278, ptr %137, align 1
  br label %289

289:                                              ; preds = %288, %285
  %290 = phi i32 [ 0, %288 ], [ %286, %285 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #11
  %291 = or i32 %290, %270
  br label %292

292:                                              ; preds = %289, %269
  %293 = phi i32 [ %291, %289 ], [ %270, %269 ]
  %294 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 32
  %295 = load i8, ptr %294, align 4
  %296 = or i8 %295, 64
  %297 = icmp eq i8 %295, %296
  br i1 %297, label %373, label %298

298:                                              ; preds = %292
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #11
  store i8 %296, ptr %14, align 1
  %299 = load i32, ptr @debug, align 4
  %300 = icmp ugt i32 %299, 1
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %303

303:                                              ; preds = %301, %298
  %304 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 32, ptr noundef nonnull %14, i32 noundef 1) #11
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %303
  store i8 %296, ptr %294, align 1
  br label %307

307:                                              ; preds = %306, %303
  %308 = phi i32 [ 0, %306 ], [ %304, %303 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #11
  %309 = or i32 %308, %293
  br label %373

310:                                              ; preds = %147
  %311 = load i8, ptr %133, align 1
  %312 = and i8 %311, -4
  %313 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 12
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %314
  %316 = load i8, ptr %315, align 1
  %317 = and i8 %316, 3
  %318 = or i8 %317, %312
  %319 = icmp eq i8 %311, %318
  br i1 %319, label %332, label %320

320:                                              ; preds = %310
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #11
  store i8 %318, ptr %13, align 1
  %321 = load i32, ptr @debug, align 4
  %322 = icmp ugt i32 %321, 1
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %325

325:                                              ; preds = %323, %320
  %326 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 47, ptr noundef nonnull %13, i32 noundef 1) #11
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  store i8 %318, ptr %133, align 1
  br label %329

329:                                              ; preds = %328, %325
  %330 = phi i32 [ 0, %328 ], [ %326, %325 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #11
  %331 = load i32, ptr %313, align 4
  br label %332

332:                                              ; preds = %329, %310
  %333 = phi i32 [ %331, %329 ], [ %314, %310 ]
  %334 = phi i32 [ %330, %329 ], [ 0, %310 ]
  %335 = load i8, ptr %137, align 4
  %336 = and i8 %335, -4
  %337 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %333
  %338 = load i8, ptr %337, align 1
  %339 = and i8 %338, 3
  %340 = or i8 %339, %336
  %341 = icmp eq i8 %335, %340
  br i1 %341, label %354, label %342

342:                                              ; preds = %332
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #11
  store i8 %340, ptr %12, align 1
  %343 = load i32, ptr @debug, align 4
  %344 = icmp ugt i32 %343, 1
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %347

347:                                              ; preds = %345, %342
  %348 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 48, ptr noundef nonnull %12, i32 noundef 1) #11
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %347
  store i8 %340, ptr %137, align 1
  br label %351

351:                                              ; preds = %350, %347
  %352 = phi i32 [ 0, %350 ], [ %348, %347 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #11
  %353 = or i32 %352, %334
  br label %354

354:                                              ; preds = %351, %332
  %355 = phi i32 [ %353, %351 ], [ %334, %332 ]
  %356 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 32
  %357 = load i8, ptr %356, align 4
  %358 = or i8 %357, 64
  %359 = icmp eq i8 %357, %358
  br i1 %359, label %373, label %360

360:                                              ; preds = %354
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #11
  store i8 %358, ptr %11, align 1
  %361 = load i32, ptr @debug, align 4
  %362 = icmp ugt i32 %361, 1
  br i1 %362, label %363, label %365

363:                                              ; preds = %360
  %364 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %365

365:                                              ; preds = %363, %360
  %366 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 32, ptr noundef nonnull %11, i32 noundef 1) #11
  %367 = icmp slt i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %365
  store i8 %358, ptr %356, align 1
  br label %369

369:                                              ; preds = %368, %365
  %370 = phi i32 [ 0, %368 ], [ %366, %365 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #11
  %371 = or i32 %370, %355
  br label %373

372:                                              ; preds = %147
  unreachable

373:                                              ; preds = %369, %354, %307, %292, %251, %236, %195, %180
  %374 = phi i32 [ %371, %369 ], [ %355, %354 ], [ %309, %307 ], [ %293, %292 ], [ %253, %251 ], [ %237, %236 ], [ %197, %195 ], [ %181, %180 ]
  %375 = or i32 %374, %125
  %376 = icmp sgt i32 %375, -1
  br i1 %376, label %377, label %572

377:                                              ; preds = %373
  %378 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 23
  %379 = load i8, ptr %378, align 1
  %380 = and i8 %379, -32
  %381 = getelementptr [6 x i8], ptr @ACRFMAX, i32 0, i32 %1
  %382 = load i8, ptr %381, align 1
  %383 = and i8 %382, 31
  %384 = or i8 %383, %380
  %385 = icmp eq i8 %379, %384
  br i1 %385, label %399, label %386

386:                                              ; preds = %377
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10)
  store i8 %384, ptr %10, align 1
  %387 = load i32, ptr @debug, align 4
  %388 = icmp ugt i32 %387, 1
  br i1 %388, label %389, label %391

389:                                              ; preds = %386
  %390 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %391

391:                                              ; preds = %389, %386
  %392 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 23, ptr noundef nonnull %10, i32 noundef 1) #11
  %393 = icmp slt i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %391
  store i8 %384, ptr %378, align 1
  br label %395

395:                                              ; preds = %394, %391
  %396 = phi i32 [ 0, %394 ], [ %392, %391 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10)
  %397 = or i32 %396, %375
  %398 = icmp sgt i32 %397, -1
  br i1 %398, label %399, label %572

399:                                              ; preds = %395, %377
  %400 = phi i32 [ %397, %395 ], [ %375, %377 ]
  %401 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 26
  %402 = load i8, ptr %401, align 2
  %403 = and i8 %402, -64
  %404 = getelementptr [6 x i8], ptr @LNATGT, i32 0, i32 %1
  %405 = load i8, ptr %404, align 1
  %406 = and i8 %405, 63
  %407 = or i8 %406, %403
  %408 = icmp eq i8 %402, %407
  br i1 %408, label %422, label %409

409:                                              ; preds = %399
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 %407, ptr %9, align 1
  %410 = load i32, ptr @debug, align 4
  %411 = icmp ugt i32 %410, 1
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %414

414:                                              ; preds = %412, %409
  %415 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 26, ptr noundef nonnull %9, i32 noundef 1) #11
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %418, label %417

417:                                              ; preds = %414
  store i8 %407, ptr %401, align 1
  br label %418

418:                                              ; preds = %417, %414
  %419 = phi i32 [ 0, %417 ], [ %415, %414 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %420 = or i32 %419, %400
  %421 = icmp sgt i32 %420, -1
  br i1 %421, label %422, label %572

422:                                              ; preds = %418, %399
  %423 = phi i32 [ %420, %418 ], [ %400, %399 ]
  %424 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 24
  %425 = load i8, ptr %424, align 4
  %426 = and i8 %425, -32
  %427 = getelementptr [6 x i8], ptr @ACRFMAX, i32 0, i32 %1
  %428 = load i8, ptr %427, align 1
  %429 = and i8 %428, 31
  %430 = or i8 %429, %426
  %431 = icmp eq i8 %425, %430
  br i1 %431, label %445, label %432

432:                                              ; preds = %422
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 %430, ptr %8, align 1
  %433 = load i32, ptr @debug, align 4
  %434 = icmp ugt i32 %433, 1
  br i1 %434, label %435, label %437

435:                                              ; preds = %432
  %436 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %437

437:                                              ; preds = %435, %432
  %438 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 24, ptr noundef nonnull %8, i32 noundef 1) #11
  %439 = icmp slt i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %437
  store i8 %430, ptr %424, align 1
  br label %441

441:                                              ; preds = %440, %437
  %442 = phi i32 [ 0, %440 ], [ %438, %437 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %443 = or i32 %442, %423
  %444 = icmp sgt i32 %443, -1
  br i1 %444, label %445, label %572

445:                                              ; preds = %441, %422
  %446 = phi i32 [ %443, %441 ], [ %423, %422 ]
  %447 = load i8, ptr %33, align 1
  %448 = and i8 %447, -64
  %449 = getelementptr [6 x i8], ptr @PD1TGT, i32 0, i32 %1
  %450 = load i8, ptr %449, align 1
  %451 = and i8 %450, 63
  %452 = or i8 %451, %448
  %453 = icmp eq i8 %447, %452
  br i1 %453, label %467, label %454

454:                                              ; preds = %445
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 %452, ptr %7, align 1
  %455 = load i32, ptr @debug, align 4
  %456 = icmp ugt i32 %455, 1
  br i1 %456, label %457, label %459

457:                                              ; preds = %454
  %458 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %459

459:                                              ; preds = %457, %454
  %460 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 27, ptr noundef nonnull %7, i32 noundef 1) #11
  %461 = icmp slt i32 %460, 0
  br i1 %461, label %463, label %462

462:                                              ; preds = %459
  store i8 %452, ptr %33, align 1
  br label %463

463:                                              ; preds = %462, %459
  %464 = phi i32 [ 0, %462 ], [ %460, %459 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  %465 = or i32 %464, %446
  %466 = icmp sgt i32 %465, -1
  br i1 %466, label %467, label %572

467:                                              ; preds = %463, %445
  %468 = phi i32 [ %465, %463 ], [ %446, %445 ]
  %469 = getelementptr [6 x i8], ptr @ACFIFMAX, i32 0, i32 %1
  %470 = load i8, ptr %469, align 1
  %471 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 16
  %472 = load i8, ptr %471, align 4
  %473 = icmp eq i8 %472, -98
  %474 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 25
  %475 = load i8, ptr %474, align 1
  %476 = and i8 %475, -32
  %477 = and i8 %470, 31
  %478 = select i1 %473, i8 %477, i8 5
  %479 = or i8 %476, %478
  %480 = icmp eq i8 %475, %479
  br i1 %480, label %494, label %481

481:                                              ; preds = %467
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %479, ptr %6, align 1
  %482 = load i32, ptr @debug, align 4
  %483 = icmp ugt i32 %482, 1
  br i1 %483, label %484, label %486

484:                                              ; preds = %481
  %485 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %486

486:                                              ; preds = %484, %481
  %487 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 25, ptr noundef nonnull %6, i32 noundef 1) #11
  %488 = icmp slt i32 %487, 0
  br i1 %488, label %490, label %489

489:                                              ; preds = %486
  store i8 %479, ptr %474, align 1
  br label %490

490:                                              ; preds = %489, %486
  %491 = phi i32 [ 0, %489 ], [ %487, %486 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %492 = or i32 %491, %468
  %493 = icmp sgt i32 %492, -1
  br i1 %493, label %494, label %572

494:                                              ; preds = %490, %467
  %495 = phi i32 [ %492, %490 ], [ %468, %467 ]
  %496 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 28
  %497 = load i8, ptr %496, align 4
  %498 = and i8 %497, -64
  %499 = getelementptr [6 x i8], ptr @PD2TGT, i32 0, i32 %1
  %500 = load i8, ptr %499, align 1
  %501 = and i8 %500, 63
  %502 = or i8 %501, %498
  %503 = icmp eq i8 %497, %502
  br i1 %503, label %517, label %504

504:                                              ; preds = %494
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %502, ptr %5, align 1
  %505 = load i32, ptr @debug, align 4
  %506 = icmp ugt i32 %505, 1
  br i1 %506, label %507, label %509

507:                                              ; preds = %504
  %508 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %509

509:                                              ; preds = %507, %504
  %510 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 28, ptr noundef nonnull %5, i32 noundef 1) #11
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %509
  store i8 %502, ptr %496, align 1
  br label %513

513:                                              ; preds = %512, %509
  %514 = phi i32 [ 0, %512 ], [ %510, %509 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %515 = or i32 %514, %495
  %516 = icmp sgt i32 %515, -1
  br i1 %516, label %517, label %572

517:                                              ; preds = %513, %494
  %518 = phi i32 [ %515, %513 ], [ %495, %494 ]
  %519 = load i8, ptr %401, align 2
  %520 = and i8 %519, 127
  %521 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %1
  %522 = load i8, ptr %521, align 1
  %523 = icmp eq i8 %522, 0
  %524 = select i1 %523, i8 0, i8 -128
  %525 = or i8 %524, %520
  %526 = icmp eq i8 %519, %525
  br i1 %526, label %540, label %527

527:                                              ; preds = %517
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %525, ptr %4, align 1
  %528 = load i32, ptr @debug, align 4
  %529 = icmp ugt i32 %528, 1
  br i1 %529, label %530, label %532

530:                                              ; preds = %527
  %531 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %532

532:                                              ; preds = %530, %527
  %533 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 26, ptr noundef nonnull %4, i32 noundef 1) #11
  %534 = icmp slt i32 %533, 0
  br i1 %534, label %536, label %535

535:                                              ; preds = %532
  store i8 %525, ptr %401, align 1
  br label %536

536:                                              ; preds = %535, %532
  %537 = phi i32 [ 0, %535 ], [ %533, %532 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %538 = or i32 %537, %518
  %539 = icmp sgt i32 %538, -1
  br i1 %539, label %540, label %572

540:                                              ; preds = %536, %517
  %541 = phi i32 [ %538, %536 ], [ %518, %517 ]
  %542 = load i8, ptr %33, align 1
  %543 = and i8 %542, 127
  %544 = getelementptr [6 x i8], ptr @DNC2GC, i32 0, i32 %1
  %545 = load i8, ptr %544, align 1
  %546 = icmp eq i8 %545, 0
  %547 = select i1 %546, i8 0, i8 -128
  %548 = or i8 %547, %543
  %549 = icmp eq i8 %542, %548
  br i1 %549, label %563, label %550

550:                                              ; preds = %540
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %548, ptr %3, align 1
  %551 = load i32, ptr @debug, align 4
  %552 = icmp ugt i32 %551, 1
  br i1 %552, label %553, label %555

553:                                              ; preds = %550
  %554 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %555

555:                                              ; preds = %553, %550
  %556 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 27, ptr noundef nonnull %3, i32 noundef 1) #11
  %557 = icmp slt i32 %556, 0
  br i1 %557, label %559, label %558

558:                                              ; preds = %555
  store i8 %548, ptr %33, align 1
  br label %559

559:                                              ; preds = %558, %555
  %560 = phi i32 [ 0, %558 ], [ %556, %555 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  %561 = or i32 %560, %541
  %562 = icmp sgt i32 %561, -1
  br i1 %562, label %563, label %572

563:                                              ; preds = %559, %540
  %564 = phi i32 [ %561, %559 ], [ %541, %540 ]
  %565 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 12
  store i32 %1, ptr %565, align 4
  %566 = load i32, ptr @debug, align 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %572, label %568

568:                                              ; preds = %563
  %569 = getelementptr [6 x ptr], ptr @mt2063_mode_name, i32 0, i32 %1
  %570 = load ptr, ptr %569, align 4
  %571 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.MT2063_SetReceiverMode, ptr noundef %570) #9
  br label %572

572:                                              ; preds = %568, %563, %559, %536, %513, %490, %463, %441, %418, %395, %373
  %573 = phi i32 [ %564, %563 ], [ %564, %568 ], [ %561, %559 ], [ %538, %536 ], [ %515, %513 ], [ %492, %490 ], [ %465, %463 ], [ %443, %441 ], [ %420, %418 ], [ %397, %395 ], [ %375, %373 ]
  ret i32 %573
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_Tune(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = load i32, ptr @debug, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_Tune) #9
  br label %11

11:                                               ; preds = %9, %2
  %12 = add i32 %1, -1100000001
  %13 = icmp ult i32 %12, -1056000001
  br i1 %13, label %487, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10
  %16 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -57000001
  %19 = icmp ult i32 %18, -21000001
  br i1 %19, label %487, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %77

28:                                               ; preds = %20
  %29 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 42
  %30 = load i8, ptr %29, align 2
  %31 = or i8 %30, 8
  %32 = icmp eq i8 %30, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %31, ptr %6, align 1
  %34 = load i32, ptr @debug, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %38

38:                                               ; preds = %36, %33
  %39 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 42, ptr noundef nonnull %6, i32 noundef 1) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i8 %31, ptr %29, align 1
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ 0, %41 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %44

44:                                               ; preds = %42, %28
  %45 = phi i32 [ %43, %42 ], [ 0, %28 ]
  %46 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 43
  %47 = load i8, ptr %46, align 1
  br label %48

48:                                               ; preds = %53, %44
  %49 = phi i32 [ 0, %44 ], [ %54, %53 ]
  %50 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 14, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = icmp ult i32 %51, %1
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = add nuw nsw i32 %49, 1
  %55 = icmp eq i32 %54, 31
  br i1 %55, label %56, label %48

56:                                               ; preds = %53, %48
  %57 = phi i32 [ 31, %53 ], [ %49, %48 ]
  %58 = and i8 %47, -32
  %59 = trunc i32 %57 to i8
  %60 = or i8 %58, %59
  store i8 %60, ptr %46, align 1
  %61 = icmp eq i8 %60, %47
  br i1 %61, label %74, label %62

62:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %47, ptr %5, align 1
  %63 = load i32, ptr @debug, align 4
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_setreg) #9
  br label %67

67:                                               ; preds = %65, %62
  %68 = call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 43, ptr noundef nonnull %5, i32 noundef 1) #11
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i8 %47, ptr %46, align 1
  br label %71

71:                                               ; preds = %70, %67
  %72 = phi i32 [ 0, %70 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %73 = or i32 %72, %45
  br label %74

74:                                               ; preds = %71, %56
  %75 = phi i32 [ %73, %71 ], [ %45, %56 ]
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %86

77:                                               ; preds = %74, %20
  %78 = phi i32 [ %75, %74 ], [ 0, %20 ]
  %79 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 8
  %80 = tail call fastcc i32 @mt2063_read(ptr noundef %0, i8 noundef zeroext 8, ptr noundef %79, i32 noundef 1)
  %81 = or i32 %80, %78
  %82 = load i8, ptr %79, align 4
  %83 = zext i8 %82 to i32
  %84 = mul nsw i32 %83, -8
  %85 = add nsw i32 %84, -4992
  br label %86

86:                                               ; preds = %77, %74
  %87 = phi i32 [ %85, %77 ], [ -6016, %74 ]
  %88 = phi i32 [ %81, %77 ], [ %75, %74 ]
  %89 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 1
  store i32 %1, ptr %89, align 4
  %90 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = add i32 %91, %1
  %93 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 9
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %15, align 4
  %96 = urem i32 %92, %95
  %97 = lshr i32 %94, 1
  %98 = add i32 %96, %97
  %99 = urem i32 %98, %94
  %100 = add i32 %91, %97
  %101 = sub i32 %100, %99
  store i32 %101, ptr %90, align 4
  %102 = load i32, ptr @debug, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %86
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_ResetExclZones) #9
  %106 = load i32, ptr %15, align 4
  %107 = load i32, ptr %89, align 4
  br label %108

108:                                              ; preds = %104, %86
  %109 = phi i32 [ %107, %104 ], [ %1, %86 ]
  %110 = phi i32 [ %106, %104 ], [ %95, %86 ]
  %111 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 21
  store i32 0, ptr %111, align 4
  %112 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 23
  store ptr null, ptr %112, align 4
  %113 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 22
  store ptr null, ptr %113, align 4
  %114 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 5
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 1
  %119 = sub i32 %115, %118
  %120 = add i32 %119, %109
  %121 = urem i32 %120, %110
  %122 = add i32 %121, %109
  %123 = sub i32 %120, %122
  %124 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 11
  %125 = add i32 %118, %115
  %126 = load i32, ptr %124, align 4
  %127 = add i32 %126, %125
  %128 = icmp ult i32 %123, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %129, %108
  %130 = phi i32 [ %143, %129 ], [ %126, %108 ]
  %131 = phi i32 [ %138, %129 ], [ %123, %108 ]
  %132 = sub i32 %131, %130
  %133 = add i32 %131, -1
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %132, i32 noundef %133) #11
  %134 = add nuw i32 %131, 1
  %135 = load i32, ptr %124, align 4
  %136 = add i32 %135, %131
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %134, i32 noundef %136) #11
  %137 = load i32, ptr %15, align 4
  %138 = add i32 %137, %131
  %139 = load i32, ptr %114, align 4
  %140 = load i32, ptr %116, align 4
  %141 = lshr i32 %140, 1
  %142 = add i32 %141, %139
  %143 = load i32, ptr %124, align 4
  %144 = add i32 %142, %143
  %145 = icmp ult i32 %138, %144
  br i1 %145, label %129, label %146

146:                                              ; preds = %129, %108
  %147 = phi i32 [ %125, %108 ], [ %142, %129 ]
  %148 = phi i32 [ %110, %108 ], [ %137, %129 ]
  %149 = phi i32 [ %115, %108 ], [ %139, %129 ]
  %150 = phi i32 [ %118, %108 ], [ %141, %129 ]
  %151 = load i32, ptr %16, align 4
  %152 = add i32 %150, %151
  %153 = sub i32 %149, %152
  %154 = urem i32 %153, %148
  %155 = sub i32 %151, %154
  %156 = add i32 %155, %153
  %157 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 12
  %158 = load i32, ptr %157, align 4
  %159 = add i32 %158, %147
  %160 = icmp ult i32 %156, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %161, %146
  %162 = phi i32 [ %175, %161 ], [ %158, %146 ]
  %163 = phi i32 [ %170, %161 ], [ %156, %146 ]
  %164 = sub i32 %163, %162
  %165 = add i32 %163, -1
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %164, i32 noundef %165) #11
  %166 = add nuw i32 %163, 1
  %167 = load i32, ptr %157, align 4
  %168 = add i32 %167, %163
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %166, i32 noundef %168) #11
  %169 = load i32, ptr %15, align 4
  %170 = add i32 %169, %163
  %171 = load i32, ptr %114, align 4
  %172 = load i32, ptr %116, align 4
  %173 = lshr i32 %172, 1
  %174 = add i32 %173, %171
  %175 = load i32, ptr %157, align 4
  %176 = add i32 %174, %175
  %177 = icmp ult i32 %170, %176
  br i1 %177, label %161, label %178

178:                                              ; preds = %161, %146
  %179 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 17
  %180 = load i32, ptr %179, align 4
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %200, label %183

183:                                              ; preds = %178
  %184 = load i32, ptr %89, align 4
  %185 = sub i32 1920836000, %184
  %186 = sub i32 1922236000, %184
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %185, i32 noundef %186) #11
  %187 = load i32, ptr %89, align 4
  %188 = sub i32 1922564000, %187
  %189 = sub i32 1923964000, %187
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %188, i32 noundef %189) #11
  %190 = load i32, ptr %89, align 4
  %191 = sub i32 1924292000, %190
  %192 = sub i32 1925692000, %190
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %191, i32 noundef %192) #11
  %193 = load i32, ptr %89, align 4
  %194 = sub i32 1926020000, %193
  %195 = sub i32 1927420000, %193
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %194, i32 noundef %195) #11
  %196 = load i32, ptr %89, align 4
  %197 = sub i32 1927748000, %196
  %198 = sub i32 1929148000, %196
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %197, i32 noundef %198) #11
  %199 = load i32, ptr %179, align 4
  br label %200

200:                                              ; preds = %183, %178
  %201 = phi i32 [ %199, %183 ], [ %180, %178 ]
  %202 = and i32 %201, 2
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %235, label %204

204:                                              ; preds = %200
  %205 = load i32, ptr %89, align 4
  %206 = sub i32 1896644000, %205
  %207 = sub i32 1898044000, %205
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %206, i32 noundef %207) #11
  %208 = load i32, ptr %89, align 4
  %209 = sub i32 1894916000, %208
  %210 = sub i32 1896316000, %208
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %209, i32 noundef %210) #11
  %211 = load i32, ptr %89, align 4
  %212 = sub i32 1893188000, %211
  %213 = sub i32 1894588000, %211
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %212, i32 noundef %213) #11
  %214 = load i32, ptr %89, align 4
  %215 = sub i32 1891460000, %214
  %216 = sub i32 1892860000, %214
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %215, i32 noundef %216) #11
  %217 = load i32, ptr %89, align 4
  %218 = sub i32 1889732000, %217
  %219 = sub i32 1891132000, %217
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %218, i32 noundef %219) #11
  %220 = load i32, ptr %89, align 4
  %221 = sub i32 1888004000, %220
  %222 = sub i32 1889404000, %220
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %221, i32 noundef %222) #11
  %223 = load i32, ptr %89, align 4
  %224 = sub i32 1886276000, %223
  %225 = sub i32 1887676000, %223
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %224, i32 noundef %225) #11
  %226 = load i32, ptr %89, align 4
  %227 = sub i32 1884548000, %226
  %228 = sub i32 1885948000, %226
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %227, i32 noundef %228) #11
  %229 = load i32, ptr %89, align 4
  %230 = sub i32 1882820000, %229
  %231 = sub i32 1884220000, %229
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %230, i32 noundef %231) #11
  %232 = load i32, ptr %89, align 4
  %233 = sub i32 1881092000, %232
  %234 = sub i32 1882492000, %232
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %233, i32 noundef %234) #11
  br label %235

235:                                              ; preds = %204, %200
  %236 = tail call fastcc i32 @MT2063_ChooseFirstIF(ptr noundef %15)
  %237 = add i32 %236, %1
  %238 = load i32, ptr %93, align 4
  %239 = load i32, ptr %15, align 4
  %240 = urem i32 %237, %239
  %241 = lshr i32 %238, 1
  %242 = add i32 %240, %241
  %243 = urem i32 %242, %238
  %244 = add i32 %240, %243
  %245 = sub i32 %237, %244
  %246 = add i32 %245, %242
  store i32 %246, ptr %21, align 4
  %247 = load i32, ptr %16, align 4
  %248 = add i32 %247, %1
  %249 = sub i32 %246, %248
  %250 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 10
  %251 = load i32, ptr %250, align 4
  %252 = urem i32 %249, %239
  %253 = lshr i32 %251, 1
  %254 = add i32 %252, %253
  %255 = urem i32 %254, %251
  %256 = add i32 %252, %255
  %257 = sub i32 %249, %256
  %258 = add i32 %257, %254
  store i32 %258, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %259 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 19
  store i32 0, ptr %259, align 4
  %260 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 20
  store i32 0, ptr %260, align 4
  %261 = load i32, ptr @debug, align 4
  %262 = icmp ugt i32 %261, 1
  br i1 %262, label %263, label %265

263:                                              ; preds = %235
  %264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_AvoidSpurs) #9
  br label %265

265:                                              ; preds = %263, %235
  %266 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 15
  %267 = load i32, ptr %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %325, label %269

269:                                              ; preds = %265
  %270 = call fastcc i32 @IsSpurInBand(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %271 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 18
  store i32 %270, ptr %271, align 4
  %272 = icmp eq i32 %270, 0
  br i1 %272, label %319, label %273

273:                                              ; preds = %269
  %274 = load i32, ptr %21, align 4
  %275 = load i32, ptr %89, align 4
  %276 = sub i32 %274, %275
  %277 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 10, i32 8
  br label %278

278:                                              ; preds = %300, %273
  %279 = phi i32 [ %276, %273 ], [ %286, %300 ]
  %280 = load i32, ptr %260, align 4
  %281 = add i32 %280, 1
  store i32 %281, ptr %260, align 4
  %282 = load i32, ptr %3, align 4
  %283 = sub i32 %279, %282
  %284 = load i32, ptr %4, align 4
  %285 = add i32 %284, %279
  tail call fastcc void @MT2063_AddExclZone(ptr noundef %15, i32 noundef %283, i32 noundef %285) #11
  %286 = tail call fastcc i32 @MT2063_ChooseFirstIF(ptr noundef %15) #11
  %287 = icmp ugt i32 %286, %279
  br i1 %287, label %288, label %294

288:                                              ; preds = %278
  %289 = sub i32 %286, %279
  %290 = load i32, ptr %21, align 4
  %291 = add i32 %290, %289
  store i32 %291, ptr %21, align 4
  %292 = load i32, ptr %23, align 4
  %293 = add i32 %292, %289
  br label %300

294:                                              ; preds = %278
  %295 = sub i32 %279, %286
  %296 = load i32, ptr %21, align 4
  %297 = sub i32 %296, %295
  store i32 %297, ptr %21, align 4
  %298 = load i32, ptr %23, align 4
  %299 = sub i32 %298, %295
  br label %300

300:                                              ; preds = %294, %288
  %301 = phi i32 [ %299, %294 ], [ %293, %288 ]
  store i32 %301, ptr %23, align 4
  %302 = load i32, ptr %114, align 4
  %303 = icmp ugt i32 %286, %302
  %304 = sub i32 %286, %302
  %305 = sub i32 %302, %286
  %306 = select i1 %303, i32 %304, i32 %305
  %307 = call fastcc i32 @IsSpurInBand(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  store i32 %307, ptr %271, align 4
  %308 = shl i32 %306, 1
  %309 = load i32, ptr %277, align 4
  %310 = add i32 %308, %309
  %311 = load i32, ptr %116, align 4
  %312 = icmp ugt i32 %310, %311
  %313 = icmp eq i32 %307, 0
  %314 = select i1 %312, i1 true, i1 %313
  br i1 %314, label %315, label %278

315:                                              ; preds = %300
  %316 = icmp eq i32 %307, 1
  br i1 %316, label %317, label %318

317:                                              ; preds = %315
  store i32 %274, ptr %21, align 4
  br label %319

318:                                              ; preds = %315
  store i32 1, ptr %259, align 4
  br label %319

319:                                              ; preds = %318, %317, %269
  %320 = phi i32 [ 0, %269 ], [ 8388608, %317 ], [ 0, %318 ]
  %321 = load i32, ptr %260, align 4
  %322 = shl i32 %321, 16
  %323 = and i32 %322, 2031616
  %324 = or i32 %323, %320
  br label %325

325:                                              ; preds = %319, %265
  %326 = phi i32 [ %324, %319 ], [ 0, %265 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %327 = or i32 %326, %88
  %328 = load i32, ptr %21, align 4
  %329 = load i32, ptr %93, align 4
  %330 = load i32, ptr %15, align 4
  %331 = freeze i32 %328
  %332 = freeze i32 %330
  %333 = udiv i32 %331, %332
  %334 = mul i32 %333, %332
  %335 = sub i32 %331, %334
  %336 = lshr i32 %329, 1
  %337 = add i32 %335, %336
  %338 = udiv i32 %337, %329
  %339 = shl i32 %338, 6
  %340 = udiv i32 %330, %329
  %341 = lshr i32 %340, 1
  %342 = add i32 %341, %339
  %343 = udiv i32 %342, %340
  %344 = mul i32 %333, %330
  %345 = lshr i32 %330, 14
  %346 = mul i32 %343, %345
  %347 = and i32 %330, 16383
  %348 = mul i32 %343, %347
  %349 = shl i32 %346, 14
  %350 = and i32 %349, 1032192
  %351 = add i32 %348, 32
  %352 = add i32 %351, %350
  %353 = lshr i32 %352, 6
  %354 = shl i32 %346, 8
  %355 = and i32 %354, -16384
  %356 = add i32 %355, %344
  %357 = add i32 %356, %353
  store i32 %357, ptr %21, align 4
  %358 = load i32, ptr %16, align 4
  %359 = add i32 %358, %1
  %360 = sub i32 %357, %359
  %361 = load i32, ptr %250, align 4
  %362 = urem i32 %360, %330
  %363 = lshr i32 %361, 1
  %364 = add i32 %362, %363
  %365 = urem i32 %364, %361
  %366 = add i32 %365, %362
  %367 = sub i32 %364, %366
  %368 = add i32 %367, %360
  %369 = freeze i32 %368
  %370 = freeze i32 %330
  %371 = udiv i32 %369, %370
  %372 = mul i32 %371, %370
  %373 = sub i32 %369, %372
  %374 = add i32 %373, %363
  %375 = udiv i32 %374, %361
  %376 = mul i32 %375, 8191
  %377 = udiv i32 %330, %361
  %378 = lshr i32 %377, 1
  %379 = add i32 %378, %376
  %380 = udiv i32 %379, %377
  %381 = mul i32 %371, %330
  %382 = mul i32 %380, %345
  %383 = freeze i32 %382
  %384 = udiv i32 %383, 8191
  %385 = mul i32 %384, 8191
  %386 = sub i32 %383, %385
  %387 = mul i32 %380, %347
  %388 = shl nuw nsw i32 %386, 14
  %389 = add i32 %387, 4095
  %390 = add i32 %389, %388
  %391 = udiv i32 %390, 8191
  %392 = shl i32 %384, 14
  %393 = add i32 %392, %381
  %394 = add i32 %393, %391
  store i32 %394, ptr %23, align 4
  %395 = add i32 %357, 1544967295
  %396 = icmp ult i32 %395, -1354000001
  %397 = or i32 %327, 67108864
  %398 = select i1 %396, i32 %397, i32 %327
  %399 = add i32 %394, -1614000001
  %400 = icmp ult i32 %399, -321000001
  %401 = or i32 %398, 134217728
  %402 = select i1 %400, i32 %401, i32 %398
  %403 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 9
  %404 = icmp eq i32 %22, %357
  %405 = icmp eq i32 %24, %394
  %406 = select i1 %404, i1 %405, i1 false
  br i1 %406, label %407, label %416

407:                                              ; preds = %325
  %408 = load i32, ptr %403, align 4
  %409 = icmp eq i32 %408, 155
  %410 = select i1 %409, i32 192, i32 136
  %411 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 7
  %412 = load i8, ptr %411, align 1
  %413 = zext i8 %412 to i32
  %414 = and i32 %410, %413
  %415 = icmp eq i32 %414, %410
  br i1 %415, label %487, label %416

416:                                              ; preds = %407, %325
  %417 = sub i32 %357, %1
  %418 = lshr i32 %330, 6
  %419 = udiv i32 %417, %418
  %420 = add i32 %87, %419
  %421 = tail call i32 @llvm.umin.i32(i32 %420, i32 255)
  %422 = icmp sgt i32 %402, -1
  br i1 %422, label %423, label %487

423:                                              ; preds = %416
  %424 = trunc i32 %333 to i8
  %425 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 1
  store i8 %424, ptr %425, align 1
  %426 = trunc i32 %343 to i8
  %427 = and i8 %426, 63
  %428 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 2
  store i8 %427, ptr %428, align 2
  %429 = shl i32 %371, 1
  %430 = lshr i32 %380, 12
  %431 = or i32 %430, %429
  %432 = trunc i32 %431 to i8
  %433 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 3
  store i8 %432, ptr %433, align 1
  %434 = lshr i32 %380, 4
  %435 = trunc i32 %434 to i8
  %436 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 4
  store i8 %435, ptr %436, align 4
  %437 = trunc i32 %380 to i8
  %438 = and i8 %437, 15
  %439 = or i8 %438, -32
  %440 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 5
  store i8 %439, ptr %440, align 1
  %441 = tail call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 1, ptr noundef %425, i32 noundef 5)
  %442 = or i32 %441, %402
  %443 = load i32, ptr %403, align 4
  %444 = icmp eq i32 %443, 155
  br i1 %444, label %445, label %448

445:                                              ; preds = %423
  %446 = tail call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 5, ptr noundef %440, i32 noundef 1)
  %447 = or i32 %446, %442
  br label %448

448:                                              ; preds = %445, %423
  %449 = phi i32 [ %447, %445 ], [ %442, %423 ]
  %450 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 41
  %451 = load i8, ptr %450, align 1
  %452 = zext i8 %451 to i32
  %453 = icmp eq i32 %421, %452
  br i1 %453, label %458, label %454

454:                                              ; preds = %448
  %455 = trunc i32 %421 to i8
  store i8 %455, ptr %450, align 1
  %456 = tail call fastcc i32 @mt2063_write(ptr noundef %0, i8 noundef zeroext 41, ptr noundef %450, i32 noundef 1)
  %457 = or i32 %456, %449
  br label %458

458:                                              ; preds = %454, %448
  %459 = phi i32 [ %457, %454 ], [ %449, %448 ]
  %460 = icmp slt i32 %459, 0
  br i1 %460, label %487, label %461

461:                                              ; preds = %458
  %462 = load i32, ptr @debug, align 4
  %463 = icmp ugt i32 %462, 1
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mt2063_lockStatus) #9
  br label %466

466:                                              ; preds = %464, %461
  %467 = load i32, ptr %403, align 4
  %468 = icmp eq i32 %467, 155
  %469 = select i1 %468, i32 192, i32 136
  %470 = getelementptr %struct.mt2063_state, ptr %0, i32 0, i32 16, i32 7
  br label %471

471:                                              ; preds = %480, %466
  %472 = phi i32 [ 0, %466 ], [ %481, %480 ]
  %473 = tail call fastcc i32 @mt2063_read(ptr noundef %0, i8 noundef zeroext 7, ptr noundef %470, i32 noundef 1) #11
  %474 = icmp slt i32 %473, 0
  br i1 %474, label %487, label %475

475:                                              ; preds = %471
  %476 = load i8, ptr %470, align 1
  %477 = zext i8 %476 to i32
  %478 = and i32 %469, %477
  %479 = icmp eq i32 %478, %469
  br i1 %479, label %483, label %480

480:                                              ; preds = %475
  tail call void @msleep(i32 noundef 2) #11
  %481 = add nuw nsw i32 %472, 1
  %482 = icmp eq i32 %481, 50
  br i1 %482, label %487, label %471

483:                                              ; preds = %475
  %484 = load i32, ptr %21, align 4
  %485 = sub i32 %484, %1
  %486 = getelementptr inbounds %struct.mt2063_state, ptr %0, i32 0, i32 11
  store i32 %485, ptr %486, align 4
  br label %487

487:                                              ; preds = %483, %480, %471, %458, %416, %407, %14, %11
  %488 = phi i32 [ -22, %11 ], [ -22, %14 ], [ %459, %458 ], [ 3, %483 ], [ %402, %407 ], [ %402, %416 ], [ -22, %480 ], [ %473, %471 ]
  ret i32 %488
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @MT2063_ChooseFirstIF(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [48 x %struct.MT2063_FIFZone_t], align 4
  %3 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %4, 1
  %10 = add i32 %9, %6
  %11 = add i32 %10, %8
  %12 = urem i32 %11, %4
  %13 = add i32 %12, %8
  %14 = sub i32 %11, %13
  %15 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %4, i32 %16)
  %18 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 23
  %19 = load ptr, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(384) %2, i8 0, i32 384, i1 false), !annotation !9
  %20 = load i32, ptr @debug, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_ChooseFirstIF) #9
  br label %24

24:                                               ; preds = %22, %1
  %25 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 21
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %141, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, %14
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = sub i32 %30, %14
  %34 = lshr i32 %17, 1
  %35 = add i32 %33, %34
  %36 = urem i32 %35, %17
  %37 = add i32 %30, %34
  %38 = sub i32 %37, %36
  br label %46

39:                                               ; preds = %28
  %40 = sub i32 %14, %30
  %41 = lshr i32 %17, 1
  %42 = add i32 %40, %41
  %43 = urem i32 %42, %17
  %44 = sub i32 %14, %42
  %45 = add i32 %44, %43
  br label %46

46:                                               ; preds = %39, %32
  %47 = phi i32 [ %38, %32 ], [ %45, %39 ]
  %48 = icmp eq ptr %19, null
  br i1 %48, label %141, label %49

49:                                               ; preds = %106, %46
  %50 = phi i32 [ %107, %106 ], [ 0, %46 ]
  %51 = phi i32 [ %90, %106 ], [ 0, %46 ]
  %52 = phi i32 [ %94, %106 ], [ 0, %46 ]
  %53 = phi ptr [ %109, %106 ], [ %19, %46 ]
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %54, %47
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = sub i32 0, %55
  %59 = sdiv i32 %58, %17
  %60 = srem i32 %55, %17
  %61 = icmp ne i32 %60, 0
  %62 = sext i1 %61 to i32
  %63 = sub i32 %62, %59
  br label %66

64:                                               ; preds = %49
  %65 = sdiv i32 %55, %17
  br label %66

66:                                               ; preds = %64, %57
  %67 = phi i32 [ %63, %57 ], [ %65, %64 ]
  %68 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %53, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = sub i32 %69, %47
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = sub i32 0, %70
  %74 = sdiv i32 %73, %17
  %75 = sub i32 0, %74
  br label %85

76:                                               ; preds = %66
  %77 = freeze i32 %70
  %78 = freeze i32 %17
  %79 = sdiv i32 %77, %78
  %80 = mul i32 %79, %78
  %81 = sub i32 %77, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = add i32 %79, %83
  br label %85

85:                                               ; preds = %76, %72
  %86 = phi i32 [ %75, %72 ], [ %84, %76 ]
  %87 = icmp ult i32 %54, %14
  %88 = icmp ugt i32 %69, %14
  %89 = select i1 %87, i1 %88, i1 false
  %90 = select i1 %89, i32 1, i32 %51
  %91 = icmp slt i32 %67, 0
  %92 = icmp sgt i32 %86, 0
  %93 = select i1 %91, i1 %92, i1 false
  %94 = select i1 %93, i32 1, i32 %52
  %95 = icmp sgt i32 %50, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %85
  %97 = add nsw i32 %50, -1
  %98 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %2, i32 0, i32 %97, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = icmp slt i32 %67, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 %86, ptr %98, align 4
  br label %106

102:                                              ; preds = %96, %85
  %103 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %2, i32 0, i32 %50
  store i32 %67, ptr %103, align 4
  %104 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %2, i32 0, i32 %50, i32 1
  store i32 %86, ptr %104, align 4
  %105 = add i32 %50, 1
  br label %106

106:                                              ; preds = %102, %101
  %107 = phi i32 [ %50, %101 ], [ %105, %102 ]
  %108 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %53, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %49

111:                                              ; preds = %106
  %112 = icmp eq i32 %90, 0
  br i1 %112, label %141, label %113

113:                                              ; preds = %111
  %114 = icmp eq i32 %94, 0
  br i1 %114, label %141, label %115

115:                                              ; preds = %113
  %116 = load i32, ptr %2, align 4
  %117 = icmp sgt i32 %107, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %134, %115
  %119 = phi i32 [ %136, %134 ], [ %116, %115 ]
  %120 = phi i32 [ %132, %134 ], [ 0, %115 ]
  %121 = phi i32 [ %131, %134 ], [ %116, %115 ]
  %122 = tail call i32 @llvm.abs.i32(i32 %119, i1 false)
  %123 = tail call i32 @llvm.abs.i32(i32 %121, i1 false)
  %124 = icmp slt i32 %122, %123
  %125 = select i1 %124, i32 %119, i32 %121
  %126 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %2, i32 0, i32 %120, i32 1
  %127 = load i32, ptr %126, align 4
  %128 = tail call i32 @llvm.abs.i32(i32 %127, i1 false)
  %129 = tail call i32 @llvm.abs.i32(i32 %125, i1 false)
  %130 = icmp slt i32 %128, %129
  %131 = select i1 %130, i32 %127, i32 %125
  %132 = add nuw nsw i32 %120, 1
  %133 = icmp eq i32 %132, %107
  br i1 %133, label %137, label %134

134:                                              ; preds = %118
  %135 = getelementptr [48 x %struct.MT2063_FIFZone_t], ptr %2, i32 0, i32 %132
  %136 = load i32, ptr %135, align 4
  br label %118

137:                                              ; preds = %118, %115
  %138 = phi i32 [ %116, %115 ], [ %131, %118 ]
  %139 = mul i32 %138, %17
  %140 = add i32 %139, %47
  br label %141

141:                                              ; preds = %137, %113, %111, %46, %24
  %142 = phi i32 [ %14, %24 ], [ %14, %111 ], [ %47, %113 ], [ %14, %46 ], [ %140, %137 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #11
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @MT2063_AddExclZone(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr @debug, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.MT2063_AddExclZone) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 1
  %16 = sub i32 %12, %15
  %17 = icmp ult i32 %16, %2
  %18 = add i32 %15, %12
  %19 = icmp ugt i32 %18, %1
  %20 = and i1 %17, %19
  %21 = icmp ult i32 %1, %2
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %117

23:                                               ; preds = %10
  %24 = icmp eq ptr %5, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %5, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %1
  br i1 %28, label %33, label %38

29:                                               ; preds = %33
  %30 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %36, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %1
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %25
  %34 = phi ptr [ %36, %29 ], [ %5, %25 ]
  %35 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %29

38:                                               ; preds = %29, %25
  %39 = phi ptr [ %5, %25 ], [ %36, %29 ]
  %40 = phi ptr [ null, %25 ], [ %34, %29 ]
  %41 = phi i32 [ %27, %25 ], [ %31, %29 ]
  %42 = load i32, ptr %39, align 4
  %43 = icmp ult i32 %42, %2
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = icmp ugt i32 %42, %1
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  store i32 %1, ptr %39, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = icmp ult i32 %41, %2
  br i1 %48, label %76, label %79

49:                                               ; preds = %38, %33, %23
  %50 = phi ptr [ %40, %38 ], [ null, %23 ], [ %34, %33 ]
  %51 = load i32, ptr @debug, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.InsertNode) #9
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 22
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %57, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  store ptr %61, ptr %56, align 4
  br label %66

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 21
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 24, i32 %64
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi ptr [ %57, %59 ], [ %65, %62 ]
  %68 = icmp eq ptr %50, null
  %69 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %50, i32 0, i32 2
  %70 = select i1 %68, ptr %4, ptr %69
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %67, i32 0, i32 2
  store ptr %71, ptr %72, align 4
  store ptr %67, ptr %70, align 4
  %73 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 21
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 4
  store i32 %1, ptr %67, align 4
  br label %76

76:                                               ; preds = %66, %47
  %77 = phi ptr [ %67, %66 ], [ %39, %47 ]
  %78 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %77, i32 0, i32 1
  store i32 %2, ptr %78, align 4
  br label %79

79:                                               ; preds = %76, %47
  %80 = phi i32 [ %41, %47 ], [ %2, %76 ]
  %81 = phi ptr [ %39, %47 ], [ %77, %76 ]
  %82 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %117, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %81, i32 0, i32 1
  %87 = icmp eq ptr %81, null
  %88 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 22
  %89 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 21
  %90 = load i32, ptr %83, align 4
  %91 = icmp ult i32 %90, %80
  br i1 %91, label %92, label %117

92:                                               ; preds = %113, %85
  %93 = phi ptr [ %101, %113 ], [ %83, %85 ]
  %94 = phi i32 [ %114, %113 ], [ %80, %85 ]
  %95 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %93, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, %94
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 %96, ptr %86, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = getelementptr inbounds %struct.MT2063_ExclZone_t, ptr %93, i32 0, i32 2
  %101 = load ptr, ptr %100, align 4
  %102 = load i32, ptr @debug, align 4
  %103 = icmp ugt i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.RemoveNode) #9
  br label %106

106:                                              ; preds = %104, %99
  br i1 %87, label %108, label %107

107:                                              ; preds = %106
  store ptr %101, ptr %82, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load ptr, ptr %88, align 4
  store ptr %109, ptr %100, align 4
  store ptr %93, ptr %88, align 4
  %110 = load i32, ptr %89, align 4
  %111 = add i32 %110, -1
  store i32 %111, ptr %89, align 4
  %112 = icmp eq ptr %101, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %108
  %114 = load i32, ptr %86, align 4
  %115 = load i32, ptr %101, align 4
  %116 = icmp ult i32 %115, %114
  br i1 %116, label %92, label %117

117:                                              ; preds = %113, %108, %85, %79, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @IsSpurInBand(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 1
  %13 = add i32 %12, %9
  %14 = sub i32 %13, %11
  %15 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 1
  %18 = getelementptr inbounds %struct.MT2063_AvoidSpursData_t, ptr %0, i32 0, i32 15
  %19 = load i32, ptr %18, align 4
  %20 = udiv i32 2147483647, %19
  %21 = udiv i32 %5, %20
  %22 = add i32 %21, 1
  %23 = load i32, ptr @debug, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.IsSpurInBand) #9
  br label %27

27:                                               ; preds = %25, %3
  store i32 0, ptr %1, align 4
  %28 = tail call i32 @gcd(i32 noundef %5, i32 noundef %7) #12
  %29 = tail call i32 @gcd(i32 noundef %28, i32 noundef %14) #12
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 %22)
  %31 = tail call i32 @gcd(i32 noundef %28, i32 noundef %17) #12
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 %22)
  %33 = sub i32 %5, %7
  %34 = xor i32 %13, -1
  %35 = add i32 %5, %34
  %36 = udiv i32 %35, %33
  %37 = load i32, ptr %18, align 4
  %38 = icmp ugt i32 %36, %37
  br i1 %38, label %165, label %39

39:                                               ; preds = %27
  %40 = lshr i32 %32, 1
  %41 = lshr i32 %30, 1
  %42 = tail call i32 @gcd(i32 noundef %28, i32 noundef %13) #12
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 %22)
  %44 = lshr i32 %43, 1
  %45 = add i32 %44, %5
  %46 = udiv i32 %45, %43
  %47 = add i32 %44, %13
  %48 = udiv i32 %47, %43
  %49 = add i32 %44, %7
  %50 = udiv i32 %49, %43
  %51 = add i32 %41, %5
  %52 = add i32 %41, %14
  %53 = add i32 %41, %7
  %54 = add i32 %40, %5
  %55 = add nuw i32 %40, %17
  %56 = add i32 %40, %7
  br label %57

57:                                               ; preds = %159, %39
  %58 = phi i32 [ %36, %39 ], [ %160, %159 ]
  %59 = mul i32 %46, %58
  %60 = sub i32 %59, %48
  %61 = udiv i32 %60, %50
  %62 = icmp ult i32 %61, %37
  br i1 %62, label %63, label %165

63:                                               ; preds = %57
  %64 = add i32 %59, %48
  %65 = udiv i32 %64, %50
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %159, label %67

67:                                               ; preds = %63
  %68 = udiv i32 %51, %30
  %69 = mul i32 %68, %58
  %70 = udiv i32 %52, %30
  %71 = sub i32 %69, %70
  %72 = udiv i32 %53, %30
  %73 = udiv i32 %71, %72
  %74 = icmp eq i32 %73, %61
  br i1 %74, label %94, label %75

75:                                               ; preds = %67
  %76 = udiv i32 %5, %30
  %77 = mul i32 %76, %58
  %78 = udiv i32 %7, %30
  %79 = mul i32 %78, %73
  %80 = sub i32 %77, %79
  %81 = mul i32 %80, %30
  %82 = urem i32 %5, %30
  %83 = mul i32 %82, %58
  %84 = add i32 %81, %83
  %85 = urem i32 %7, %30
  %86 = mul i32 %85, %73
  %87 = sub i32 %84, %86
  %88 = sub i32 %87, %14
  %89 = sub i32 %73, %58
  %90 = udiv i32 %88, %89
  %91 = add i32 %90, 1
  store i32 %91, ptr %2, align 4
  %92 = sub i32 %13, %87
  %93 = udiv i32 %92, %89
  br label %162

94:                                               ; preds = %67
  %95 = udiv i32 %54, %32
  %96 = mul i32 %95, %58
  %97 = udiv i32 %55, %32
  %98 = add i32 %96, %97
  %99 = udiv i32 %56, %32
  %100 = udiv i32 %98, %99
  %101 = sub i32 %96, %97
  %102 = udiv i32 %101, %99
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %129, label %104

104:                                              ; preds = %94
  %105 = freeze i32 %5
  %106 = freeze i32 %32
  %107 = udiv i32 %105, %106
  %108 = mul i32 %107, %58
  %109 = freeze i32 %7
  %110 = freeze i32 %32
  %111 = udiv i32 %109, %110
  %112 = mul i32 %111, %100
  %113 = sub i32 %108, %112
  %114 = mul i32 %113, %32
  %115 = mul i32 %107, %106
  %116 = sub i32 %105, %115
  %117 = mul i32 %116, %58
  %118 = add i32 %114, %117
  %119 = mul i32 %111, %110
  %120 = sub i32 %109, %119
  %121 = mul i32 %120, %100
  %122 = sub i32 %118, %121
  %123 = add i32 %122, %17
  %124 = sub i32 %100, %58
  %125 = udiv i32 %123, %124
  %126 = add i32 %125, 1
  store i32 %126, ptr %2, align 4
  %127 = sub i32 %17, %122
  %128 = udiv i32 %127, %124
  br label %162

129:                                              ; preds = %94
  %130 = add i32 %69, %70
  %131 = udiv i32 %130, %72
  %132 = icmp eq i32 %65, %131
  br i1 %132, label %159, label %133

133:                                              ; preds = %129
  %134 = freeze i32 %5
  %135 = freeze i32 %30
  %136 = udiv i32 %134, %135
  %137 = mul i32 %136, %58
  %138 = freeze i32 %7
  %139 = freeze i32 %30
  %140 = udiv i32 %138, %139
  %141 = mul i32 %140, %65
  %142 = sub i32 %137, %141
  %143 = mul i32 %142, %30
  %144 = mul i32 %136, %135
  %145 = sub i32 %134, %144
  %146 = mul i32 %145, %58
  %147 = add i32 %143, %146
  %148 = mul i32 %140, %139
  %149 = sub i32 %138, %148
  %150 = mul i32 %149, %65
  %151 = sub i32 %147, %150
  %152 = add i32 %151, %13
  %153 = sub i32 %65, %58
  %154 = udiv i32 %152, %153
  %155 = add i32 %154, 1
  store i32 %155, ptr %2, align 4
  %156 = add i32 %14, %151
  %157 = sub i32 0, %156
  %158 = udiv i32 %157, %153
  br label %162

159:                                              ; preds = %129, %63
  %160 = add i32 %58, 1
  %161 = icmp ugt i32 %160, %37
  br i1 %161, label %165, label %57

162:                                              ; preds = %133, %104, %75
  %163 = phi i32 [ %158, %133 ], [ %128, %104 ], [ %93, %75 ]
  %164 = add i32 %163, 1
  store i32 %164, ptr %1, align 4
  br label %165

165:                                              ; preds = %162, %159, %57, %27
  %166 = phi i32 [ 0, %27 ], [ 1, %162 ], [ 0, %159 ], [ 0, %57 ]
  ret i32 %166
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
